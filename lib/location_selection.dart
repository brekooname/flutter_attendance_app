import 'package:attendance/add_north.dart';
import 'package:attendance/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: location_selection()));
}

class location_selection extends StatefulWidget {
  const location_selection({Key? key}) : super(key: key);

  @override
  State<location_selection> createState() => _location_selectionState();
}

class _location_selectionState extends State<location_selection> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Taeguek Taekwondo Attendance"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mats2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/kukkiwon_logo.png"),
                Image.asset("assets/new-logo.png"),
                Image.asset("assets/wt_logo.png"),
              ],
            ),
            SizedBox(height: 15.0),
            SansText("Taeguek Taekwondo Attendance", 50.0),
            SizedBox(height: 15.0),
            SansText("Please select location below to begin", 25.0),
            SizedBox(height: 15.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 12.0,
                        offset: Offset(4, 4),
                      )
                    ],
                  ),
                  child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Attendance(),
                        ),
                      );
                    },
                    child: Text(
                      "North",
                      style: GoogleFonts.openSans(
                          fontSize: 30.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 12.0,
                        offset: Offset(4, 4),
                      )
                    ],
                  ),
                  child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "West",
                      style: GoogleFonts.openSans(
                          fontSize: 30.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 12.0,
                        offset: Offset(4, 4),
                      )
                    ],
                  ),
                  child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "South",
                      style: GoogleFonts.openSans(
                          fontSize: 30.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 12.0,
                        offset: Offset(4, 4),
                      )
                    ],
                  ),
                  child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Windermere",
                      style: GoogleFonts.openSans(
                          fontSize: 30.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
