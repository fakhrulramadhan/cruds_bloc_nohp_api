import 'package:cruds_bloc_nohp_api/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListView extends StatefulWidget {
  final User? user;
  const UserListView({Key? key, this.user}) : super(key: key);

  @override
  State<UserListView> createState() => _UserListViewState(this.user);
}

class _UserListViewState extends State<UserListView> {
  User? user;

  _UserListViewState(this.user);
  UserListBloc bloc = UserListBloc();

  @override
  void initState() {
    bloc.initState();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<UserListBloc, UserListState>(
        listener: (context, state) {},
        child: BlocBuilder<UserListBloc, UserListState>(
          builder: (context, state) {
            final bloc = context.read<UserListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  buildView(
    BuildContext context,
    UserListBloc bloc,
    UserListState state,
  ) {
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserFormView()),
                  );
                },
                child: const Text("Tambah Pengguna"),
              ),
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
                        await Get.to(UserFormView(
                          user: user,
                        ));
                      },
                      child: ListTile(
                        title: Text("${user.userName}"),
                        subtitle: Column(
                          children: [
                            Text("${user.address}"),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text("${user.dateOfBirth}"),
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
                              bloc.add(UserListDeleteEvent(id: user.id!));
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
