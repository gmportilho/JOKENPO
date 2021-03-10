import 'package:flutter/material.dart';
import 'dart:math';

class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  String imagepc = 'assets/inicio.png';
  int escolha;
  int pc;
  String resultado = "";
  

  void escolha0(){
    escolha = 0;
  }

  void escolha1(){
    escolha = 1;
  }

  void escolha2(){
    escolha = 2;
  }

  void jogadaPc(){
    var r = Random();   
    pc = r.nextInt(3); 
  }

  void imagePc(){
    
    print(pc);
    if (pc == 0){
      imagepc = 'assets/stones.png';
      pc = 0;
    }
    else if (pc == 1){
      imagepc = 'assets/document.png';
      pc = 1;
    }
    else if (pc == 2){
      imagepc = 'assets/scissors.png';
      pc = 2;
    }

    

    setState() {
      imagepc = imagepc;
    }
  }

  void compara(){
    
    if (escolha == 0 && pc==2 || escolha == 1 && pc == 0 || escolha == 2 && pc == 1){
      resultado = "VITÓRIA";
    }
    else if (escolha == pc) {
      resultado = "EMPATE";
    }
    else if (pc == 0 && escolha==2 || pc == 1 && escolha == 0 || pc == 2 && escolha == 1){
      resultado = "DERROTA";         
    }

    setState(() {
      resultado = resultado;
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JOKENPO"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(40, 150, 40, 0),
              child: Column(
                children: [ 
                  Text("ESCOLHA DO COMPUTADOR:", style: TextStyle(fontSize: 26),),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(imagepc, width: 110),
                  SizedBox(
                    height: 20,
                  ),
                  Text(resultado, style: TextStyle(fontSize: 26),),
                ],           
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.white,
                      child: Image.asset('assets/stones.png',width: 60),
                      onPressed: () {
                        escolha0();
                        jogadaPc();
                        imagePc();
                        compara();
                      },
                    ),
                 ),
                  SizedBox(
                    height: 10,
                  ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.white,
                        child: Image.asset('assets/document.png',width: 60),
                        onPressed: () {
                          escolha1();
                          jogadaPc();
                          imagePc();
                          compara();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                      color: Colors.white,
                      child: Image.asset('assets/scissors.png', width: 60),
                      onPressed: () {
                        escolha2();
                        jogadaPc();
                        imagePc();
                        compara();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),  
    );
  }
}