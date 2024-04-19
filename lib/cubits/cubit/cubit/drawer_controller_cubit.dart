import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'drawer_controller_state.dart';

class DrawerControllerCubit extends Cubit<DrawerControllerState> {
  DrawerControllerCubit() : super(DrawerControllerInitial());
   

}
