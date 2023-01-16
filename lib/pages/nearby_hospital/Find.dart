import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:internship/entity/hospital.dart';
import 'package:internship/service/addmarker.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context);
    final markerservice = MarkerService();

    Future<List<Hospital>> fetchPlace() async {
      List<Hospital> lists = [];
      if (currentPosition != null) {
        var key = 'htzSgCtjLGyh5lzVFv6qw5vbINrNp4df',
            lat = currentPosition.latitude.toString(),
            lng = currentPosition.longitude.toString();
        var radius = '10000000';
        var url =
            'https://api.tomtom.com/search/2/search/hospital.json?key=$key&limit=30&lat=$lat&lon=$lng&radius=$radius';
        var response =
            await http.get(url, headers: {'Accept': 'application/json'});
        var jsonuse = json.decode(response.body);
        var listsjson = jsonuse['results'];
        for (var h in listsjson) {
          var poi = h['poi'];
          var name = poi['name'];
          var score = h['score'];
          var dist = h['dist'];
          var pos = h['position'];
          var lat = pos['lat'];
          var lng = pos['lon'];
          var addpoi = h['address'];
          var add = addpoi['freeformAddress'];
          var id = h['id'];
          Hospital vari = Hospital(name, score, dist, lat, lng, add, id);
          lists.add(vari);
        }
      }
      return lists;
    }

    return Scaffold(
      body: Container(
          child: (currentPosition != null)
              ? FutureBuilder(
                  future: fetchPlace(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    var markers = (snapshot.data != null)
                        ? markerservice.getMarkers(snapshot.data)
                        : List<Marker>();
                    return (snapshot.data != null)
                        ? Column(
                            children: <Widget>[
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                width: MediaQuery.of(context).size.width,
                                child: GoogleMap(
                                  initialCameraPosition: CameraPosition(
                                      target: LatLng(currentPosition.latitude,
                                          currentPosition.longitude),
                                      zoom: 16),
                                  zoomControlsEnabled: true,
                                  myLocationEnabled: true,
                                  markers: Set<Marker>.of(markers),
                                ),
                              ),
                              Expanded(
                                  child: ListView.builder(
                                      itemCount: snapshot.data.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Card(
                                          child: ListTile(
                                            title:
                                                Text(snapshot.data[index].name),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    RatingBarIndicator(
                                                      rating: snapshot
                                                          .data[index].score,
                                                      itemBuilder: (context,
                                                              index) =>
                                                          Icon(Icons.star,
                                                              color:
                                                                  Colors.amber),
                                                      itemCount: 5,
                                                      itemSize: 20.0,
                                                      direction:
                                                          Axis.horizontal,
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                ((snapshot.data[index].dist) <
                                                        1000)
                                                    ? Text(
                                                        '${snapshot.data[index].freeformAddress} \u00b7 ${(snapshot.data[index].dist).round()} Meters')
                                                    : Text(
                                                        '${snapshot.data[index].freeformAddress} \u00b7 ${double.parse((snapshot.data[index].dist / 1000).toStringAsFixed(2))} Kms'),
                                              ],
                                            ),
                                            trailing: IconButton(
                                              icon: Icon(Icons.directions),
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              onPressed: () {
                                                _launchMaps(
                                                    snapshot.data[index].lat,
                                                    snapshot.data[index].lng);
                                              },
                                            ),
                                            onTap: () {
                                              _launchMaps(
                                                  snapshot.data[index].lat,
                                                  snapshot.data[index].lng);
                                            },
                                          ),
                                        );
                                      }))
                            ],
                          )
                        : Container(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
    );
  }

  void _launchMaps(double lat, double lng) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
