import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NoroiCard(),
  debugShowCheckedModeBanner: false,
));

class NoroiCard extends StatefulWidget {
  const NoroiCard({super.key});

  @override
  State<NoroiCard> createState() => _NoroiCardState();
}

class _NoroiCardState extends State<NoroiCard> {

  int noroilevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/sukuna1.jpg'),
          ),
        ),
        backgroundColor: Colors.redAccent,
        title: Text(
          "呪いアイディーカード",
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Jap',
          fontSize: 23.0,
        ),
        centerTitle: true,
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                noroilevel -= 1;
                if(noroilevel<=0){
                  noroilevel = 0;
                }
              });
            },
            child: Text(
              "-",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            backgroundColor: Colors.redAccent[200],
          ),
          SizedBox(width: 5.0,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                noroilevel += 1;
                if(noroilevel > 20){
                  noroilevel = 0;
                }
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.redAccent[200],
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sukuna1.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(height: 40.0, color: Colors.amber, thickness: 2.0,),
            Text(
              "なまえ:",
              style: TextStyle(
                fontFamily: 'Jap',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "りょうめんすくな",
              style: TextStyle(
                fontFamily: 'Jap',
                fontSize: 20.0,
              ),
            ),
            Divider(height: 40.0, thickness: 2.0, color: Colors.amber,),
            Text(
              "呪いきゅ:",
              style: TextStyle(
                fontFamily: 'Jap',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "$noroilevel",
              style: TextStyle(
                fontFamily: 'Jap',
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(
                  Icons.mail_outline_outlined,
                ),
                SizedBox(width:5.0,),
                Text(
                  "ryoumen.sukuna@mail.com",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}


// class NinjaCard extends StatelessWidget {
//   const NinjaCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[700],
//       appBar: AppBar(
//         backgroundColor: Colors.greenAccent,
//         elevation: 0.0,
//         title: Center(
//           child: Text(
//             "Ninja ID Card App",
//             style: TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         )
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
//
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/natsu-ss.png'),
//               radius: 40.0,
//             ),
//             Divider(
//               height: 40.0,
//               color: Colors.greenAccent,
//             ),
//             Text(
//               "NAME:",
//               style: TextStyle(
//                 color: Colors.black,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 5.0),
//             Text(
//               "DEV",
//               style: TextStyle(
//                 color: Colors.amberAccent,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25.0,
//               ),
//             ),
//             SizedBox(height: 15.0),
//             Text(
//               "CURRENT NINJA LEVEL:",
//               style: TextStyle(
//                 color: Colors.black,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 5.0),
//             Text(
//               "VIII",
//               style: TextStyle(
//                 color: Colors.amberAccent,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25.0,
//               ),
//             ),
//             SizedBox(height: 15.0),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.mail_outline_sharp,
//                   color: Colors.amberAccent,
//                 ),
//                 SizedBox(width: 5.0,),
//                 Text(
//                   "dev@gmail.com",
//                   style: TextStyle(
//                     color: Colors.amberAccent,
//                     letterSpacing: 1.0,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

