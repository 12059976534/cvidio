import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

 class datavidio{

  late var video;

  datavidio({this.video});

  late BetterPlayerController _betterPlayerController;
  late BetterPlayerDataSource _betterPlayerDataSource;

  play() async {
    // widget.title = data.title;
    _betterPlayerController.stopPreCache(_betterPlayerDataSource);
    _betterPlayerController.clearCache();
    _betterPlayerController.pause();

    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      // autoPlay: true,
      looping: true,
    );
    _betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      video,
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(_betterPlayerDataSource);
  }
}
