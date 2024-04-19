import 'package:flutter/material.dart';

class SpaceXDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Image topImage = AssetImage('');

    const sneakPeakImageUrl =
        'https://farm5.staticflickr.com/4599/38583829295_581f34dd84_b.jpg';

    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceX'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(topImageUrl),
              const SizedBox(height: 16),
              const Text('TYPE V1.0', style: TextStyle(color: Colors.white)),
              const Text('FIRST STAGE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const Text('Cores: 4', style: TextStyle(color: Colors.white)),
              const Text('SECOND STAGE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const Text('Payloads: 150kg',
                  style: TextStyle(color: Colors.white)),
              const SizedBox(height: 16),
              const Text('LAUNCH STATUS',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const Text('Success', style: TextStyle(color: Colors.white)),
              const Text('DETAILS',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const Text('Last launch of the original Falcon 9 v...',
                  style: TextStyle(color: Colors.white)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.video_library),
                    color: Colors.white,
                    onPressed: () {
                      // Handle YouTube button press
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.chat),
                    color: Colors.white,
                    onPressed: () {
                      // Handle Reddit button press
                    },
                  ),
                ],
              ),
              const Text('SNEAK PEAK',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              Image.network(sneakPeakImageUrl),
            ],
          ),
        ),
      ),
    );
  }
}
