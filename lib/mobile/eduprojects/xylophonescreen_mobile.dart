import 'package:portfolio/all_imports.dart';

class XylophoneScreenMobile extends StatelessWidget {
  const XylophoneScreenMobile({super.key});

  void playSound(int soundNumber) {
    // Use the just_audio package to first load the sound and then play it.
    AudioPlayer()
      ..setAsset('assets/sounds/xylophone_note$soundNumber.wav')
      ..play();
  }

  Expanded buildNotekey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: MaterialButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Xylophone'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildNotekey(color: Colors.red, soundNumber: 1),
            buildNotekey(color: Colors.orange, soundNumber: 2),
            buildNotekey(color: Colors.yellow, soundNumber: 3),
            buildNotekey(color: Colors.green, soundNumber: 4),
            buildNotekey(color: Colors.teal, soundNumber: 5),
            buildNotekey(color: Colors.blue, soundNumber: 6),
            buildNotekey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
