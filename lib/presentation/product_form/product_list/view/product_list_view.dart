import 'package:flutter/material.dart';
import 'package:cruds_bloc_nohp_api/core.dart';

class ProductListView extends ProductListConsumerWidget {
  const ProductListView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    if (state.loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductListView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //item_card dan alt +shift + v
            Expanded(
              child: ListView.builder(
                //ambil jumlah data produk dari API
                //kalau di product list view namanya product
                itemCount: state.items.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  //ambil list product ke item dengan state.nama_field[index]
                  var item = state.items[index];
                  //print(item);
                  //delete gunakan dismissible (alt+shift+d)
                  return Dismissible(
                    key: UniqueKey(), //unik key utk id nya
                    onDismissed: (detail) {},
                    confirmDismiss: (direction) async {
                      bool confirm = false;
                      await showDialog<void>(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirm'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text(
                                      'Are you sure you want to delete this item?'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[600],
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("No"),
                              ),
                              //panggil controlller event untuk hapus
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                ),
                                onPressed: () {
                                  confirm = true;
                                  Navigator.pop(context);
                                },
                                child: const Text("Yes"),
                              ),
                            ],
                          );
                        },
                      );
                      if (confirm) {
                        //panggil event pakai bloc.add
                        //panggil fungsi bloc pakai add(nama_fungsi)
                        //pakai ! setelah id
                        bloc.add(ProductListDeleteEvent(
                          id: item.id!,
                        ));
                        return Future.value(true);
                      }
                      return Future.value(false);
                    },
                    child: Card(
                      child: ListTile(
                        //ketika di klik, ke halaman form edit,
                        //jadikan item sebagai argument datanya
                        onTap: () async {
                          print(item);
                          await Get.to(ProductFormView(
                            item: item,
                          ));

                          bloc.add(ProductListLoadEvent());
                        },
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            "${item.photo}",
                          ),
                        ),
                        title: Text("${item.productName}"),
                        subtitle: Text("${item.price}"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 24.0,
        ),
        onPressed: () async {
          await Get.to(ProductFormView());
          //supaya listviewnya ke refresh kalau ada data yang baru
          bloc.add(ProductListLoadEvent());
        },
      ),
    );
  }
}
