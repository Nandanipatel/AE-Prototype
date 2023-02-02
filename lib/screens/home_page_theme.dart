import 'package:ae_events/provider/Dark-Light-Mode/theme_provider.dart';
import 'package:ae_events/screens/profile.dart';
import 'package:ae_events/widgets/changeTheme_Button.dart';
import 'package:ae_events/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    const String title = 'Profile';
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Color.fromARGB(0, 244, 67, 54),
        // leading: Icon(Icons.menu),
        title: Text(title),
        actions: [
          ChangeThemeButton(),
        ],
      ),
      body: Profile(),
      extendBody: true,
      bottomNavigationBar: Navigation(),
    );
  }
}
