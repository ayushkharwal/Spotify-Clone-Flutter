import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_will_name_it_later/models/music.dart';
import 'package:i_will_name_it_later/pages/home_page.dart';
import 'package:i_will_name_it_later/pages/search_page.dart';
import 'package:i_will_name_it_later/pages/your_library.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  // AudioPlayer object
  AudioPlayer audioPlayer = AudioPlayer();
  bool songIsPlaying = false;

  // Bottom nav bar tabs
  var tabs = [];

  int currentTabIndex = 0;
  Music? music;

  // miniPlayer Function
  Widget miniPlayer(Music? music, {bool stop = false}) {
    this.music = music;
    setState(() {});
    if (music == null) {
      return SizedBox();
    }

    if (stop) {
      songIsPlaying = false;
      audioPlayer.stop();
    }
    setState(() {});
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20),
      ),
      duration: Duration(milliseconds: 500),
      height: 50,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            music.image,
            fit: BoxFit.cover,
          ),
          Text(
            music.name,
            style: GoogleFonts.dosis(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () async {
              songIsPlaying = !songIsPlaying;
              if (songIsPlaying) {
                await audioPlayer.play(music.audioUrl);
              } else {
                await audioPlayer.pause();
              }
              setState(() {});
            },
            icon: songIsPlaying
                ? Icon(
                    Icons.pause_rounded,
                    color: Colors.white,
                    size: 40,
                  )
                : Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
          ),
        ],
      ),
    );
  }

  // initState() Function
  @override
  void initState() {
    super.initState();
    tabs = [
      HomePage(miniPlayer),
      SeachPage(),
      LibraryPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // body
      body: tabs[currentTabIndex],

      // bottomNavigationBar
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex) {
              setState(() {
                currentTabIndex = currentIndex;
              });
            },
            selectedLabelStyle: TextStyle(color: Colors.white),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_rounded,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_music_rounded,
                  ),
                  label: 'Your Library'),
            ],
          ),
        ],
      ),
    );
  }
}
