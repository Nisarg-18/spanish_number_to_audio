import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'NumberAudio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio(
        audioUri: "one.wav", buttonColor: Colors.amber, buttonText: "one"),
    NumberAudio(
        audioUri: "two.wav", buttonColor: Colors.blue, buttonText: "two"),
    NumberAudio(
        audioUri: "three.wav", buttonColor: Colors.pink, buttonText: "three"),
    NumberAudio(
        audioUri: "four.wav", buttonColor: Colors.green, buttonText: "four"),
    NumberAudio(
        audioUri: "five.wav", buttonColor: Colors.grey, buttonText: "five"),
    NumberAudio(
        audioUri: "six.wav", buttonColor: Colors.teal, buttonText: "six"),
    NumberAudio(
        audioUri: "seven.wav", buttonColor: Colors.orange, buttonText: "seven"),
    NumberAudio(
        audioUri: "eight.wav", buttonColor: Colors.purple, buttonText: "eight"),
    NumberAudio(
        audioUri: "nine.wav", buttonColor: Colors.red, buttonText: "nine"),
    NumberAudio(
        audioUri: "ten.wav", buttonColor: Colors.yellow, buttonText: "ten"),
  ];

  playAudio(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    // using gridview.builder()
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Spanish Audio")),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset('images/logo.png', height: 170, width: 170),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  itemCount: numberList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 2.0),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 50.0,
                      width: 100.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: numberList[index].buttonColor,
                        ),
                        onPressed: () {
                          playAudio(numberList[index].audioUri);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              numberList[index].buttonText,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.audiotrack,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //using rows
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Center(child: Text("Spanish Audio")),
    //   ),
    //   body: Container(
    //     child: Center(
    //       child: Column(
    //         children: [
    //           Image.asset('images/logo.png'),
    //           Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[0].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[0].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[0].audioUri);
    //                     },
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[1].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[1].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[1].audioUri);
    //                     },
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[2].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[2].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[2].audioUri);
    //                     },
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[3].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[3].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[3].audioUri);
    //                     },
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[4].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[4].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[4].audioUri);
    //                     },
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[5].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[5].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[5].audioUri);
    //                     },
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[6].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[6].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[6].audioUri);
    //                     },
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[7].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[7].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[7].audioUri);
    //                     },
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[8].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[8].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[8].audioUri);
    //                     },
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 60.0,
    //                   width: 120.0,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: numberList[9].buttonColor,
    //                     ),
    //                     child: Text(
    //                       numberList[9].buttonText,
    //                       style: TextStyle(
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     onPressed: () {
    //                       playAudio(numberList[9].audioUri);
    //                     },
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
