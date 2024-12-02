import 'package:flutter/material.dart';
import 'package:login/screens/home_screen.dart';

// Widget untuk layar login
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// State untuk LoginScreen
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildLogo(),
            _buildEmailInput(),
            _buildPasswordInput(),
            _buildForgotPasswordButton(),
            _buildLoginButton(),
            const SizedBox(height: 130),
            _buildSignUpText(),
          ],
        ),
      ),
    );
  }

  // Widget untuk membangun logo
  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
        child: Container(
          width: 200,
          height: 150,
          child: Image.asset('assets/images/figma.png'),
        ),
      ),
    );
  }

  // Widget untuk input email
  Widget _buildEmailInput() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          hintText: 'Enter your email',
        ),
      ),
    );
  }

  // Widhet untuk input password
  Widget _buildPasswordInput() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        obscureText: true, // Mengaburkan teks untuk keamanan
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          hintText: 'Enter your password',
        ),
      ),
    );
  }

  // Widget untuk forgot password
  Widget _buildForgotPasswordButton() {
    return TextButton(
      onPressed: () {
        // Logika untuk mengatur ulang password dapat ditambahkan di sini
      },
      child: const Text(
        'Forgot Password',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
      ),
    );
  }

  // Widget untuk tombol login
  Widget _buildLoginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: const Size(250, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => HomePage(), // Mengarahkan ke halaman HomePage
          ),
        );
      },
      child: const Text(
        'Login',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }

  // Widget untuk teks sign up
  Widget _buildSignUpText() {
    return const Text("Don't have an account? Sign Up Here!");
  }
}
