import 'dart:async';

import '20a_streams.dart';

void main() {
  NumberGenerator gen = NumberGenerator();

  Stream numberStream = gen.getStream.asBroadcastStream();
  //! broadcast -> ermöglicht mehrere subscriber
  StreamSubscription sub1 = numberStream.listen((event) {
    print(event);
  }, onDone: () {
    print("Steam beendet!");
  }, //! was soll passieren wenn stream geschlossen
      onError: (error) {
    print("Stream hat einen Error!");
  }, //! was soll bei einem error passieren
      cancelOnError: false //! hey ich will nach einen error weiter zuhören
      );
  /* 
  sub1.pause(); //!pause
  sub1.resume(); //!weiter
  sub1.cancel(); //! subscription beenden 
  */

  StreamSubscription sub2 = numberStream.listen((event) {
    print("sub2  :  $event");
  });
}
