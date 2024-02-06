import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
    return Scaffold(
      //appBar: AppBar(
      // title: const Center(child: Text("abc")),
      //),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.asset("assets/images/clogo.png"),
          const Text(
            "Welcome back",
            style: TextStyle(
                fontSize: 22, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                prefix: Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                hintText: ("Email/Phone Number"),
              )),
          TextFormField(
              controller: pwController,
              decoration: const InputDecoration(
                prefix: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                hintText: ("Password"),
              )),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (v) {},
              ),
              const Text(
                "Remember me",
                style: TextStyle(color: Colors.pink),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.pink),
                  ))
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          const Center(child: Text("Or Login with")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset("assets/images"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.lightGreen[200],
                  height: 20,
                  width: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.lightGreen[300],
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
