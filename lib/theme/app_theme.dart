import 'package:flutter/material.dart';

enum AppTheme {
  Rainbow,
  Red,
  Orange,
  Yellow,
  Green,
  Teal,
  Blue,
  Purple,
}

String enumName(AppTheme appTheme) {
  return appTheme.toString().split('.')[1];
}

final color = {
  AppTheme.Rainbow: [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ],
  AppTheme.Red: [
    Colors.red[50],
    Colors.red[100],
    Colors.red[200],
    Colors.red[300],
    Colors.red[400],
    Colors.red,
    Colors.red[600],
    Colors.red[700],
  ],
  AppTheme.Orange: [
    Colors.orange[50],
    Colors.orange[100],
    Colors.orange[200],
    Colors.orange[300],
    Colors.orange[400],
    Colors.orange,
    Colors.orange[600],
    Colors.orange[700],
  ],
  AppTheme.Yellow: [
    Colors.yellow[50],
    Colors.yellow[100],
    Colors.yellow[200],
    Colors.yellow[300],
    Colors.yellow[400],
    Colors.yellow,
    Colors.yellow[600],
    Colors.yellow[700],
  ],
  AppTheme.Green: [
    Colors.green[50],
    Colors.green[100],
    Colors.green[200],
    Colors.green[300],
    Colors.green[400],
    Colors.green,
    Colors.green[600],
    Colors.green[700],
  ],
  AppTheme.Teal: [
    Colors.teal[50],
    Colors.teal[100],
    Colors.teal[200],
    Colors.teal[300],
    Colors.teal[400],
    Colors.teal,
    Colors.teal[600],
    Colors.teal[700],
  ],
  AppTheme.Blue: [
    Colors.blue[50],
    Colors.blue[100],
    Colors.blue[200],
    Colors.blue[300],
    Colors.blue[400],
    Colors.blue,
    Colors.blue[600],
    Colors.blue[700],
  ],
  AppTheme.Purple: [
    Colors.purple[50],
    Colors.purple[100],
    Colors.purple[200],
    Colors.purple[300],
    Colors.purple[400],
    Colors.purple,
    Colors.purple[600],
    Colors.purple[700],
  ],
};
