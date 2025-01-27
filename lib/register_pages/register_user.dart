import 'package:RiseHub/pages/congratulation.dart';
import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff829ef6);
Color palleteMediumBlue = Color(0xff3b66f1);
Color palleteBlue = Color(0xff1144e8);

class RegisterAcc extends StatefulWidget {
  @override
  _SlimyCardPage2 createState() => _SlimyCardPage2();
}

class _SlimyCardPage2 extends State<RegisterAcc> {

  final List<String> subjects = ["Tecnologia", "Comércio", "Finança", "Educação", "Ramo"];
  String selectedSubject = "Ramo";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F6),
        body: StreamBuilder(
            // This streamBuilder reads the real-time status of SlimyCard.
            initialData: false,
            stream: slimyCard.stream, //Stream of SlimyCard
            builder: ((BuildContext context, AsyncSnapshot snapshot) {
              return ListView(padding: EdgeInsets.zero, children: <Widget>[
                SlimyCard(
                  slimeEnabled: true,
                  color: palleteMediumBlue,
                  topCardHeight: 199,
                  bottomCardHeight: 420,
                  width: 400,
                  topCardWidget: topCardWidget((snapshot.data)
                      ? 'Informações da Conta'
                      : 'Informações da Conta'),
                  bottomCardWidget: bottomCardWidget(),
                )
              ]);
            })));
  }

  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget(String data) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Text(data,
                  style: TextStyle(
                    fontFamily: 'BellotaText',
                    letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
        ]);
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget() {
    return Scaffold(
      backgroundColor: palleteMediumBlue,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: palleteMediumBlue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "Usuário",
                          labelStyle: TextStyle(
                            fontFamily: 'BellotaText',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  ),
                ),

                TextField(
                      style: TextStyle(color: Colors.white, fontFamily: 'BellotaText',),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "CNPJ",
                          labelStyle: TextStyle(
                            fontFamily: 'BellotaText',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                TextField(
                      style: TextStyle(color: Colors.white, fontFamily: 'BellotaText',),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            fontFamily: 'BellotaText',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            fontFamily: 'BellotaText',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                TextField(
                  obscureText: true,
                      style: TextStyle(color: Colors.white, fontFamily: 'BellotaText',),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 2),
                          ),
                          labelText: "Confirmar Senha",
                          labelStyle: TextStyle(
                            fontFamily: 'BellotaText',
                              color: Colors.white,
                              fontSize: 16,
                    ),
                  )
                ),
                
                 SizedBox(height: 10),
      GestureDetector(
                     onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => Congratulations()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F3F6),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Color(0xFF4D70A6).withOpacity(0),
                                  blurRadius: 16),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Color.fromARGB(170, 255, 255, 255).withOpacity(0),
                                  blurRadius: 10),
                            ]),
                        child: Text(
                          "Submeter",
                          style: TextStyle(
                            fontFamily: 'BellotaText',
                              color: palleteMediumBlue,
                              fontSize: 16),
                        ),
                      ),
                    ),

                    ])))));}
}