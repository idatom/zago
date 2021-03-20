import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zakat/bloc/counter_bloc.dart';
import 'package:zakat/ui/counter-zakat/generate-button/ButtonHitung.dart';
import 'package:zakat/ui/counter-zakat/generate-button/ButtonReset.dart';
import 'package:zakat/ui/counter-zakat/generate-hasil/LabelHasil.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/helper/DropShadow.dart';

class CounterFitrahUangState extends StatefulWidget {
  @override
  CounterFitrahUang createState() => CounterFitrahUang();
}

class CounterFitrahUang extends State<CounterFitrahUangState> {
  final textControllerA = TextEditingController();
  final textControllerB = TextEditingController();
  bool _validateA = false;
  bool _validateB = false;
  double getValue;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: ColorTheme().blueMain,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Container(
                  width: double.infinity,
                  height: 415,
                  color: ColorTheme().whiteOpacity,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "HITUNG ZAKAT FITRAH",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: ColorTheme().textBlackHeader),
                        ),
                        Text(
                          "Nisab = 2.5Kg Beras/Orang",
                          style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30, left: 30),
                    width: 270,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [DropShadow().boxShadow]),
                    child: TextFormField(
                      controller: textControllerA,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Jumlah Keluarga",
                          errorText: _validateA ? 'Tidak Boleh Kosong' : null),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30, left: 30),
                    width: 270,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [DropShadow().boxShadow]),
                    child: TextFormField(
                      controller: textControllerB,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Harga Beras",
                          errorText: _validateB ? 'Tidak Boleh Kosong' : null),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonHitungState(() {
                        setState(() {
                          textControllerA.text.isEmpty
                              ? _validateA = true
                              : _validateA = false;
                          textControllerB.text.isEmpty
                              ? _validateB = true
                              : _validateB = false;
                        });
                        context.read<CounterBloc>().add(CountFitrah2(
                            double.parse(textControllerA.text),
                            double.parse(textControllerB.text)));
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonResetState(() {
                        context.read<CounterBloc>().add(ResetValue());
                      })
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  BlocBuilder<CounterBloc, CounterState>(
                      builder: (_, state) => LabelHasilState(
                          (state is CounterValue) ? state.value : null, "Rp "))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
