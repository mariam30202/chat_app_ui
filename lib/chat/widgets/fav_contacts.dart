 import 'package:chat_app_ui/colors.dart';
import 'package:chat_app_ui/chat/widgets/user_model.dart';
import 'package:flutter/material.dart';

class favouritecontacts extends StatelessWidget {
  const favouritecontacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favourite contacts',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: AppColors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                       CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            user[index].image),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        user[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.white),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 5,
                  );
                },
                itemCount: user.length),
          )
        ],
      ),
    );
  }
}
