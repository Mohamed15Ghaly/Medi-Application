import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'is_selected_state.dart';

class IsSelectedCubit extends Cubit<IsSelectedState> {
  IsSelectedCubit() : super(IsSelectedInitial());
  int index = -1;
  void setIsSelected({required int i}) {
    index = i;
    emit(IsSelectedSuccess());
  }
}
