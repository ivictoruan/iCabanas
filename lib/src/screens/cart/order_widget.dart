import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String dishName;
  late final String _dishImage;
  final String dishPrice;
  final double aspectRatio;

  OrderWidget({
    Key? key,
    required this.dishName,
    required this.dishPrice,
    String? dishImage,
    this.aspectRatio = 0.34, // do template (default: 0.68)
    required this.onPressed,
  }) : super(key: key) {
    // se nao for informado nenhum nome de imagem, use a padrão
    if (dishImage == null) {
      _dishImage = 'dishs/veggie_tomato';
    } else {
      _dishImage = dishImage;
    }
  }

  @override
  Widget build(BuildContext context) {
    // int _maxHeight = 150;
    return SizedBox(
      height: 120,
      child: InkWell(
        onTap: onPressed,
        child: Stack(
          // para um widget em cima outro
          // alignment: AlignmentDirectional.,
          // fit: StackFit.expand,
          children: <Widget>[
            // fundo branco
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0, // suavidade da sombra
                    spreadRadius: 1.0, // espalhamento da sombra
                    offset: Offset(
                      4.0, // move 4 para a direita
                      4.0, // move 4 para baixo
                    ),
                  ),
                ],
              ),
            ),
            // imagem do prato
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 23),
              child: Image.asset(
                'assets/images/dishs/$_dishImage.png',
                // fit: BoxFit.cover,
                width: 115,
                height: 115,
              ),
            ),
            // texto do nome do prato
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 130),
              child: FractionallySizedBox(
                // widthFactor: 0.2,
                child: Text(
                  dishName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                ),
              ),
            ),
            // texto do preço do prato
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 130),
              child: FractionallySizedBox(
                // widthFactor: 0.2,
                child: Text(
                  dishPrice,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'SFPro',
                    // fontSize: _maxHeight * 18 / 300,
                    color: Color(0xFFFA4A0C),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 85, left: 278),
                child: Container(
                  alignment: Alignment.center,
                  width: 52,
                  height: 20,
                  child: const Text(
                    "- 1 +",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SFPro',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  decoration: const ShapeDecoration(
                  color: Color(0xFFFA4A0C),                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Color(0xFFFA4A0C)
                // padding: const EdgeInsets.only(top: 60, left: 240),
