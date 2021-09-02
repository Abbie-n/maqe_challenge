import 'package:dashboard_challenge/core/bloc/data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_challenge/utils/utils.dart';
import 'package:dashboard_challenge/utils/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DataBloc _dataBloc;

  @override
  void initState() {
    super.initState();
    _dataBloc = context.read<DataBloc>();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: BlocProvider(
        create: (_) => DataBloc(httpClient: http.Client())..add(DataFetched()),
        child: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            switch (state.status) {
              case DataStatus.failure:
                return const Center(child: Text('Failed to fetch data'));
              case DataStatus.success:
                if (state.data.toString().length < 1) {
                  return const Center(child: Text('No data'));
                }
                break;
              default:
                return Center(child: const Text('Loading...'));
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  HomeHeader(data: state.data),
                  SizedBox(height: 2.5.height),
                  RowTexts(),
                  SizedBox(height: 2.height),
                  HomeTile(
                    title: 'Leave',
                    isSecondText: true,
                    index: 0,
                    requests: state.data.leaveRequests![0],
                  ),
                  SizedBox(height: 1.5.height),
                  HomeTile(
                      title: 'Switch',
                      index: 1,
                      requests: state.data.leaveRequests![1]),
                  SizedBox(height: 1.5.height),
                  HomeTile(
                      title: 'Leave',
                      index: 2,
                      requests: state.data.leaveRequests![2]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _dataBloc.close();
  }
}
