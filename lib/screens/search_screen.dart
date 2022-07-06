import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../utils/geo_location.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  late CameraPosition cameraPosition;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GeoLocation.getLocation(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasData) {
          cameraPosition = CameraPosition(
            target: LatLng(snapshot.data.latitude, snapshot.data.longitude),
            zoom: 18,
          );
        } else {
          cameraPosition = const CameraPosition(
            target: LatLng(13.736717, 100.523186),
            zoom: 18,
          );
        }

        return SafeArea(
          child: GoogleMap(
            initialCameraPosition: cameraPosition,
            onMapCreated: _onMapCreated,
          ),
        );
      },
    );
  }
}
