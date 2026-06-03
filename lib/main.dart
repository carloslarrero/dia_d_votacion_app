import 'package:app_votacion_day/contenedorBarrios.dart';

import 'barril.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App dia D',
      home: ContenedorBarrios(),
    );
  }
}
