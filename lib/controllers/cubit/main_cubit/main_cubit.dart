import 'package:btm_cubit/controllers/cubit/main_cubit/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(bottomNavIndex: 0));

  bottomNav({required int index}) {
    emit(MainState(bottomNavIndex: index));
  }
}
