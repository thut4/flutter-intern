import 'package:flutter/material.dart';

import 'register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var rememberValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[850],
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign in',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                //color: Colors.amber
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                TextField(
                  style: const TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      //color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Enter a username',
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        //color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Enter a password',
                      hintStyle: const TextStyle(fontSize: 18.0)),
                ),
                CheckboxListTile(
                  title: const Text(
                    "Remember me",
                  ),
                  contentPadding: EdgeInsets.zero,
                  value: rememberValue,
                  activeColor: Theme.of(context).colorScheme.primary,
                  onChanged: (newValue) {
                    setState(() {
                      rememberValue = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Sigin in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not registered yet?',
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text('Create new one')),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
