import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:music_app/data/musicList.dart';

class MusicPlaySlideUpPanel extends StatefulWidget {
  final MusicList musicList;
  final double sliderHeight;
  MusicPlaySlideUpPanel({Key key, @required this.sliderHeight, this.musicList}) : super(key: key);

  @override
  _MusicPlaySlideUpPanelState createState() => _MusicPlaySlideUpPanelState();
}

class _MusicPlaySlideUpPanelState extends State<MusicPlaySlideUpPanel> {

  PanelController panelController = new PanelController();
  IconData isMusicPlaying = Icons.play_arrow;
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  var currentMusicPosition = 0;

  void _open(int assetIndex) {
    currentMusicPosition = assetIndex % widget.musicList.musicPath.length;
    assetsAudioPlayer.open(widget.musicList.musicPath[currentMusicPosition]);
  }

  void _playPause() {
    assetsAudioPlayer.playOrPause();
  }

  void _next() {
    currentMusicPosition++;

    if(assetsAudioPlayer.playlist != null){
      assetsAudioPlayer.playlistNext();
    } else {
      _open(currentMusicPosition);
    }
  }

  void _prev() {
    currentMusicPosition--;

    if(assetsAudioPlayer.playlist != null){
      assetsAudioPlayer.playlistPrevious();
    } else {
      _open(currentMusicPosition);
    }

    if(currentMusicPosition < 0 ) {
      currentMusicPosition = 0;
    }
  }

  @override
  void dispose() {
    assetsAudioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: panelController,
      color: Colors.white,
      minHeight: kBottomNavigationBarHeight,
      maxHeight: widget.sliderHeight,
      panel: Scaffold(
        appBar: AppBar(
          backgroundColor: globalColors.classicBlue,
          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(widget.musicList.artistImage[currentMusicPosition]),
                backgroundColor: Colors.transparent,
                radius: 18,
              ),
              SizedBox(width: 15),
              Text(
                widget.musicList.artist[currentMusicPosition],
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nanum',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "24:26",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nanum',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {
                panelController.close();
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.musicList.albumImage[currentMusicPosition]),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Text("")),
                Container(
                    color: Colors.grey.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.musicList.title[currentMusicPosition],
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nanum',
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 25,
                      child: IconButton(
                        iconSize: 50,
                        padding: EdgeInsets.all(0),
                        color: Colors.white,
                        icon: Icon(Icons.arrow_left),
                        onPressed:  () {
                          _prev();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 50,
                      child: IconButton(
                        iconSize: 80,
                        padding: EdgeInsets.all(0),
                        color: Colors.white,
                        icon: Icon(isMusicPlaying),
                        onPressed: () {
                          setState(() {
                            if(isMusicPlaying == Icons.play_arrow) {
                              isMusicPlaying = Icons.pause;

                              if(currentMusicPosition == 0 ) {
                                assetsAudioPlayer.openPlaylist(Playlist(assetAudioPaths: widget.musicList.musicPath));
                              } else {
                                _open(currentMusicPosition);
                              }
                            } else {
                              isMusicPlaying = Icons.play_arrow;
                            }
                            _playPause();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 25,
                      child: IconButton(
                        iconSize: 50,
                        padding: EdgeInsets.all(0),
                        color: Colors.white,
                        icon: Icon(Icons.arrow_right),
                        onPressed:  () {
                          _next();
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                StepProgressIndicator(
                  totalSteps: 100,
                  currentStep: 32,
                  size: 6,
                  padding: 0,
                  selectedColor: Colors.red,
                  unselectedColor: Colors.white,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    StreamBuilder(
                      stream: assetsAudioPlayer.currentPosition,
                      initialData: const Duration(),
                      builder: (BuildContext context, AsyncSnapshot<Duration> snapshot) {
                        Duration duration = snapshot.data;
                        return Text(
                          durationToString(duration),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                    Text(
                        " - ",
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    StreamBuilder(
                      stream: assetsAudioPlayer.current,
                      builder: (BuildContext context, AsyncSnapshot<PlayingAudio> snapshot) {
                        Duration duration = Duration();
                        if (snapshot.hasData) {
                          duration = snapshot.data.duration;
                        }
                        return Text(
                          durationToString(duration),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 30,
                                    padding: EdgeInsets.all(0),
                                    color: Colors.white,
                                    icon: Icon(Icons.favorite),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "1125",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 30,
                                    padding: EdgeInsets.all(0),
                                    color: Colors.white,
                                    icon: Icon(Icons.message),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "358",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 30,
                                    padding: EdgeInsets.all(0),
                                    color: Colors.white,
                                    icon: Icon(Icons.info),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "~01.21",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 30,
                                    padding: EdgeInsets.all(0),
                                    color: Colors.white,
                                    icon: Icon(Icons.person),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "~01.02",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      collapsed: Container(
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.musicList.collapsedImage[currentMusicPosition]),
                    backgroundColor: Colors.transparent,
                    radius: 18,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 40,
              child: Text(
                widget.musicList.title[currentMusicPosition],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    icon: Icon(Icons.arrow_left),
                    onPressed: () {
                      _prev();
                    },
                  ),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    icon: Icon(isMusicPlaying),
                    onPressed: () {
                      setState(() {
                        if(isMusicPlaying == Icons.play_arrow) {
                          isMusicPlaying = Icons.pause;

                          if(currentMusicPosition == 0 ) {
                            assetsAudioPlayer.openPlaylist(Playlist(assetAudioPaths: widget.musicList.musicPath));
                          } else {
                            _open(currentMusicPosition);
                          }
                        } else {
                          isMusicPlaying = Icons.play_arrow;
                        }
                        _playPause();
                      });
                    },
                  ),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {
                      _next();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String durationToString(Duration duration) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(Duration.minutesPerHour));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(Duration.secondsPerMinute));
  return "$twoDigitMinutes:$twoDigitSeconds";
}
