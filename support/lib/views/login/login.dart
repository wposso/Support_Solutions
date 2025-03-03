import 'package:flutter/material.dart';
import 'package:support/views/login/controller.dart';
import 'package:support/views/login/widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    loginEmailController;
    loginPasswordController;
  }

  void changeState(){
    setState(() {
      loginSendCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.zero,
                    child: Image(
                      image: AssetImage('assets/support_solution.jpeg'),
                      fit: BoxFit.contain,
                      height: 250,
                      width: 290,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get started',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Please login to continue our App",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: loginEmailController,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          onChanged: (x) {
                            setState(() {});
                          },
                          obscureText: loginIsActive,
                          controller: loginPasswordController,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              suffixIcon:
                                  loginPasswordController.text.isNotEmpty
                                      ? IconButton(
                                          onPressed: () {
                                            setState(() {
                                              loginIsActive = !loginIsActive;
                                            });
                                          },
                                          icon: Icon(loginIsActive
                                              ? Icons.visibility
                                              : Icons.visibility_off))
                                      : null,
                              hintText: 'Enter your password',
                              hintStyle: const TextStyle(
                                fontSize: 16,
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.zero,
                              child: GestureDetector(
                                  onTap: () {
                                    // recuperationPassword(context);
                                    loginBuildAlert(context);
                                  },
                                  child: const Text(
                                    'Forgot your password?',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.blue),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          fixedSize: const Size(350, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 44, 45, 51)),
                      onPressed: () {
                        loginAuth(context);
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do you want register?',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
