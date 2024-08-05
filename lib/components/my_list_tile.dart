import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key, required this.text, required this.icon, this.onTap});

  final String text;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(icon,color: Theme.of(context).colorScheme.inversePrimary,),
        title: Text(text,style: const TextStyle(
          color: Colors.white
        ),),
        onTap: onTap,
      ),
    );
  }
}