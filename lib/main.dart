import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerCano());

class MiDrawerCano extends StatelessWidget {
  const MiDrawerCano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Cano"),
          centerTitle: true,
          backgroundColor: Color(0xff2260ff),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_sharp,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: const Color(0xffdbdbdb),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Comex"),
                accountEmail: Text("a.21308051280440@cbtis128.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw1.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/JesusRafaelCanoFlores5A/practica1_6J_IOS/main/imagen_2024-02-17_155622442.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw2.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw3.jpg"),
                  ),
                ],
              ),
              const ListTile(
                leading:
                    Icon(Icons.account_box_sharp, color: Color(0xff2e44e7)),
                title: Text("Usuarios",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading:
                    Icon(Icons.account_box_sharp, color: Color(0xff2e44e7)),
                title: Text("Empleados",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.color_lens, color: Color(0xff2e44e7)),
                title: Text("Pinturas",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.format_paint, color: Color(0xff2e44e7)),
                title: Text("Productos",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.car_rental, color: Color(0xff2e44e7)),
                title: Text("Proveedores",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.shopping_bag, color: Color(0xff2e44e7)),
                title: Text("Ventas",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.comment, color: Color(0xff2e44e7)),
                title: Text("Reseñas",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
