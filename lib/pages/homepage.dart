import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              // await player.setSourceUrl();
              String urlsource =
                  'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3';

              await player.play(UrlSource(urlsource));
            },
            child: const Text("Click Me"),
          ),
          ElevatedButton(
            onPressed: () async {
              // await player.setSourceUrl();
              String localsource = 'sounds/note1.wav';

              await player.play(DeviceFileSource(localsource));
            },
            child: const Text("Click Me"),
          ),
        ],
      ),
    );
  }
}
