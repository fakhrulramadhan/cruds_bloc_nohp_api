import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductListView extends ProductListConsumerWidget {
  const ProductListView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductListView'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'ProductList: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(ProductListIncrementEvent()),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 24.0,
        ),
        onPressed: () async {
          await Get.to(ProductFormView());
        },
      ),
    );
  }
}
