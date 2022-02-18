import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DishAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double maxWidth;

  const DishAppBarWidget({
    Key? key,
     required this.maxWidth, // realmente necessário?
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // deixa a app bar transparente
      backgroundColor: Colors.transparent,
      // some com a sombra (já que não tem elevação)
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, ),
        onPressed:Navigator.of(context).pop,      ),
      leadingWidth: maxWidth * 0.28,
      actions: <Widget>[
        // IconButton(                    
        //   icon: const Icon(Icons.favorite_border, color: Colors.black,),
        //   onPressed: () {},
        // ),
        SizedBox(
          width: maxWidth * 0.28,
          child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.favorite_border,
                  color: Colors.black)),
        ),        
      ],
      toolbarHeight: kToolbarHeight + (maxWidth * 0.075),
      systemOverlayStyle: const SystemUiOverlayStyle(
        // garantindo que os icones da status bar fiquem brancos!
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (maxWidth * 0.075));
}

// [
//         SizedBox(
//           width: maxWidth * 0.28,
//           child: IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.shopping_cart_outlined,
//                   color: Colors.black)),
//         ),
//       ],

// [
//         SizedBox(
//           width: maxWidth * 0.28,
//           child: IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.shopping_cart_outlined,
//                   color: Colors.black)),
//         ),
//       ],
// ]

// onLeadingPressed