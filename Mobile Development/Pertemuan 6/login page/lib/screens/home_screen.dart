import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Home'),
    );
  }

  Widget _buildBody() {
    return Center(
      child: _buildWelcomeButton(),
    );
  }

  Widget _buildWelcomeButton() {
    return Container(
      width: 80,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () => _onWelcomeButtonPressed(),
        child: const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  void _onWelcomeButtonPressed() {
    Navigator.pop(context);
  }
}
