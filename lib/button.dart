import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonCard extends StatelessWidget {
  final Color buttonColor;
  final int audioFileNo;

  const ButtonCard({Key key, this.buttonColor, this.audioFileNo})
      : super(key: key);

  void playSound(int audioNo) {
    final player = AudioCache();
    player.play('note$audioNo.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 2, 0, 2),
        child: Container(
          child: FlatButton(
            color: buttonColor,
            onPressed: () {
              playSound(audioFileNo);
             debugPrint('$audioFileNo');
            },
          ),
        ),
      ),
    );
  }
}
