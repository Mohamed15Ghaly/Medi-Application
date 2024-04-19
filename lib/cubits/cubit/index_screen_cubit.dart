// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:meta/meta.dart';

part 'index_screen_state.dart';

class IndexScreenCubit extends Cubit<IndexScreenState> {
  IndexScreenCubit() : super(IndexScreenInitial());
  int index = 0;

  void changeIndex(int x) {
    index = x;
    emit(IndexScreenIncrement());
  }

  final drawerController = ZoomDrawerController();

  void drawer() {
    drawerController.toggle?.call();
    emit(IndexScreenIncrement());
  }
}
