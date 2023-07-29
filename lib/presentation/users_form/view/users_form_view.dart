import 'package:cruds_bloc_nohp_api/presentation/users_form/event/users_form_event.dart';
import 'package:cruds_bloc_nohp_api/presentation/users_form/provider/product_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:cruds_bloc_nohp_api/core.dart';

class UsersFormView extends UsersFormConsumerWidget {
  //argument utk update data
  //kalau di product list view, nama itemnya itu items
  final User? user; //item berisi data products

  UsersFormView({super.key, this.user});

  //fungsi utk menerima arguments
  @override
  beforeInitState(bloc, state) {
    state.user = user;
    //print(state.item);
    print("=====");
    print(state.user);
  }

  @override
  Widget buildView(context, bloc, state) {
    //jika state loadingnya true (buat conitional state loadingnya di view)
    if (state.isLoading) {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      ));
    }

    print(state.user);
    //menyimpan nilai dari form ke state
    return Scaffold(
      appBar: AppBar(
        title: const Text('UsersFormView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QTextField(
              label: "Username",
              validator: Validator.required,
              value: user?.userName, //? belum tentu ada, ambil pas editmode
              onChanged: (value) {
                state.userName = value;
              },
            ),
            QMemoField(
              label: "Address",
              validator: Validator.required,
              value: user?.address,
              onChanged: (value) {
                state.address = value;
              },
            ),
            QDatePicker(
              label: "Birth date",
              validator: Validator.required,
              value: user?.dateOfBirth != null
                  ? DateTime.tryParse("${user!.dateOfBirth}")
                  : DateTime.now(),
              onChanged: (value) {
                //pakai ini alhamdulillah bisa
                state.dateOfBirth = DateFormat("yyyy-MM-dd").format(value);

                //kalau formatnya ini enggak bisa
                //state.dateOfBirth = DateFormat("dd-MM-yyyy").format(value);
                print("value: $value");
                print("${state.dateOfBirth}");
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
            bloc.add(UsersFormButtonSaveEvent());
          },
          child: const Text("Save"),
        ),
      ),
    );
  }
}
