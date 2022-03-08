
import 'package:flutter/material.dart' hide ErrorWidget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fz_bloc_demo/blocs/app_cubit.dart';

import '../blocs/app_state.dart';
import '../widgets/widgets.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title,Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocProvider(
        create: (_)=> AppCubit(),
        child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return state.map(loading: (Loading state)=> const LoadingWidget(),
                  ready: (Ready state)=> const LoadSuccessWidget(),
                  error: (Error state)=> const ErrorWidget());
            }),
      ),
    );
  }
}

