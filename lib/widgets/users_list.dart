import 'package:dars33/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UsersList extends StatelessWidget {
  List<Map<String, dynamic>> users = [
    {
      "name": "Tom",
      "phone": "+998 90 123 45 67",
      "imageUrl":
          "https://i.pinimg.com/736x/aa/2e/f0/aa2ef0ac37db19de28da92aa1b297ca6.jpg",
    },
    {
      "name": "Jerry",
      "phone": "+998 20 123 45 67",
      "imageUrl":
          "https://static.wikia.nocookie.net/tomandjerry/images/e/ec/Kisspng-jerry-mouse-tom-cat-nibbles-tom-and-jerry-5afa8781629bc3.8019112615263681294039.png",
    },
    {
      "name": "Jahongir Otajonov",
      "phone": "+998 93 123 45 67",
      "imageUrl":
          "https://static.wikia.nocookie.net/disney/images/8/8b/Chip_n%27_Dale.png",
    },
    {
      "name": "Mickey Mouse",
      "phone": "+998 91 123 45 67",
      "imageUrl":
          "https://static.wikia.nocookie.net/disney/images/3/36/Mickey_Mouse_Disney_1.webp",
    },
    {
      "name": "Aladdin",
      "phone": "+998 95 123 45 67",
      "imageUrl":
          "https://assets.teenvogue.com/photos/5ce81cd0b68fa2418fa033ab/16:9/w_2560%2Cc_limit/Aladdin-Featured-11182017.jpg",
    },
    {
      "name": "Mc Donalds",
      "phone": "+998 99 123 45 67",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/1014px-McDonald%27s_logo.svg.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < users.length; i++)
          UserCard(
            imageUrl: users[i]['imageUrl'],
            name: users[i]['name'],
            phone: users[i]['phone'],
          ),
      ],
    );
  }
}
