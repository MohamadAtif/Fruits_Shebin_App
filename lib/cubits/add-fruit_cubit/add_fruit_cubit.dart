import 'package:bloc/bloc.dart';
import 'package:fruit_shebin/consts.dart';
import 'package:fruit_shebin/models/fruit_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'add_fruit_state.dart';

class AddFruitCubit extends Cubit<AddFruitState> {
  AddFruitCubit() : super(AddFruitInitial());
  addFruit(FruitModel fruit)async{
    emit(AddFruitLoading());
    try {
  var notesBox=Hive.box<FruitModel>(kFruitsBox);
     await notesBox.add(fruit);
     emit(AddFruitSucces());
} on Exception catch (e) {
  emit(AddFruitFailure(e.toString()));
}

  }
}
