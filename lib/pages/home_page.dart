import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_will_name_it_later/models/category.dart';
import 'package:i_will_name_it_later/models/music.dart';
import 'package:i_will_name_it_later/services/category_operations.dart';
import 'package:i_will_name_it_later/services/music_operations.dart';

class HomePage extends StatelessWidget {
  Function miniPlayer;
  HomePage(this.miniPlayer);

  // createCategory Function
  Widget createCategory(Category category) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              category.name,
              style: GoogleFonts.dosis(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  // createListOfCategory Function
  createListOfCategory() {
    List<Category> categoryList = CategoryOperations.getCategories();
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  // Gridview Function
  Widget createGrid() {
    return Container(
      height: 280,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children: createListOfCategory(),
      ),
    );
  }

  // createMusic Function
  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 200,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                onTap: () {
                  miniPlayer(music, stop: true);
                },
                child: Image.network(
                  music.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              music.name,
              style: GoogleFonts.dosis(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              music.description,
              style: GoogleFonts.dosis(
                fontSize: 16,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // createMusicList Function
  Widget createMusicList(List<Music> music) {
    List<Music> musicList = music;
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: musicList.length,
        itemBuilder: (context, index) {
          return createMusic(musicList[index]);
        },
      ),
    );
  }

  // App Bar Function
  Widget createAppBar(String message) {
    return AppBar(
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        message,
        style: GoogleFonts.dosis(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [Icon(Icons.settings_rounded, size: 30)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey.shade300,
              Colors.purple.shade600,
              Colors.black
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greetings App Bar
              SizedBox(height: 10),

              createAppBar('Good Evening'),

              SizedBox(height: 20),

              // Gridview of mostly played playlists
              createGrid(),

              // Made for u text
              Text(
                'Top Albums',
                style: GoogleFonts.dosis(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 15),

              // createMusicList for albums
              createMusicList(MusicOperations.getAlbums()),

              SizedBox(height: 15),

              // Playlists text
              Text(
                'Playlists',
                style: GoogleFonts.dosis(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 15),

              // createMusicList for playlists
              createMusicList(
                MusicOperations.getPlaylists(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
