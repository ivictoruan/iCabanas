import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController? searchControler;
  const SearchFieldWidget({ Key? key, required this.searchControler }) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    final _maxWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: _maxWidth * 0.08,), // 8% da tela
      padding: EdgeInsets.symmetric(
        horizontal: _maxWidth * 0.06, // 6% da tela
        vertical: _maxWidth * 0.008,  // 0,8% da tela      
      ),
      decoration: const ShapeDecoration(
        color: Color(0xFFEFEEEE),

        shape: StadiumBorder(
          side: BorderSide(
            color: Color(0xFFEFEFEF),
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),      
      child: TextField(
        controller: searchControler,
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,color: const Color(0xFF000000),
            size: _maxWidth * 0.07,
          ),
        ),
      ),
      
    );
  }
}