import 'package:flutter/material.dart';
import 'package:test_flavors/flavors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await F.fetchFlavor();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste de Flavors'),
      ),
      body: Center(
        child: Text('Flavor: ${F.appFlavor}'),
      ),
    );
  }
}
