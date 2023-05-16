import 'package:flutter/material.dart';

import '../constant.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {},
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 90),
                primary: tgradbut1,
                onPrimary: tWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  const Text(
                    "Sydney",
                    style: TextStyle(
                      fontSize: 15,
                      color: tWhite,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            Icons.airplay_rounded,
            color: tWhite,
            size: 45,
          ),
        ],
      ),
    );
  }
}
