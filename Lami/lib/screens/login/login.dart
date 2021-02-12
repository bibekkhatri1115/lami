import 'package:Lami/constants.dart';
import 'package:Lami/dio_config.dart';
import 'package:Lami/screens/login/components/background.dart';
import 'package:Lami/screens/login/components/text_field.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SignInRegister extends StatefulWidget {
  @override
  _SignInRegisterState createState() => _SignInRegisterState();
}

class _SignInRegisterState extends State<SignInRegister> {
  int _index = 0;
  int gender = 0;
  int prefferedGender = 0;
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  TextEditingController emailLoginEditingController =
      new TextEditingController();
  TextEditingController passwordLoginEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 50.0, bottom: 50.0),
            width: size.width * .8,
            // height: size.height * .6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: lamiPrimaryColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: _index == 1
                                    ? Colors.white
                                    : lamiPrimaryColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(
                                        color: _index == 1
                                            ? lamiPrimaryColor
                                            : Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _index = 0;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: _index == 0
                                    ? Colors.white
                                    : lamiPrimaryColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: _index == 0
                                            ? lamiPrimaryColor
                                            : Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _index = 1;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: _index == 0
                      ? Column(
                          children: [
                            TextFieldContainer(
                              child: TextFormField(
                                controller: emailLoginEditingController,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFieldContainer(
                              child: TextFormField(
                                controller: passwordLoginEditingController,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                  suffixIcon: GestureDetector(
                                    onLongPress: () {
                                      setState(() {
                                        passwordVisible = true;
                                      });
                                    },
                                    onLongPressUp: () {
                                      setState(() {
                                        passwordVisible = false;
                                      });
                                    },
                                    child: Icon(
                                      passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: lamiPrimaryColor,
                                    ),
                                  ),
                                ),
                                obscureText: !passwordVisible,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Forget Password?',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: lamiPrimaryColor),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            GestureDetector(
                              child: Container(
                                height: 40.0,
                                width: 240.0,
                                decoration: BoxDecoration(
                                  color: lamiPrimaryColor,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              onTap: () async {},
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            TextFieldContainer(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            TextFieldContainer(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            TextFieldContainer(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                  suffixIcon: GestureDetector(
                                    onLongPress: () {
                                      setState(() {
                                        passwordVisible = true;
                                      });
                                    },
                                    onLongPressUp: () {
                                      setState(() {
                                        passwordVisible = false;
                                      });
                                    },
                                    child: Icon(
                                      passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: lamiPrimaryColor,
                                    ),
                                  ),
                                ),
                                obscureText: !passwordVisible,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            TextFieldContainer(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                  suffixIcon: GestureDetector(
                                    onLongPress: () {
                                      setState(() {
                                        confirmPasswordVisible = true;
                                      });
                                    },
                                    onLongPressUp: () {
                                      setState(() {
                                        confirmPasswordVisible = false;
                                      });
                                    },
                                    child: Icon(
                                      confirmPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: lamiPrimaryColor,
                                    ),
                                  ),
                                ),
                                obscureText: !confirmPasswordVisible,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            TextFieldContainer(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            TextFieldContainer(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Date of Birth',
                                  hintStyle: TextStyle(color: lamiPrimaryColor),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gender',
                                    style: TextStyle(
                                      color: lamiPrimaryColor,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(() {
                                      gender = val;
                                    });
                                  },
                                ),
                                Text(
                                  'Male',
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    color: lamiPrimaryColor,
                                  ),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(() {
                                      gender = val;
                                      print(gender);
                                    });
                                  },
                                ),
                                Text(
                                  'Female',
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    color: lamiPrimaryColor,
                                  ),
                                ),
                                Radio(
                                  value: 3,
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(() {
                                      gender = val;
                                    });
                                  },
                                ),
                                Text(
                                  'Others',
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    color: lamiPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'What are you looking for?',
                                    style: TextStyle(
                                      color: lamiPrimaryColor,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: prefferedGender,
                                  onChanged: (val) {
                                    setState(() {
                                      prefferedGender = val;
                                    });
                                  },
                                ),
                                Text(
                                  'Male',
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    color: lamiPrimaryColor,
                                  ),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: prefferedGender,
                                  onChanged: (val) {
                                    setState(() {
                                      prefferedGender = val;
                                      print(prefferedGender);
                                    });
                                  },
                                ),
                                Text(
                                  'Female',
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    color: lamiPrimaryColor,
                                  ),
                                ),
                                Radio(
                                  value: 3,
                                  groupValue: prefferedGender,
                                  onChanged: (val) {
                                    setState(() {
                                      prefferedGender = val;
                                    });
                                  },
                                ),
                                Text(
                                  'Others',
                                  style: new TextStyle(
                                    fontSize: 17.0,
                                    color: lamiPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 240.0,
                              decoration: BoxDecoration(
                                color: lamiPrimaryColor,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Create Account',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
