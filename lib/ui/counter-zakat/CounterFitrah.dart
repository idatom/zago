import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zakat/bloc/counter_bloc.dart';
import 'package:zakat/ui/counter-zakat/generate-button/ButtonHitung.dart';
import 'package:zakat/ui/counter-zakat/generate-button/ButtonReset.dart';
import 'package:zakat/ui/counter-zakat/generate-hasil/LabelHasil.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/helper/DropShadow.dart';

class CounterFitrahBerasState extends StatefulWidget {
  @override
  CounterFitrahBeras createState() => CounterFitrahBeras();
}

class CounterFitrahBeras extends State<CounterFitrahBerasState> {
  final textController = TextEditingController();
  bool _validate = false;
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
                      controller: textController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Jumlah Keluarga",
                          errorText: _validate ? 'Tidak Boleh Kosong' : null),
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
                          textController.text.isEmpty
                              ? _validate = true
                              : _validate = false;
                        });
                        context.read<CounterBloc>().add(
                            CountFitrah(double.parse(textController.text)));
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
                          (state is CounterValue) ? state.value : null, " Kg"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
