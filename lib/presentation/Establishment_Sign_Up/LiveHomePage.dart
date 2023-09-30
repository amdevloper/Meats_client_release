import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveHomePage extends StatefulWidget {
  const LiveHomePage({super.key});

  @override
  State<LiveHomePage> createState() => _LiveHomePageState();
}

class _LiveHomePageState extends State<LiveHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed:
                  () {
                    jumpToLivePage(context, isHost: true);
                  },
                  child: const Text("Start a live")),
              ElevatedButton(
                  onPressed: () {
                    jumpToLivePage(context, isHost: false);
                  }, child: const Text("Watch a live")),

            ],
          ),
        ),
      ),
    );
  }
}

jumpToLivePage(BuildContext context, {required bool isHost}){
  Navigator.push(context, MaterialPageRoute(builder: (context) => LivePage(isHost: isHost,)));

}


class LivePage extends StatelessWidget {
  const LivePage({Key? key, this.isHost = false}) : super(key: key);
  final bool isHost;

  @override
  Widget build(BuildContext context) {
    var value = Random().nextInt(100000).toString();
    return ZegoUIKitPrebuiltLiveStreaming(
      appID: 1690788091,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "1697b7a126341818830b4ae9babcd4c87fa45f8ea010dc97ec705021f6b48669",// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: value,
      userName: 'Amit Mane _$value',
      liveID: "1",
      config: isHost
          ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
          : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
    );
  }
}
