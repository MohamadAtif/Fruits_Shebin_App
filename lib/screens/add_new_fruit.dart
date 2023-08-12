import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shebin/cubits/add-fruit_cubit/add_fruit_cubit.dart';
import 'package:fruit_shebin/models/fruit_model.dart';
import 'package:fruit_shebin/widgets/custo_textfield.dart';
import 'package:fruit_shebin/widgets/custom_button.dart';

class AddNewFruit extends StatefulWidget {
  const AddNewFruit({super.key});

  @override
  State<AddNewFruit> createState() => _AddNewFruitState();
}

class _AddNewFruitState extends State<AddNewFruit> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  GlobalKey formKey = GlobalKey();
  String? title, image;
  String? color;
  String? price;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          body: BlocProvider(
        create: (context) => AddFruitCubit(),
        child: SafeArea(
          child: BlocConsumer<AddFruitCubit, AddFruitState>(
            listener: (context, state) {
              if (state is AddFruitFailure) {
                print('failed ${state.errMessage}');
                if (state is AddFruitSucces) {
                  Navigator.pop(context);
                }
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  CustomTextField(
                      onChanged: (data) {
                        title = data;
                      },
                      labelText: 'title',
                      obscureText: false,
                      icon: Icons.text_fields),
                  CustomTextField(
                      onChanged: (data) {
                        image = data;
                      },
                      labelText: 'Fruitimage',
                      obscureText: false,
                      icon: Icons.add_a_photo),
                  CustomTextField(
                      onChanged: (data) {
                        color = data;
                      },
                      labelText: 'color',
                      obscureText: false,
                      icon: Icons.color_lens),
                  CustomTextField(
                      onChanged: (data) {
                        price = data;
                      },
                      labelText: 'price',
                      obscureText: false,
                      icon: Icons.add),
                  CustomButton(
                      onTap: () {
                        var fruitModel = FruitModel(
                            title: title!,
                            image: image!,
                            color: color!,
                            price: price!);
                        BlocProvider.of<AddFruitCubit>(context)
                            .addFruit(fruitModel);
                      },
                      text: 'Add Fruit to Market')
                ],
              );
            },
          ),
        ),
      )),
    );
  }
}
