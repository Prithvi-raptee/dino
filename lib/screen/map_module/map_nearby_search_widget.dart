import 'dart:convert';

import 'package:dino/constant/directory.dart';
import 'package:dino/secrete/map_my_india_key.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:mappls_nearby_plugin/mappls_nearby_plugin.dart';
import 'package:mappls_gl/mappls_gl.dart';

class NearBySearchWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<NearBySearchWidget> {
  NearbyResult? _nearbyResult;
  late ByteData bytes;
  late Uint8List list;

  @override
  void initState() {
    super.initState();
    MapMyIndiaKey.setKey();
    _nearbyResult = NearbyResult();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // setImage();
    });
  }

  // Future<void> setImage() async {
  //   bytes = await rootBundle.load(Dir.chargeIcon);
  //   list = bytes.buffer.asUint8List();
  // }

  void openMapplsNearbyWidget() async {
    NearbyResult nearbyResult;

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      nearbyResult = await openNearbyWidget(
          nearbyOption: NearbyOption(),
          categories: [
            // CategoryCode()
          ],
          nearbyUIOption: NearbyUIOption(
            categoryIconColor: "#FF0000",
          ));
    } on PlatformException {
      nearbyResult = NearbyResult();
    }
    print(json.encode(nearbyResult.toJson()));

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _nearbyResult = nearbyResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Nearby Plugin example'),
          ),
          body: Center(
              child: Column(children: [
            SizedBox(height: 20),
            Text(_nearbyResult?.distance == null
                ? 'Distance: '
                : 'Distance: ${_nearbyResult?.distance}'),
            SizedBox(height: 20),
            Text(_nearbyResult?.mapplsPin == null
                ? 'ELoc: '
                : 'ELoc: ${_nearbyResult?.mapplsPin}'),
            SizedBox(height: 20),
            Text(_nearbyResult?.placeName == null
                ? 'Place Name: '
                : 'Place Name: ${_nearbyResult?.placeName}'),
            SizedBox(height: 20),
            Text(_nearbyResult?.placeAddress == null
                ? 'Place Address: '
                : 'Place Address: ${_nearbyResult?.placeAddress}'),
            SizedBox(height: 20),
            Text(_nearbyResult?.orderIndex == null
                ? 'Index: '
                : 'Index: ${_nearbyResult?.orderIndex}'),
            SizedBox(height: 20),
            TextButton(
                child: Text('Open Nearby Search Widget'),
                onPressed: () => {
                      openMapplsNearbyWidget(),
                    })
          ]))),
    );
  }
}
