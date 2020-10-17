import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/theme_data.dart';
import 'widget/app_drawer.dart';
import 'button.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeManager>(
      create: (_) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, value, _) {
          return MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.black,
              body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                      7,
                      (index) => ButtonCard(
                          buttonColor: value.theme[index],
                          audioFileNo: index + 1)),
                ),
              ),
              drawer: AppDrawer(),
            ),
          );
        },
      ),
    );
  }
}
