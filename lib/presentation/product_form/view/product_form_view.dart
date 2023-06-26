import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductFormView extends ProductFormConsumerWidget {
  const ProductFormView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    //jika state loadingnya true (buat conitional state loadingnya di view)
    if (state.loading) {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      ));
    }
    //menyimpan nilai dari form ke state
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductFormView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ketik q_imagepicker
            QImagePicker(
              label: "Photo",
              validator: Validator.required,
              value: null,
              onChanged: (value) {
                state.photo = value; //mendapatkan data (nilai) photo
              },
            ),
            //q_text_field
            QTextField(
              label: "Product Name",
              validator: Validator.required,
              value: "",
              onChanged: (value) {
                state.productName = value;
              },
            ),
            QTextField(
              label: "Price",
              validator: Validator.required,
              value: "",
              onChanged: (value) {
                //di parse ke double nilai value nya
                state.price = double.tryParse(value) ?? 0;
              },
            ),
            //q_memofield
            QMemoField(
              label: "Description",
              validator: Validator.required,
              value: "",
              onChanged: (value) {
                state.description = value;
              },
            ),
          ],
        ),
      ),
      //ketik buttonf
      bottomNavigationBar: Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            //panggil fungsi bloc productsaveevent
            bloc.add(ProductFormButtonSaveEvent());
          },
          child: const Text("Save"),
        ),
      ),
    );
  }
}
