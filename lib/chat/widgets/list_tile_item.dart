import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
    required this.image,
    required this.name,
    required this.lastMsg,
    required this.time,
    required this.onTap,
  });
  final String image;
  final String name;
  final String lastMsg;

  final String time;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(image),
      ),
      title: Text(name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      subtitle: Text(lastMsg,
          style: TextStyle(
            fontWeight: FontWeight.w100,
          )),
      trailing: Text(time),
    );
  }
}
