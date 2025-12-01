import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {
  const GoogleMapScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Google Map',
          style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          zoom: 19,
          target: LatLng(29.9668, 32.5498),
        ),
      ),

    );
  }
}
