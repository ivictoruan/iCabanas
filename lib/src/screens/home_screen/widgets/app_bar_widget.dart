import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double maxWidth;
  final VoidCallback onMenuPressed;
  final VoidCallback onCartPressed;

  const AppBarWidget({
    Key? key,
    required this.maxWidth,
    required this.onMenuPressed,
    required this.onCartPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // deixa a app bar transparente
      backgroundColor: Colors.transparent,
      // some com a sombra (já que não tem elevação)
      elevation: 0,
      leading: IconButton(
        onPressed: onMenuPressed,
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      leadingWidth: maxWidth * 0.28,
      actions: [
        SizedBox(
          width: maxWidth * 0.28,
          child: IconButton(
              onPressed: onCartPressed,
              icon: const Icon(Icons.shopping_cart_outlined,
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
