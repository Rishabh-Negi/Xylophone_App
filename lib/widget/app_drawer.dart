import 'package:Xylophone/theme/app_theme.dart';
import 'package:Xylophone/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: color.length,
          itemBuilder: (context, index) {
            final theme = AppTheme.values[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {
                    Provider.of<ThemeManager>(context, listen: false)
                        .setTheme(theme);
                  },
                  title: Text(
                    enumName(theme),
                    style: GoogleFonts.luckiestGuy(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 0.7,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
