import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp( CounterApp());
}
abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}

class CounterApp extends StatelessWidget {
  final CounterBloc counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App with Bloc',
      home: BlocProvider(
        create: (_) => counterBloc,
        child: CounterScreen(),
      ),
    );
  }

  // @override
  // void dispose() {
  //   counterBloc.close();
  //   super.dispose();
  // }
}

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App with Bloc'),
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter Value:',
                ),
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => counterBloc.add(CounterDecrementPressed()),
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () => counterBloc.add(CounterIncrementPressed()),
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}