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
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Login',
                      hintText: 'Digite seu login',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), 
                      ),
                      contentPadding: EdgeInsets.all(
                          15.0), 
                    ),
                    controller: input,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Digite sua senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.all(15.0),
                    ),
                    controller: input2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              height: 60,
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.facebook),
                    label: 'Facebook',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset('assets/google2.png', width: 25),
                    label: 'Google',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.telegram),
                    label: 'Telegram',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
