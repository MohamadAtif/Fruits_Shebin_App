import 'package:hive/hive.dart';
part 'fruit_model.g.dart';

@HiveType(typeId: 0)
class FruitModel extends HiveObject {
  @HiveField(0)
  final String image;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String price;
  @HiveField(3)
  final String color;

  FruitModel(
      {required this.color,
      required this.image,
      required this.title,
      required this.price});
}
