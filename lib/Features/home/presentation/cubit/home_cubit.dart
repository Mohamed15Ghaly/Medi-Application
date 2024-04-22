import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  GlobalKey logo = GlobalKey();
  GlobalKey menu = GlobalKey();
  GlobalKey disease = GlobalKey();
  GlobalKey chatBot = GlobalKey();
  GlobalKey voiceAssistant = GlobalKey();
}
