import 'dart:ui';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/actions/app_actions.dart';
import 'package:group_chat/models/models.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  void _onResponse(dynamic action) {
    if (action is CreateUserError) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message!)));
      }
    }
    if (action is LoginError) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message!)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdee2ff),
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/guy-01.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/clouds-01.png',
                      fit: BoxFit.fill,
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 6,
                        sigmaY: 4,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Form(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ThemeData().colorScheme.copyWith(
                                        primary: Colors.indigoAccent,
                                      ),
                                ),
                                child: TextFormField(
                                  controller: _controllerEmail,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: const Icon(CupertinoIcons.mail),
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.indigoAccent.withAlpha(20),
                                  ),
                                  validator: (String? value) {
                                    if ((value != null && !EmailValidator.validate(value)) || value == null) {
                                      return 'This is not a valid email address.';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ThemeData().colorScheme.copyWith(
                                        primary: Colors.indigoAccent,
                                      ),
                                ),
                                child: TextFormField(
                                  validator: (String? value) {
                                    if (value == null || value.length < 6) {
                                      return 'Password must be at least 6 characters long.';
                                    }
                                    return null;
                                  },
                                  controller: _controllerPassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: const Icon(Icons.lock_outline),
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.indigoAccent.withAlpha(20),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Builder(
                                    builder: (BuildContext context) {
                                      return ElevatedButton(
                                        onPressed: () {
                                          if (!Form.of(context)!.validate()) {
                                            return;
                                          } else {
                                            StoreProvider.of<AppState>(context).dispatch(
                                              Login(
                                                email: _controllerEmail.text,
                                                password: _controllerPassword.text,
                                                response: _onResponse,
                                              ),
                                            );
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.indigoAccent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Text('Login'),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: const <Widget>[
                                        Expanded(
                                          child: Divider(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          " Don't have an account? ",
                                          style: TextStyle(color: Colors.grey, fontSize: 12),
                                        ),
                                        Expanded(
                                          child: Divider(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Builder(
                                    builder: (BuildContext context) {
                                      return OutlinedButton(
                                        onPressed: () {
                                          if (!Form.of(context)!.validate()) {
                                            return;
                                          } else {
                                            StoreProvider.of<AppState>(context).dispatch(
                                              CreateUser(
                                                email: _controllerEmail.text,
                                                password: _controllerPassword.text,
                                                response: _onResponse,
                                              ),
                                            );
                                          }
                                        },
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(color: Colors.indigoAccent),
                                          backgroundColor: Colors.white.withAlpha(100),
                                        ),
                                        child: const Text(
                                          'Create Account',
                                          style: TextStyle(color: Colors.indigoAccent),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
