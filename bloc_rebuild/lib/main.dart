import 'package:bloc_rebuild/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _showTexts = false;

  void _changeTextsVisibility() {
    setState(() {
      _showTexts = !_showTexts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Comment any of the texts to reproduce
            if (_showTexts) const Text('HEADER TEXT'),
            const NumberView(),
            if (_showTexts) const Text('BOTTOM TEXT'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeTextsVisibility,
        child: const Icon(
          Icons.change_circle,
        ),
      ),
    );
  }
}

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NumberBloc>(
      create: (_) => NumberBloc(),
      child: BlocBuilder<NumberBloc, NumberState>(
        builder: (context, state) {
          return Column(
            children: [
              Text(
                'The current number is ${state.number}',
              ),
              OutlinedButton(
                onPressed: () {
                  BlocProvider.of<NumberBloc>(context).add(
                    const NumberUpdateRequested(),
                  );
                },
                child: const Text('Change number'),
              ),
            ],
          );
        },
      ),
    );
  }
}
