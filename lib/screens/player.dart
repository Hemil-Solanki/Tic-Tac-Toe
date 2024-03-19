import 'package:flutter/material.dart';
import 'game.dart'; // Import the GameScreen file

class PlayerName extends StatefulWidget {
  @override
  _PlayerNameState createState() => _PlayerNameState();
}

class _PlayerNameState extends State<PlayerName> {
  TextEditingController player1Controller = TextEditingController();
  TextEditingController player2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Player Names'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: player1Controller,
              decoration: InputDecoration(
                labelText: 'Player 1 Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: player2Controller,
              decoration: InputDecoration(
                labelText: 'Player 2 Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String player1Name = player1Controller.text;
                String player2Name = player2Controller.text;
                if (player1Name.isNotEmpty && player2Name.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(
                        player1Name: player1Name,
                        player2Name: player2Name,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter both player names.'),
                    ),
                  );
                }
              },
              child: Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'game.dart'; // Import the GameScreen file
//
// class PlayerName extends StatefulWidget {
//   @override
//   _PlayerNameState createState() => _PlayerNameState();
// }
//
// class _PlayerNameState extends State<PlayerName> {
//   TextEditingController player1Controller = TextEditingController();
//   TextEditingController player2Controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Enter Names'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: player1Controller,
//               decoration: InputDecoration(
//                 labelText: 'Player 1 Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: player2Controller,
//               decoration: InputDecoration(
//                 labelText: 'Player 2 Name',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 String player1Name = player1Controller.text;
//                 String player2Name = player2Controller.text;
//                 if (player1Name.isNotEmpty && player2Name.isNotEmpty) {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => GameScreen(
//                         player1Name: player1Name,
//                         player2Name: player2Name,
//                       ),
//                     ),
//                   );
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('Please enter both player names.'),
//                     ),
//                   );
//                 }
//               },
//               child: Text('Start Game'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
