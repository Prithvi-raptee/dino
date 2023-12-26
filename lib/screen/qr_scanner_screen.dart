import 'dart:developer';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/charger_connected.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    controller?.pauseCamera();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Charging",
          style: Style.appTitleTextStyle(),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Clr.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        color: Clr.black,
        child: Column(children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "QR SCAN",
                    style: Style.fadeTextStyle(
                        fontSize: 20,
                        fontFamily: AppFont.avenir,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                ),
                Row(
                  children: [
                    Text("Charging Guidline",
                        style: Style.fadeTextStyle(
                            color: Clr.white, fontSize: 10)),
                    const Icon(Icons.arrow_drop_down)
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 4, child: Center(child: _buildQrView(context))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () async {
                                await controller?.toggleFlash();
                                setState(() {});
                              },
                              child: FutureBuilder(
                                  future: controller?.getFlashStatus(),
                                  builder: (context, snapshot) {
                                    if (snapshot.data != null) {
                                      return Column(
                                        children: [
                                          Icon(
                                            snapshot.data!
                                                ? Icons.flash_off
                                                : Icons.flash_on,
                                            color: Clr.white,
                                          ),
                                        ],
                                      );
                                    } else {
                                      return const SizedBox();
                                    }
                                  })),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () async {
                                await controller?.flipCamera();
                                setState(() {});
                              },
                              child: FutureBuilder(
                                future: controller?.getCameraInfo(),
                                builder: (context, snapshot) {
                                  if (snapshot.data != null) {
                                    return Icon(
                                      snapshot.data.toString() == "back"
                                          ? Icons.camera_front
                                          : Icons.camera,
                                      color: Clr.white,
                                    );
                                    // Text(
                                    //     'Camera facing ${describeEnum(snapshot.data!)}');
                                  } else {
                                    return const Text('loading');
                                  }
                                },
                              )),
                        ),
                      ],
                    ),

                    Container(
                      // height: 100,
                      width: 200,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Clr.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          result != null
                              ?
                              // Text(
                              //     'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                              Column(
                                  children: [
                                    Text(
                                      'Connect to:',
                                      style: Style.fadeTextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Clr.white),
                                    ),
                                    Text(
                                      "${result!.code}",
                                      textAlign: TextAlign.center,
                                      style: Style.fadeTextStyle(
                                          color: Clr.white1),
                                    ),
                                  ],
                                )
                              : const Column(
                                  children: [
                                    Text('Searching for QR'),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircularProgressIndicator(
                                        color: Clr.white,
                                      ),
                                    )
                                  ],
                                ),
                          SizedBox(
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Clr.teal),
                                  onPressed: () {
                                    controller?.pauseCamera();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChargerConnectedScreen()));
                                  },
                                  child: const Text(
                                    "Connect",
                                    style: TextStyle(color: Clr.white),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[
                    //     Container(
                    //       margin: const EdgeInsets.all(8),
                    //       child: ElevatedButton(
                    //         onPressed: () async {
                    //           await controller?.pauseCamera();
                    //         },
                    //         child: const Text('pause',
                    //             style: TextStyle(fontSize: 20)),
                    //       ),
                    //     ),
                    //     Container(
                    //       margin: const EdgeInsets.all(8),
                    //       child: ElevatedButton(
                    //         onPressed: () async {
                    //           await controller?.resumeCamera();
                    //         },
                    //         child: const Text('resume',
                    //             style: TextStyle(fontSize: 20)),
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 400.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return Stack(
      children: [
        QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
              overlayColor: Clr.black.withOpacity(0.5),
              borderColor: Clr.teal,
              borderRadius: 40,
              borderLength: 80,
              borderWidth: 5,
              cutOutSize: scanArea),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: scanArea,
            child: Padding(
              padding: EdgeInsets.only(
                  top: scanArea * 0.2,
                  left: scanArea * 0.3,
                  right: scanArea * 0.3),
              child: Text(
                "Please scan the QR code at the charger to start charging",
                textAlign: TextAlign.center,
                style: Style.fadeTextStyle(color: Clr.white, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
