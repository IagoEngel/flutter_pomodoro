import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_pomodoro/pages/pomodoro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Pomodoro(),
      ),
    );
  }
}
