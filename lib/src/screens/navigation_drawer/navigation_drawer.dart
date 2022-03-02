import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List _list = [
    //   {"Perfil": "Icon(Icons.person_outline)"},
    //   {"Pedidos": "Icon(Icons.person_outline)"},
    //   {"Ofertas e promoções": "Icon(Icons.person_outline)"},
    //   {"Politica de Privacidade": "Icon(Icons.person_outline)"},
    //   {"Segurança": "Icon(Icons.person_outline)"},
    // ];
    return Drawer(
      backgroundColor: const Color(0xFFFA4A0C),
      // child: ListView.separated(
      //   separatorBuilder: (context, index) {
      //     return const Divider(
      //       color: Color(0xFFF4F4F8),
      //       thickness: 0.8,
      //       indent: 30,
      //       endIndent: 100,
      //     );
      //   },
      //   itemCount: _list.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: _list[index].values.contains(),
      //       title: Text(
      //         _list[index].keys.toString(),
      //         style: const TextStyle(
      //           fontSize: 17,
      //           fontWeight: FontWeight.w600,
      //           color: Colors.white,
      //         ),
      //       ),
      //     );
      //   },
      // ),
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text(""), // para demarcar o espaço de começo
          ),
          ListTile(
            leading: const Icon(
              Icons.person_pin,
              color: Colors.white,
            ),
            title: const Text(
              "Perfil",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){},
          ),
          const Divider(
            color: Color(0xFFF4F4F8),
            thickness: 0.8,
            indent: 30,
            endIndent: 100,
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "Pedidos",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){},
          ),
          const Divider(
            color: Color(0xFFF4F4F8),
            thickness: 0.8,
            indent: 30,
            endIndent: 100,
          ),
          ListTile(
            leading: const Icon(
              Icons.local_offer,
              color: Colors.white,
            ),
            title: const Text(
              "Ofertas e promoções",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){},
          ),
          const Divider(
            color: Color(0xFFF4F4F8),
            thickness: 0.8,
            indent: 30,
            endIndent: 100,
          ),
          ListTile(
            leading: const Icon(
              Icons.policy_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "Politica de Privacidade",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){},
          ),
          const Divider(
            color: Color(0xFFF4F4F8),
            thickness: 0.8,
            indent: 30,
            endIndent: 100,
          ),
          ListTile(
            leading: const Icon(
              Icons.security_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "Segurança",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){},
          ),
          const Divider(
            color: Color(0xFFF4F4F8),
            thickness: 0.8,
            indent: 30,
            endIndent: 100,
          ),
        ],
      ),
    );
  }
}
