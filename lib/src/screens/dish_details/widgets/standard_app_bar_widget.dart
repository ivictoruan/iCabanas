import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StandardAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final double maxWidth;
  final Widget? title;
  final Widget? icon;

  const StandardAppBarWidget({
    Key? key,
    required this.maxWidth, // realmente necessário?
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: true,
      // deixa a app bar transparente
      backgroundColor: Colors.transparent,
      // some com a sombra (já que não tem elevação)
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: Navigator.of(context).pop,
      ),
      leadingWidth: maxWidth * 0.28,
      actions: <Widget>[
        SizedBox(
          width: maxWidth * 0.28,
          child: IconButton(
            onPressed: () {},
            icon: icon!,
          ),
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight +
      (maxWidth *
          0.075)); // não pude deixar de requerer o tamanho da app bar por conta do contexto que não chega até este esbolço
}
