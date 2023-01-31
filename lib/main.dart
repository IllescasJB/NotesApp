import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:notes_app/shared/providers/theme.dart';
import 'package:openapi/openapi.dart';

import 'brightness_toggle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final settings = ValueNotifier(ThemeSettings(
        sourceColor: const Color(0xff1de9b6), themeMode: ThemeMode.light));
    return DynamicColorBuilder(
      builder: ((lightDynamic, darkDynamic) => ThemeProvider(
            settings: settings,
            lightDynamic: lightDynamic,
            darkDynamic: darkDynamic,
            child: NotificationListener<ThemeSettingChange>(
              onNotification: (notification) {
                settings.value = notification.settings;
                return true;
              },
              child: ValueListenableBuilder<ThemeSettings>(
                valueListenable: settings,
                builder: ((context, value, _) {
                  final theme = ThemeProvider.of(context);
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Notes App',
                    theme: theme.light(),
                    darkTheme: theme.dark(settings.value.sourceColor),
                    themeMode: theme.themeMode(),
                    home: HomeScreen(
                      usersApi: UsersApi(
                        Dio(BaseOptions(baseUrl: 'http://localhost:8000')),
                        standardSerializers,
                      ),
                    ),
                  );
                }),
              ),
            ),
          )),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.usersApi,
  }) : super(key: key);

  final UsersApi usersApi;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  void onDestinationSelectd(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _loadUsers() async {
    try {
      final users = await widget.usersApi.createUser(
          userPost: UserPost((builder) => builder
            ..name = 'User from flutter web'
            ..email = 'email@flutter.web'));
      log('usuarios recibidos');
      log(users.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Good morning'),
        actions: const [BrightnessToggle()],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _loadUsers,
          child: const Text('Users'),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          final themProvider = ThemeProvider.of(context);
          final settings = themProvider.settings.value;
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: BlockPicker(
                  pickerColor: settings.sourceColor,
                  onColorChanged: (color) {
                    final newSettings = ThemeSettings(
                      sourceColor: color,
                      themeMode: themProvider.themeMode(),
                    );
                    ThemeSettingChange(settings: newSettings).dispatch(context);
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Save'),
                  )
                ],
              );
            },
          );
        },
        tooltip: 'Colors',
        child: const Icon(Icons.palette),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.people), label: 'User'),
          NavigationDestination(icon: Icon(Icons.person_add), label: 'Add user')
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: onDestinationSelectd,
      ),
    );
  }
}
