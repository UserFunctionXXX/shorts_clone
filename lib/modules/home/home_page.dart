import 'package:flutter/material.dart';
import './home_store.dart';

class HomePage extends StatelessWidget {
  final HomeStore _store;

  const HomePage({
    Key? key,
    required HomeStore homeStore,
  }) : _store = homeStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(),
    );
  }
}
