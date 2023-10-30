import 'package:coleta_seletiva/pages/MenuPages/dadosDenuncia.dart';
import 'package:flutter/material.dart';

class Denuncia extends StatefulWidget {
  const Denuncia({super.key});

  @override
  State<Denuncia> createState() => _DenunciaState();
}

class _DenunciaState extends State<Denuncia> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Denúncia'),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(children: <Widget>[
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                )),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                labelText: "Telefone",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                )),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Divider(),
          Text(
            'Tipo de Denúncia',
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          Divider(),
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (int? value) {
                  //inteiro ou nulo
                  setState(() {
                    _value =
                        value!; //!valor nao nulo,estou afirmando que nao será nulo
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Descarte Irregular',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (int? value) {
                  setState(() {
                    _value =
                        value!; //!valor nao nulo,estou afirmando que nao será nulo
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Falta de Coleta',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (int? value) {
                  setState(() {
                    _value =
                        value!; //!valor nao nulo,estou afirmando que nao será nulo
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Obstrução de Patrimônio',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(children: [
            Radio(
              value: 4,
              groupValue: _value,
              onChanged: (int? value) {
                setState(() {
                  _value =
                      value!; //!valor nao nulo,estou afirmando que nao será nulo
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Outro',
              style: TextStyle(fontSize: 18),
            )
          ]),
          ElevatedButton(
            onPressed: () {
              // Navega para a página de login quando o botão é pressionado
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dadosDenuncia()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.green), // Altere para a cor desejada
            child: Text('Próximo'), // Texto do botão
          ),
        ]),
      ),
    );
  }
}
