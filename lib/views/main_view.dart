import 'package:dashboard_challenge/core/bloc/data_bloc.dart';
import 'package:dashboard_challenge/views/views.dart';
import 'package:dashboard_challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class MainView extends StatelessWidget {
  final views = <Widget>[
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: BlocProvider(
        create: (_) => DataBloc(httpClient: http.Client())..add(DataFetched()),
        child: Stack(
          children: [
            views[0],
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
