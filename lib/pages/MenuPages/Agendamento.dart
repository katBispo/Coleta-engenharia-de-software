import 'package:coleta_seletiva/pages/MenuPages/dadosAgendamento.dart';
import 'package:flutter/material.dart';

class Agendamento extends StatefulWidget {
  const Agendamento({super.key});

  @override
  State<Agendamento> createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Agendamento'),
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
                  fontSize: 20,
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
            'Tipo de Resíduo',
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
                height: 1.0,
              ),
              Text(
                'Entulho',
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
                height: 4.0,
              ),
              Text(
                'Recicláveis',
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
                height: 4.0,
              ),
              Text(
                'Eletrônicos',
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
              height: 4.0,
            ),
            Text(
              'Madeira',
              style: TextStyle(fontSize: 18),
            )
          ]),
          Row(children: [
            Radio(
              value: 5,
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
              height: 4.0,
            ),
            Text(
              'Pneus',
              style: TextStyle(fontSize: 18),
            )
          ]),
          Row(children: [
            Radio(
              value: 6,
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
              height: 4.0,
            ),
            Text(
              'Volumosos',
              style: TextStyle(fontSize: 18),
            )
          ]),
          Row(children: [
            Radio(
              value: 7,
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
              height: 4.0,
            ),
            Text(
              'Podas e Capinas',
              style: TextStyle(fontSize: 18),
            )
          ]),
          ElevatedButton(
            onPressed: () {
              // Navega para a página de login quando o botão é pressionado
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dadosAgendamento()),
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
