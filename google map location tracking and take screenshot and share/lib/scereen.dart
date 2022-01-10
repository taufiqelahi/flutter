import 'dart:async';

import 'dart:io';
import 'dart:typed_data';


import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';


class Mapscreen extends StatefulWidget {
  const Mapscreen({ Key? key}) : super(key: key);

  @override
  _MapscreenState createState() => _MapscreenState();

}


class _MapscreenState extends State<Mapscreen> {
  Completer<GoogleMapController> _controller = Completer();
  final _screenshotController = ScreenshotController();
  late GoogleMapController newGooleMapController;
  late  Position currentposition;
 late Marker marker;
  var geolocator=Geolocator();

  void locatePosition()async{

    Position position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentposition=position;
    LatLng latlanposition=LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition= new CameraPosition(target:latlanposition,zoom: 14 );
    newGooleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));


  }



  static final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746);

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: _screenshotController,
      child: Scaffold(
        appBar:AppBar(
          title: Text('Google map'),

        ),
  body: GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _kGooglePlex,
      myLocationEnabled: true,
      zoomControlsEnabled: true,
      zoomGesturesEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
        locatePosition();

      },






  ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()async{
            final image=await _screenshotController.capture();
            shareimage(image!);


          },
          child: Icon(Icons.camera),
        ),



      ),

    );


  }

  Future shareimage(Uint8List bytes) async{
    final directory = await getApplicationDocumentsDirectory();
    final image=File('${directory.path}/flutterimage.png');
    image.writeAsBytesSync(bytes);
    await Share.shareFiles([image.path]);

  }




}


