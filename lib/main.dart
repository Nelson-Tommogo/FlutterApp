import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:simpleapp/Color/colors.dart';
import 'package:flutter/cupertino.dart';

final unameController = TextEditingController();
final passController = TextEditingController();
String uname = "uname";
String pass = "pass";

void main() => runApp(MaterialApp(
  home: LoginScreen(),
));

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Column(
            children: [
              Text("Login"),
              TextField(
                controller: unameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.verified_user),
                  hintText: "Username",
                ),
              ),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Password",
                ),
                obscureText: true,
              ),

              Container(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text("Create Account?"),
                ),
              ),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  if (uname == unameController.text &&
                      pass == passController.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Home(username: "Hello World from Login"),
                      ),
                    );
                  } else {
                    // Fluttertoast.showToast(msg: "Invalid Username or Password");
                    unameController.text = "";
                    passController.text = "";
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Text("Sign Up Page"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String username;

  Home({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Welcome, $username!"),
      ),
    );
  }
}
