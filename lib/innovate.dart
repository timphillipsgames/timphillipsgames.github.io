import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Innovate extends StatelessWidget {
  static const String routeName = '/innovate';
  const Innovate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'waJydC-f5DQ',
    );

    return Scaffold(
        body: Container(
            child: ListView(
      shrinkWrap: true,
      children: [
        Container(
            margin: EdgeInsets.only(
                top: 70,
                left: MediaQuery.of(context).size.width / 7,
                right: MediaQuery.of(context).size.width / 7),
            child: Image.asset(
              'images/i.jpg',
              fit: BoxFit.fitWidth,
            )),
        Container(
          margin: EdgeInsets.only(
              top: 40,
              bottom: 40,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5),
          child: Text('Innovate!',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 40)),
          //alignment: Alignment.center,
        ),
        Container(
          margin: EdgeInsets.only(
              top: 0,
              bottom: 40,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5),
          child: Text(
              "Innovate! is a boardgame commissioned by NESTA, the UK's innovation foundation, that explores innovation policy process. Aimed at an audience of innovation policy makers, players must communicate, collaborate, and share resources in order to tackle a large scale issue such as air quality or data ethics.\n\nI was the lead designer on the project and worked closely with NESTA throughout the games development which was heavily informed by NESTA's own models and understanding of innovation policy process.",
              style: TextStyle(fontSize: 18)),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 0,
              bottom: 40,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5),
          child: YoutubePlayerIFrame(
            controller: _controller,
            aspectRatio: 16 / 9,
          ),
        )
      ],
    )));
  }
}
