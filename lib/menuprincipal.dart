import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_5/cadsenhas.dart';
import 'package:flutter_application_5/listasenha.dart';
import 'perfilUsuario.dart';
import 'cadcartoes.dart';
import 'geradorsenhas.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("sou eu"),
                accountEmail: Text("soueu@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'),
                  backgroundColor: Colors.grey,
                ),
              ),
              ListTile(
                  leading: Icon(Icons.star),
                  title: Text("favoritos"),
                  subtitle: Text("meus favoritos"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("perfil"),
                  subtitle: Text("Perfil do usuario"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PerfilUsuario();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("cartoes"),
                  subtitle: Text("Cartões"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return cadcartoes();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.password_rounded),
                  title: Text("gerador"),
                  subtitle: Text("Gerador de Senhas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return geradorSenha();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.shield_sharp),
                  title: Text("senhas"),
                  subtitle: Text("Cadastro de Senhas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return cadsenhas();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.list_rounded),
                  title: Text("senhas"),
                  subtitle: Text("Lista de Senhas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return listaSenhas();
                    }));
                  }),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 7, 90, 82),
            title: const Text('Menu Principal')),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_rounded,
                ),
                label: "",
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.password,
                ),
                label: "Senhas",
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                ),
                label: "cartoes"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                label: "favoritos"),
          ],
        ),
      ),
    );
  }
}
