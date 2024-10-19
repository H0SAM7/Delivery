
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        Assets.imagesBk,
      ),
      title: Text(
        'pizza calzone european',
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text(
        '\$55',
        style: TextStyle(fontSize: 20),
      ),
      trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(Assets.iconsRemoveIcon),
          ),
          FittedBox(
          //  width: 30,
            child: Row(
                  
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
                Text('55'),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
