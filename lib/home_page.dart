import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/page_bloc/counter_bloc_page.dart';
import 'package:flutter_bloc_example/page_cubit/counter_cubit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, CounterBlocPage.routeName);
              },
              child: Text(
                "Bloc",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, CounterCubitPage.routeName);
              },
              child: Text(
                "Cubit",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
