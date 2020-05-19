import 'package:covid/contants.dart';
import 'package:covid/services/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupData() async {
    Api instance = Api();
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'confirmedCase': instance.confirmedCase,
      'totalDeaths': instance.totalDeaths,
      'totalRecovered': instance.totalRecovered,
      'newCase': instance.newCase
    });
  }

  @override
  void initState() {
    super.initState();
    setupData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PrimaryColorL,
        body: Center(
          child: SpinKitFoldingCube(
            color: Colors.white,
            size: 50.0,
          ),
        )
    );
  }
}
