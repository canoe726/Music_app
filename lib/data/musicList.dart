class MusicList {
  List<String> musicPath;
  List<String> title;
  List<String> artist;
  List<String> collapsedImage;
  List<String> artistImage;
  List<String> albumImage;

  MusicList(List<String> musicPath, List<String> title ,List<String> artist, List<String> collapsedImage, List<String> artistImage, List<String> albumImage) {
    this.musicPath = musicPath;
    this.title = title;
    this.artist = artist;
    this.collapsedImage = collapsedImage;
    this.artistImage = artistImage;
    this.albumImage = albumImage;
  }
}

List<String> musicPath = ["assets/music/sample1.mp3", "assets/music/sample2.mp3", "assets/music/sample3.mp3",];
List<String> title = ["빈지노 - 04 Aqua Man", "빈지노 - 05 Summer Madness (Feat. The Quiett)", "빈지노 - 06 I'll Be Back",];
List<String> artist = ["빈지노", "빈지노", "빈지노", ];
List<String> collapsedImage = ["assets/beenzinoAlbum.jpg", "assets/beenzinoAlbum.jpg", "assets/beenzinoAlbum.jpg", ];
List<String> artistImage = ["assets/beenzinoProfile.jpg", "assets/beenzinoProfile.jpg", "assets/beenzinoProfile.jpg", ];
List<String> albumImage = ["assets/beenzinoAlbum.jpg", "assets/beenzinoAlbum.jpg", "assets/beenzinoAlbum.jpg", ];
