import 'package:chat_app_ui/colors.dart';
import 'package:chat_app_ui/chat/widgets/user_model.dart';
import 'package:chat_app_ui/chat/widgets/fav_contacts.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Chats',
          style: TextStyle(color: AppColors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: AppColors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          //fav contacts
          const favouritecontacts(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: AppColors.white),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTileItem(
                      image:user[index].image,
                          
                      lastMsg:user[index].lastMsg ,
                      name:user[index].name  ,
                      onTap: () {},
                      time:user[index].date,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      indent: 30,
                      endIndent: 30,
                    );
                  },
                  itemCount: user.length),
            ),
          )
        ],
      ),
    );
  }
}

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
