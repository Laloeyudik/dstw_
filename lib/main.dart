import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      // theme: ThemeData(
      //   primarySwatch: Colors.yellow,
      // ),
      home: LoginPage(),
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/signup': (context) => SignupPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  void navigateToWelcomePage(BuildContext context) {
    Navigator.pushNamed(context, '/welcome').then((_) {
      Navigator.pushNamed(context, '/forgot_password').then((_) {
        Navigator.pushNamed(context, '/signup');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(),
            _inputField(context),
            _forgotPassword(context),
            _signup(context),
            InkWell(
              onTap: () {
                navigateToWelcomePage(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 253, 63, 53),
                      Color.fromARGB(255, 231, 64, 9),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _header() {
  return Column(
    children: [
      Text(
        "Welcome Friends",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Enter your credentials to login"),
    ],
  );
}

Widget _inputField(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 165, 163, 163).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.person),
        ),
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 165, 163, 163).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
    ],
  );
}

Widget _changeField(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "New Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
    ],
  );
}

Widget _signupField(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "No. Handphone",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10),
    ],
  );
}

Widget _forgotPassword(BuildContext context) {
  return Align(
    alignment: Alignment.topRight,
    child: TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/forgot_password');
      },
      child: Text("Forgot password?"),
    ),
  );
}

Widget _signup(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? "),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: Text("Sign Up"),
        ),
      ],
    ),
  );
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 63, 53),
              Color.fromARGB(255, 231, 64, 9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 16),
                child: ClipOval(
                  child: Image.asset(
                    'lib/assets/dstw.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Welcome Back To My Page',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                "Nama : Dwi Sulistiawati",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                "NIM : 2101020002",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                "Kelas : Ti A",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 63, 53),
              Color.fromARGB(255, 231, 64, 9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.all(36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Change Your Password',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),
            _changeField(context),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 63, 53),
              Color.fromARGB(255, 231, 64, 9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Register Your Account',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),
            _signupField(context),
          ],
        ),
      ),
    );
  }
}
