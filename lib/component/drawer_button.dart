import 'package:flutter/material.dart';

class CustDrawerButton extends StatelessWidget {
  const CustDrawerButton({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
