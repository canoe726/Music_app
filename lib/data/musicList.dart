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