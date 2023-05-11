import 'package:flutter/material.dart';

class DownloadedIconShow extends StatelessWidget {
  final bool isDownloaded;

  const DownloadedIconShow({super.key, this.isDownloaded=false});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        borderRadius:
        BorderRadius.all(Radius.circular(3)),
        color: Colors.black45 ,
      ),
      child: (isDownloaded) ?const Icon(
        Icons.download_done,
        color: Colors.white,
      ):const Icon(
        Icons.file_download_outlined,
        color: Colors.white,
      ),
    );
  }
}

class MusicIconShow extends StatelessWidget {
  final bool isMusic;

  const MusicIconShow({super.key,this.isMusic=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius:
        BorderRadius.all(Radius.circular(3)),
        color: Colors.black45,
      ),
      child: (isMusic) ?Icon(
        Icons.headphones,
        color: Colors.white,
      ):Container()
    );
  }
}

