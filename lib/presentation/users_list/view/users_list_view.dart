import 'package:cruds_bloc_nohp_api/presentation/users_form/view/users_form_view.dart';
import 'package:cruds_bloc_nohp_api/presentation/users_list/event/users_list_event.dart';
import 'package:cruds_bloc_nohp_api/presentation/users_list/provider/users_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:cruds_bloc_nohp_api/core.dart';

class UsersListView extends UsersListConsumerWidget {
  const UsersListView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    if (state.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List Of Travel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => UsersFormView()),
                  // );

                  await Get.to(UsersFormView());

                  bloc.add(UsersListLoadEvent());

                  //bloc.add(us)
                },
                child: const Text("Tambah Pengguna"),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.users.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var user = state.users[index];
                  return Card(
                    child: InkWell(
                      onTap: () async {
                        //print(user);
                        await Get.to(UsersFormView(
                          user: user,
                        ));

                        bloc.add(UsersListLoadEvent());
                      },
                      child: ListTile(
                        title: Text("${user.id}"),
                        subtitle: Column(
                          children: [
                            Text("${user.userName}"),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text("${user.address}"),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text("${user.dateOfBirth}"),
                            // Text(
                            //     "${DateFormat("dd-M-yyyy").format(DateTime.parse(user.dateOfBirth!))}"),
                          ],
                        ),
                        trailing: IconButton(
                          onPressed: () async {
                            //dialog
                            bool confirm = false;
                            await showDialog<void>(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Konfirmasi'),
                                  content: const SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text(
                                            'Ingin menghapus data pengguna ini?'),
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
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
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
                              //panggil event delete
                              bloc.add(UsersListDeleteEvent(id: user.id!));
                              print("Confirmed!");

                              return Future.value(true);
                            }

                            return Future.value(false);
                          },
                          icon: const Icon(
                            Icons.delete,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
