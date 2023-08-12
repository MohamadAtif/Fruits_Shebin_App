part of 'add_fruit_cubit.dart';

@immutable
abstract class AddFruitState {}

class AddFruitInitial extends AddFruitState {}
class AddFruitLoading extends AddFruitState {}
class AddFruitSucces extends AddFruitState {}
class AddFruitFailure extends AddFruitState {
  final String errMessage;

  AddFruitFailure(this.errMessage);
}