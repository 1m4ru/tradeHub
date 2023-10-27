import 'package:flutter/material.dart';

TextEditingController input = TextEditingController();
TextEditingController input2 = TextEditingController();
PageController pageController = PageController();
int paginalAtual = 0;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TradeHub'),
        backgroundColor: Colors.orangeAccent,
        elevation: 30,
        centerTitle: true,
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(40),
            child: Column(
              
              children: [
                TextField(
                  decoration:
                      InputDecoration(hintText: 'Login', labelText: 'Login'),
                  controller: input,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'senha'),
                ),
                Container(
                  margin: (EdgeInsets.only(top: 10, left: 25, right: 25)),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(32))),
                  child: TextButton(
                    child: Center(
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      pageController.animateToPage(1,
                          duration: Duration(microseconds: 200),
                          curve: Curves.ease);
                    },
                  ),
                ),
                Container(
                 margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height:60,
                  child: BottomNavigationBar(
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.facebook), label: 'Facebook'),
                      BottomNavigationBarItem(
                        icon: Image.asset('assets/google2.png', width: 25),
                        label: 'Google',
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.telegram), label: 'Telegram'),
                    ],
                  ),
                ),
               
              ],
            ),
          ),
           Positioned(
                  child: Container(
                    height: 5,
                    color: Colors.orangeAccent,
                  ) ),
        ],
      ),
    );
  }
}
