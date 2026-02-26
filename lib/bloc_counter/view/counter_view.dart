import 'package:bloc_playground/bloc_counter/bloc/counter_bloc.dart';
import 'package:bloc_playground/bloc_counter/bloc/counter_event.dart';
import 'package:bloc_playground/bloc_counter/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text('${state.counterValue}', style: Theme.of(context).textTheme.headlineMedium);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        spacing: 8,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(CounterIncremented()),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(CounterDecremented()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
