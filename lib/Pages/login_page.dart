import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      width: 1.8,
      color: Colors.deepPurple,
      style: BorderStyle.solid,
    ),
  );

  final enabledborder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      width: 1.2,
      color: Colors.black,
      style: BorderStyle.solid,
    ),
  );

  bool isShow = true;

  void init() {
    isShow = true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('Assets/images/login.png', fit: BoxFit.cover),
              SizedBox(height: 20),
              Text(
                "Welcome!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: border,
                    focusedBorder: border,
                    enabledBorder: enabledborder,
                    prefixIcon: Icon(Icons.account_circle),

                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Enter username",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: isShow,
                  decoration: InputDecoration(
                    border: border,
                    focusedBorder: border,
                    enabledBorder: enabledborder,
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isShow = !isShow;
                        });
                      },
                      child: (isShow == true)
                          ? Icon(Icons.remove_red_eye)
                          : Icon(
                              Icons.remove_red_eye_sharp,
                              color: Colors.blue,
                            ),
                    ),

                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: FloatingActionButton(
                  elevation: 0,
                  mini: true,
                  onPressed: () {
                    debugPrint("Login button taped");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 150,
                child: FloatingActionButton(
                  elevation: 0,
                  mini: true,
                  onPressed: () {
                    debugPrint("signup button taped");
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
