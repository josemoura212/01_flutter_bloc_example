import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc_example/page_bloc/counter_bloc_page.dart';
import 'package:flutter_bloc_example/page_cubit/counter_cubit_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      title: "Bloc e Cubit Example",
      routes: {
        CounterBlocPage.routeName: (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const CounterBlocPage(),
            ),
        CounterCubitPage.routeName: (_) => const CounterCubitPage(),
      },
    );
  }
}
