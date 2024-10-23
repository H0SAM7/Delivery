import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/cart/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xffF2F2F2),
                child: GestureDetector(
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                    },
                    child: const Icon(Icons.menu, color: Colors.black))),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(Assets.iconsProfile),
                radius: 25,
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hosam Adel',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Verified Profile',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              ),const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 234, 234, 234),
                  borderRadius: BorderRadius.all(Radius.circular(10)) 
                ),
                margin: const EdgeInsets.only(right: 16),
                padding: const EdgeInsets.all(10),
                child:  Text('${BlocProvider.of<CartCubit>(context).items.length.toString()} Orders'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
