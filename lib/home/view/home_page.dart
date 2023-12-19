import 'package:clean_architecture/domain/domain.dart';
import 'package:clean_architecture/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(repository: context.read<IRepository>()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Clean Architecture'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () =>
                      context.read<HomeBloc>().add(HomeDataRequested()),
                  child: const Text('GET DATA'),
                ),
                const SizedBox(height: 20),
                Text(
                  state.data,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
