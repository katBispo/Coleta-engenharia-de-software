import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class cadastrarPage extends StatefulWidget {
  const cadastrarPage({super.key});

  @override
  State<cadastrarPage> createState() => _cadastrarPageState();
}

class _cadastrarPageState extends State<cadastrarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Cadastro"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 40,
              right: 40,
            ),
            color: Colors.white,
            child: ListView(children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/seletinhoHomePage.png"),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Nome Completo",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "CPF",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "TEL",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Bairro",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Rua e Número",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _testPopUp(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green), // Altere para a cor desejada
                child: Text('CADASTRAR'), // Texto do botão
              ),
            ])));
  }
}

void _popUpConfirmacacaoCadastro(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Confirmação"),
        content: Text("Deseja realmente cadastrar?"),
        actions: <Widget>[
          TextButton(
            child: Text("Cancelar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Confirmar"),
            onPressed: () {
              // Coloque aqui a lógica de cadastro
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void _testPopUp(BuildContext context) {
  Center(
    child: Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          AnimatedButton(
            text: "CADASTRAR",
            color: Colors.green,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                animType: AnimType.topSlide,
                showCloseIcon: true,
                title: "Cadastro Efetuado!",
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
          )
        ],
      ),
    ),
  );
}
