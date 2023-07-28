import 'package:flutter/material.dart';
import 'package:cruds_bloc_nohp_api/core.dart';

class ProductFormView extends ProductFormConsumerWidget {
  //argument utk update data
  //kalau di product list view, nama itemnya itu items
  final Product? item; //item berisi data products

  ProductFormView({super.key, this.item});

  //fungsi utk menerima arguments
  @override
  beforeInitState(bloc, state) {
    state.item = item;
    //print(state.item);
    print("=====");
    print(state.item);
  }

  @override
  Widget buildView(context, bloc, state) {
    //jika state loadingnya true (buat conitional state loadingnya di view)
    if (state.loading) {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      ));
    }

    print(state.item);
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
              value: state.item?.photo,
              onChanged: (value) {
                state.photo = value; //mendapatkan data (nilai) photo
              },
            ),
            //q_text_field
            QTextField(
              label: "Product Name",
              validator: Validator.required,
              //kalau itemnya tidak sama dengan null, maka akan bawa data produknya
              value: state.item?.productName, //dalam mode create, harusnya mull
              onChanged: (value) {
                state.productName = value;
              },
            ),
            QTextField(
              label: "Price",
              validator: Validator.required,
              value: state.item?.price?.toString(),
              onChanged: (value) {
                //di parse ke double nilai value nya
                state.price = double.tryParse(value) ?? 0;
              },
            ),
            //q_memofield
            QMemoField(
              label: "Description",
              validator: Validator.required,
              value: state.item?.description,
              onChanged: (value) {
                state.description = value;
              },
            ),
            QDatePicker(
            label: "Birth date",
            validator: Validator.required,
            onChanged: (value) {
            print("value: $value");
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
