import 'package:flutter/material.dart';

class DishButtonDetailsWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String dishName;
  // late final String _dishImage;
  final String dishImage;
  final String dishPrice;
  final double aspectRatio;

  DishButtonDetailsWidget({
    Key? key,
    required this.dishName,
    required this.dishPrice,
    required this.dishImage,
    this.aspectRatio = 220 / 321, // do template
    required this.onPressed,

  }) : super(key: key) {
   
      // _dishImage = dishImage?? '/veggie_tomato';
    
  }

  @override
  Widget build(BuildContext context) {
    // usei um LayoutBuilder para poder ter acesso às informações das constraints
    return LayoutBuilder(builder: (_, BoxConstraints contraints) {
      // altura máxima disponivel pro componente
      double _maxHeight = contraints.maxHeight;

      // Inkwell para responder ao
      // toque
      return InkWell(
        onTap: onPressed,
        child: Padding(
          // espaçamento horizontal entre os elementos
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                // FUNDO BRANCO
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    heightFactor: 0.8,
                    widthFactor: 1,
                    alignment: Alignment.center,
                    child: Container(
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
                  ),
                ),
                // IMAGEM DO PRATO
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: _maxHeight * 0.05),
                    child: FractionallySizedBox(
                      widthFactor: .9,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/dishs/$dishImage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // texto do nome do prato
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: _maxHeight * 0.4),
                    child: FractionallySizedBox(
                      widthFactor: 0.6,
                      child: Text(
                        dishName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: _maxHeight * 22 / 300,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                // texto do preço do prato
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: _maxHeight * 0.75),
                    child: FractionallySizedBox(
                      widthFactor: 0.8,
                      child: Text(
                        dishPrice,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: _maxHeight * 18 / 300,
                          color: const Color(0xFFFA4A0C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

