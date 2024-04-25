import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
    final drawerController = ZoomDrawerController();
    void drawer() {
    drawerController.toggle?.call();
    emit(HomeSuccess());
  }
}
