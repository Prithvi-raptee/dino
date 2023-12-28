import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, 'Document'),
      body: const Column(children: [
        DocumentItemWidget(documentUploaded: true, documentTitle: "RC Book"),
        DocumentItemWidget(
            documentUploaded: false, documentTitle: "Driving Licence"),
        DocumentItemWidget(documentUploaded: true, documentTitle: "Insurance")
      ]),
    );
  }
}

class DocumentItemWidget extends StatelessWidget {
  final bool documentUploaded;
  final String documentTitle;
  const DocumentItemWidget(
      {super.key, required this.documentUploaded, required this.documentTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Clr.grey.withOpacity(0.2),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              documentTitle,
              style: Style.fadeTextStyle(fontSize: 12, color: Clr.white),
            ),
            documentUploaded
                ? Text(
                    "Uploaded",
                    style: Style.fadeTextStyle(fontSize: 12, color: Clr.green),
                  )
                : Text(
                    "Not Uploaded",
                    style: Style.fadeTextStyle(fontSize: 12, color: Clr.red),
                  ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
              // width: 40,
              child: documentUploaded
                  ? SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Clr.white.withOpacity(0.1)),
                          onPressed: () {},
                          child: Text(
                            "View",
                            style: Style.fadeTextStyle(color: Clr.white),
                          )),
                    )
                  : const SizedBox(),
            ),
            SizedBox(
              height: 25,
              width: 120,
              // width: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Clr.white.withOpacity(0.1),
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      documentUploaded ? "Upload" : "Re-Upload",
                      style: Style.fadeTextStyle(color: Clr.white),
                    ),
                  )),
            ),
          ],
        )
      ]),
    );
  }
}
