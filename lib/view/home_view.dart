import 'package:flutter/material.dart';
import 'package:practice_stackeddd/view_models/home_viewmodels.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModels>.reactive(
      viewModelBuilder: () => HomeViewModels(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Counter App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${viewModel.Count}",
                style: const TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: viewModel.addCounter, child: const Text('Add'))
            ],
          ),
        ),
      )
    );
  }
}