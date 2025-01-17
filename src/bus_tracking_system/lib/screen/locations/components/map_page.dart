import 'package:flutter/material.dart';
import 'package:bus_tracking_system/screen/locations/components/routes/select_routes.dart';

class MapPage extends StatelessWidget {
  final String location;

  MapPage({required this.location});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Map - $location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Map of $location'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Select Route'),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectRoutesPage(
                      location1: 'Current Location',
                      location2: location,
                      timeTaken: 30,
                      startingTime: '8:00',
                      endingTime: '8:30',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
