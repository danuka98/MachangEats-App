import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uee/categoryUI.dart';
import 'package:uee/constants.dart';

class PubLocator extends StatelessWidget {
  const PubLocator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: kDarkGrey,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryList()),
                );
              },
            ),
            Text('Pub Locator',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: PubLocatorDetails(),
    );
  }
}
class PubLocatorDetails extends StatefulWidget {
  const PubLocatorDetails({Key? key}) : super(key: key);

  @override
  _PubLocatorDetailsState createState() => _PubLocatorDetailsState();
}

class _PubLocatorDetailsState extends State<PubLocatorDetails> {

  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late GoogleMapController newGoogleMapController;
  late Position currentPosition;

  //initial camera point
  CameraPosition _kCurrentPosition = CameraPosition(
      target: LatLng(7.842919935323958, 80.39694045194067), zoom: 15);

  //current location
  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    currentPosition = position;

    LatLng latLngPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition = new CameraPosition(
      target: latLngPosition,
      zoom: 14,
    );
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  //creating marker list
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  List<MarkerId> listMarkerIds = List<MarkerId>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _kCurrentPosition,
      mapType: MapType.normal,
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      zoomControlsEnabled: true,
      markers: Set<Marker>.of(markers.values),
      onMapCreated: (GoogleMapController controller){
          _controllerGoogleMap.complete(controller);
          newGoogleMapController = controller;

          //locatePosition();

          MarkerId markerId1 = MarkerId("1");
          MarkerId markerId2 = MarkerId("2");
          MarkerId markerId3 = MarkerId("3");
          MarkerId markerId4 = MarkerId("4");

          listMarkerIds.add(markerId1);
          listMarkerIds.add(markerId2);
          listMarkerIds.add(markerId3);
          listMarkerIds.add(markerId4);

          Marker marker1 = Marker(
            markerId: markerId1,
            //position: LatLng(latitudemy, longitudmy),
            position: LatLng(7.482329131938381, 80.3520325124608),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(title: "Machang Kurunegala"),
          );

          Marker marker2 = Marker(
            markerId: markerId2,
            //position: LatLng(latitudeperson1, longitudeperson1),
            position: LatLng(8.036785391106429, 80.7530780290652),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(title: "Machang Habarana"),
          );

          Marker marker3 = Marker(
            markerId: markerId3,
            //position: LatLng(latitudeperson2, longitudeperson2),
            position: LatLng(7.897464483298962, 80.65010749218922),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(title: "Machang Dambulla"),
          );

          Marker marker4 = Marker(
            markerId: markerId4,
            //position: LatLng(latitudeperson3, longitudeperson3),
            position: LatLng(7.363089295086076, 80.54882339745788),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(title: "Machang Hedeniya"),
          );


          setState(() {
            markers[markerId1] = marker1;
            markers[markerId2] = marker2;
            markers[markerId3] = marker3;
            markers[markerId4] = marker4;
          });
      }
    );
  }
}

