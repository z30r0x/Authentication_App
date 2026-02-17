import 'package:flutter/material.dart';
import 'package:session4/password.dart';
import 'package:session4/register.dart';

class ScreenLogin extends StatefulWidget {
  static const routeName = 'screenLogin';

  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  bool isVisable = true;

  final _formKey = GlobalKey<FormState>();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: const Text(
                  'Enter your email and password to securely access your account and manage your services.',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email cannot be empty';
                          } else if (!value.contains('@')) {
                            return 'Email must contain @ symbol';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: pass,
                        obscureText: isVisable,
                        decoration: InputDecoration(
                          enabled: true,
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isVisable
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              isVisable = !isVisable;
                              setState(() {});
                              print("******** visability is $isVisable");
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password cannot be empty';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(ScreenRegister.routeName);
                    },
                    child: const Text(
                      'Sign Up here',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        isError: true,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      Text('Remember me'),
                    ],
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(ScreenPassword.routeName);
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(double.infinity, 60),
                    maximumSize: Size(double.infinity, 60),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.all(1),
                color: Colors.grey,
                margin: EdgeInsets.all(35),
              ),
              Column(
                children: [
                  Text('Or Continue With Account'),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundImage: NetworkImage(
                          'https://imgs.search.brave.com/mjEptGJcWaTlEYkb-NER9hMVK9NOUT_Dho2KUMcW8e0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vVUtoN0Uv/TUFHek5oVUtoN0Uv/MS90bC9jYW52YS1m/YWNlYm9vay1sb2dv/LU1BR3pOaFVLaDdF/LnBuZw',
                        ),
                      ),
                      SizedBox(width: 9),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundImage: NetworkImage(
                          'https://imgs.search.brave.com/ipFu0qZRyGclZggydE1cS9mD0DVzQAzKWQ_lPBFII94/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/aWNvbnM4LmNvbS9w/YXBlcmN1dC8xMjAw/L2dvb2dsZS1sb2dv/LmpwZw',
                        ),
                      ),
                      SizedBox(width: 9),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundImage: NetworkImage(
                          'https://imgs.search.brave.com/FDXKiD7wIBdCY0ml_vB-mOXM_t9K0P1BMqmUqCCcy9g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/aWNvbnM4LmNvbS9z/Zi1ibGFjay8xMjAw/L21hYy1vcy5qcGc',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
