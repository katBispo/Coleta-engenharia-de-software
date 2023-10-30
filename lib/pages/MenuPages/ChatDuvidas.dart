import 'package:flutter/material.dart';

class ChatDuvidas extends StatefulWidget {
  const ChatDuvidas({super.key});

  @override
  State<ChatDuvidas> createState() => _ChatDuvidasState();
}

class _ChatDuvidasState extends State<ChatDuvidas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 20,
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  /*child: image.asset(
                "",//colocar caminho icon seletinho
                height:45,
                widht:45,
              ),*/
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Seletinho",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
        children: [],
      ),
    );
  }
}
