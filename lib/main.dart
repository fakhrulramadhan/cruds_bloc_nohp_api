import 'package:cruds_bloc_nohp_api/core.dart';
import 'package:cruds_bloc_nohp_api/presentation/users_list/view/users_list_view.dart';
import 'package:flutter/material.dart';

//kalau mau pakai breakpoint, harus pakai mode debug
void main() async {
  await initialize();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: UsersListView(), //
      builder: (context, child) => debugView(
        context: context,
        child: child,
        visible: true,
      ),
    );
  }
}
