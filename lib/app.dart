import 'package:btm_cubit/controllers/cubit/main_cubit/main_cubit.dart';
import 'package:btm_cubit/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtmCubit extends StatelessWidget {
  const BtmCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MainCubit(),
            child: HomePage(),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
