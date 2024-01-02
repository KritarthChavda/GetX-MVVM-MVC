import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("WASSUP"),
              subtitle: Text("WASSUP WASSUP"),
              onTap: () {
                Get.defaultDialog(
                  title: "Default dialouge box",
                  confirm: TextButton(
                    child: Text("Hmmm"),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Get botom sheet"),
              subtitle: Text("WASSUP WASSUP"),
              onTap: () {
                Get.bottomSheet(Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode_outlined),
                        title: Text("Light Mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode_rounded),
                        title: Text("Dark Mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
