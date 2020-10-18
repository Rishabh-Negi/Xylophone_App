import 'package:Xylophone/theme/app_theme.dart';
import 'package:Xylophone/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _createHeader() => DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 40.0,
              left: 16.0,
              child: Text("Themes",
                  style: GoogleFonts.luckiestGuy(
                      color: Colors.white,
                      fontSize: 30.0,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w500))),
        ]));

    _createItem() =>
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Divider(color: Colors.white, height: 20),
          Tiles(theme: AppTheme.values[0]),
          Tiles(theme: AppTheme.values[1]),
          Tiles(theme: AppTheme.values[2]),
          Tiles(theme: AppTheme.values[3]),
          Tiles(theme: AppTheme.values[4]),
          Tiles(theme: AppTheme.values[5]),
          Tiles(theme: AppTheme.values[6]),
        ]);

    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            _createHeader(),
            _createItem(),
          ],
        ),
      ),
    );
  }
}

class Tiles extends StatelessWidget {
  final AppTheme theme;

  const Tiles({Key key, this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Provider.of<ThemeManager>(context, listen: false).setTheme(theme);
      },
      title: Text(
        enumName(theme),
        style: GoogleFonts.luckiestGuy(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 0.7,
        ),
      ),
      trailing: Container(
        height: 20,
        width: 20,
        color: color[theme][5],
      ),
    );
  }
}
