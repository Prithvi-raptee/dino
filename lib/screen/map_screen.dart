import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/secrete/map_my_india_key.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:location/location.dart';
import 'package:mappls_gl/mappls_gl.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late MapplsMapController mapController;
  late Line line;
  late Symbol symbol;
  List<ELocation> _elocation = [];
  bool showAutoSuggestWidget = false;
  TextEditingController textController = TextEditingController();
  List<LatLng> latlng = [
    const LatLng(28.698691, 77.121243),
    const LatLng(28.698791, 77.121243),
    const LatLng(28.698891, 77.121243)
  ];
  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    MapMyIndiaKey.setKey();
    setPermission();
  }

  void setPermission() async {
    if (!kIsWeb) {
      final location = Location();
      final hasPermissions = await location.hasPermission();
      if (hasPermissions != PermissionStatus.granted) {
        await location.requestPermission();
      }
    }
  }

  static const CameraPosition _kInitialPosition = CameraPosition(
    target: LatLng(13.017885, 80.173810),
    zoom: 14.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapplsMap(
            initialCameraPosition: _kInitialPosition,
            myLocationEnabled: true,
            myLocationTrackingMode: MyLocationTrackingMode.NoneCompass,
            zoomGesturesEnabled: true,
            compassEnabled: true,

            compassViewPosition: CompassViewPosition.BottomRight,
            // compassViewMargins: ,
            onMapCreated: (map) => {
              mapController = map,
            },
            onUserLocationUpdated: (location) => {
              print(
                  "Position: ${location.position.toString()}, Speed: ${location.speed}, Altitude: ${location.altitude}")
            },
            onMapClick: (point, latlng) {
              Fluttertoast.showToast(msg: latlng.toString());
              if (kDebugMode) {
                print("Clicked Location: $latlng");
              }
            },
            onStyleLoadedCallback: () {
              // addPolyline();
            },
          ),
          Align(alignment: Alignment.topCenter, child: autosuggestWidget()),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(backgroundColor: Clr.black1),
                    onPressed: () {
                      if (kDebugMode) {
                        print(
                            "latitude: ${mapController.cameraPosition!.target.latitude} longitude: ${mapController.cameraPosition!.target.longitude}");
                      }

                      mapController.animateCamera(CameraUpdate.newLatLngZoom(
                          LatLng(mapController.cameraPosition!.target.latitude,
                              mapController.cameraPosition!.target.longitude),
                          17));
                    },
                    icon: const Icon(
                      Icons.my_location_outlined,
                      color: Clr.teal,
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(backgroundColor: Clr.black1),
                    onPressed: () {
                      mapController.animateCameraWithMapplsPin(
                          CameraMapplsPinUpdate.newMapplsPinZoom("b9c38j", 16));
                    },
                    icon: const Icon(
                      Icons.bookmark,
                      color: Clr.teal,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Clr.black1, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.local_gas_station_outlined,
                      color: Clr.teal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        mapController.moveCamera(CameraUpdate.newLatLngZoom(
                            const LatLng(22.553147478403194, 77.23388671875),
                            14));
                      },
                      child: const Text("Move Fast")),
                  ElevatedButton(
                      onPressed: () {
                        mapController.easeCamera(CameraUpdate.newLatLngZoom(
                            const LatLng(28.704268, 77.103045), 14));
                      },
                      child: const Text("Move Slow")),
                  ElevatedButton(
                      onPressed: () {
                        mapController.animateCamera(CameraUpdate.newLatLngZoom(
                            const LatLng(28.698791, 77.121243), 14));
                      },
                      child: const Text("Move Animation")),
                  ElevatedButton(
                      onPressed: () async {
                        symbol = await mapController.addSymbol(
                            const SymbolOptions(
                                geometry: LatLng(28.698791, 77.121243)));
                      },
                      child: const Text("Add Marker")),
                  ElevatedButton(
                      onPressed: () async {
                        await addImageFromAsset("icon", Dir.bikeImage1);
                        symbol =
                            await mapController.addSymbol(const SymbolOptions(
                                // draggable: true,

                                // iconSize: 50,
                                // iconHaloWidth: 50,

                                geometry: LatLng(25.321684, 82.987289),
                                iconImage: "icon"));
                      },
                      child: const Text("Custom Marker")),
                  ElevatedButton(
                      onPressed: () {
                        mapController.removeSymbol(symbol);
                      },
                      child: const Text("Remove Marker")),
                  ElevatedButton(
                      onPressed: () async {
                        addPolyline();
                      },
                      child: const Text("Add PolyLine")),
                  ElevatedButton(
                      onPressed: () async {
                        mapController.removeLine(line);
                      },
                      child: const Text("Remove PolyLine")),
                  ElevatedButton(
                      onPressed: () async {
                        addPolygon();
                      },
                      child: const Text("Add PolyLine")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  //add poly line to map

  void addPolyline() async {
    List<LatLng> latlng = const <LatLng>[
      LatLng(28.705436, 77.100462),
      LatLng(28.705191, 77.100784),
      LatLng(28.704646, 77.101514),
      LatLng(28.704194, 77.101171),
      LatLng(28.704083, 77.101066),
      LatLng(28.703900, 77.101318)
    ];
    LatLngBounds latLngBounds = boundsFromLatLngList(latlng);
    mapController.animateCamera(CameraUpdate.newLatLngBounds(latLngBounds));
    line = mapController.addLine(
            LineOptions(geometry: latlng, lineColor: "#3bb2d0", lineWidth: 4))
        as Line;
  }

  //Add polygon to the app

  void addPolygon() async {
    List<List<LatLng>> latlng = const [
      <LatLng>[
        LatLng(28.703900, 77.101318),
        LatLng(28.703331, 77.102155),
        LatLng(28.703905, 77.102761),
        LatLng(28.704248, 77.102370),
        LatLng(28.703900, 77.101318),
      ]
    ];
    LatLngBounds latLngBounds = boundsFromLatLngList(latlng.first);
    mapController.animateCamera(CameraUpdate.newLatLngBounds(latLngBounds));
    mapController.addFill(FillOptions(geometry: latlng, fillColor: "#3bb2d0"));
  }

  boundsFromLatLngList(List<LatLng> list) {
    assert(list.isNotEmpty);
    double? x0, x1, y0, y1;
    for (LatLng latLng in list) {
      if (x0 == null || x1 == null || y0 == null || y1 == null) {
        x0 = x1 = latLng.latitude;
        y0 = y1 = latLng.longitude;
      } else {
        if (latLng.latitude > x1) x1 = latLng.latitude;
        if (latLng.latitude < x0) x0 = latLng.latitude;
        if (latLng.longitude > y1) y1 = latLng.longitude;
        if (latLng.longitude < y0) y0 = latLng.longitude;
      }
    }
    return LatLngBounds(
        northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
  }

  //Method to update the auto suggestion list
  void callAutoSuggest(String text) async {
    if (text.length > 2) {
      try {
        AutoSuggestResponse? response =
            await MapplsAutoSuggest(query: text).callAutoSuggest();
        if (response != null && response.suggestedLocations != null) {
          setState(() {
            _elocation = response.suggestedLocations!;
          });
        } else {
          setState(() {
            _elocation = [];
          });
        }
      } catch (e) {
        if (e is PlatformException) {
          Fluttertoast.showToast(msg: '${e.code} --- ${e.message}');
        }
      }
    } else {
      setState(() {
        _elocation = [];
      });
    }
  }

  /// Adds an asset image to the currently displayed style
  addImageFromAsset(String name, String assetName) async {
    final ByteData bytes = await rootBundle.load(assetName);
    final Uint8List list = bytes.buffer.asUint8List();
    return mapController.addImage(name, list);
  }

  void addMarker(ELocation eLocation) async {
    await addImageFromAsset("icon", Dir.logoIcon);
    LatLng latLng = LatLng(eLocation.latitude!, eLocation.longitude!);
    mapController.addSymbol(SymbolOptions(geometry: latLng, iconImage: 'icon'));
    mapController.animateCamera(CameraUpdate.newLatLngZoom(latLng, 14));
  }

  // Widget to show auto suggestion
  Widget autosuggestWidget() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            decoration: BoxDecoration(
                color: Clr.grey1, borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              style: Style.fadeTextStyle(
                  fontWeight: FontWeight.bold, color: Clr.white1),
              controller: textController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Clr.teal,
                  ),
                  border: InputBorder.none,
                  hintText: "Search Here",
                  hintStyle: Style.fadeTextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.black),
              maxLines: 1,
              onChanged: (text) {
                callAutoSuggest(text);
              },
            )),
        const SizedBox(
          height: 10,
        ),
        _elocation.isNotEmpty
            ? Container(
                height: MediaQuery.of(context).size.height * 0.5,
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                decoration: const BoxDecoration(
                  color: Clr.black1,
                ),
                child: ListView.builder(
                    itemCount: _elocation.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        focusColor: Clr.white1,
                        title: Text(_elocation[index].placeName ?? ''),
                        subtitle: Text(
                          _elocation[index].placeAddress ?? '',
                          maxLines: 2,
                        ),
                        onTap: () async {
                          print(_elocation[index].longitude.toString());
                          print(_elocation[index].latitude.toString());
                          print(_elocation[index].mapplsPin.toString());
                          print(_elocation[index].placeAddress.toString());
                          print(_elocation[index].keywords.toString());
                          print(_elocation[index].entryLatitude.toString());
                          print(_elocation[index].entryLongitude.toString());
                          // addMarker(_elocation[index]);

                          mapController.animateCameraWithMapplsPin(
                              CameraMapplsPinUpdate.newMapplsPinZoom(
                                  _elocation[index].mapplsPin.toString(), 14));

                          symbol = await mapController.addSymbol(SymbolOptions(
                            mapplsPin: _elocation[index].mapplsPin.toString(),
                          ));
                          setState(() {
                            _elocation = [];
                          });
                          textController.text = '';
                        },
                      );
                    }))
            : Container()
      ],
    );
  }
}
