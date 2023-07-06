import 'package:btm_cubit/controllers/cubit/main_cubit/main_cubit.dart';
import 'package:btm_cubit/controllers/cubit/main_cubit/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controllers/cubit/cubits.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BlocBuilder<MainCubit, MainState>(
        bloc: mainCubit,
        builder: (context, state) {
          return BottomNavigationBar(
              currentIndex: state.bottomNavIndex,
              onTap: (index) {
                mainCubit.bottomNav(index: index);
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.new_label), label: "About"),
              ]);
        },
      ),
      body: Column(),
    );
  }
}
