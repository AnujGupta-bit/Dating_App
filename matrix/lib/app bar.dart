import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController? _controller;
  Position? _currentPosition;

  Future<void> _getCurrentLocation() async {
    _currentPosition =
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    _controller?.animateCamera(CameraUpdate.newLatLng(
      LatLng(_currentPosition!.latitude, _currentPosition!.longitude),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.77483, -122.41942),
              zoom: 12,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              _getCurrentLocation();
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          Positioned(
            bottom: 50,
            right: 10,
            child: FloatingActionButton(
              onPressed: _getCurrentLocation,
              child: Icon(Icons.location_searching),
            ),
          ),
        ],
      ),
    );
  }
}
