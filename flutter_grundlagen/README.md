# fluttergrundlagen

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<details>
<summary> Flutter Befehle </summary>
<br>
Flutter Commands - Cheat Sheet
Flutter Cheat Sheet
Hier sind die wichtigsten Flutter Commands gelistet mit einer kurzen Beschreibung dazu.
Flutter Commands kannst du entweder im Terminal von deinem Rechner ausführen oder im Terminal in VS-Code.
Sollen die Commands was mit deinem Projekt machen so hilft es im Projekt Ordner zu stehen.

<br>

### Flutter Help:

`$ flutter -h`

Zeigt dir alle commands mit Beschreibung nochmal im Terminal an.

<br>

### Flutter Version:

`$ flutter --version`

Zeigt dir deine Installierte Flutter version an.

<br>

### Flutter Channel:

`$ flutter channel`

Zeigt dir in welchen Channel (Branch) du dich befindest - Standart ist channel stable. Wenn du neue features ausprobieren willst kannst du auch in den Beta channel wechseln.

<br>

### Flutter Doctor:

`$ flutter doctor`

Gibt dir die Information aus, wie es um deine Entwicklungsumgebung steht.

<br>

### Flutter Upgrade:

`$ flutter upgrade`

Damit updatest du auf die neuste Flutter version.

<br>

### Flutter Downgrade:

`$ flutter downgrade <version>` (example: `$ flutter downgrade v2.3.2`)

Damit kannst du auf eine bestimmte Version downgraden.

<br>

### Neues Projekt erstellen:

`$ flutter create <app name>` (example: `$ flutter create "myapp"`)

Erstellt dir ein neues flutter Projekt mit der standard Counter-App.

<br>

### Flutter Emulator:

`$ flutter emulator`

Listet dir alle verfügbaren devices.

<br>

### Flutter Emulator launch:

`$ flutter emulator --launch <emulator_name>`(example `$ flutter emulator --launch myPixel`)

Startet einen bestimmten emulator (Virtual device).

<br>

### Flutter Run:

`$ flutter run`

Startet deine app auf einem virtuellen device (falls vorhanden & gestartet) im debug modus.

<br>

### Flutter Release:

`$ flutter run --release`

Startet deine app auf einem virtuellen device (falls vorhanden & gestartet) im release modus. Installiert also eine ganze APK auf dem handy.

<br>

### Flutter Clean:

`$ flutter clean`

Entfernt die beim builden entstandenen Files aus dem Projekt ( macht sauber ). Kann manchmal bei komischen verhalten helfen. Man muss jedoch oft danach wieder ein $ flutter pub get ausführen.

<br>

### Flutter pub get:

`$ flutter pub get`

Lädt die dependencys im Projekt herunter.


<br>

### Commands für den Debug Modus:

Diese Commands helfen euch wenn ihr die App aus VS-Code im debug modus (flutter run) mit dem Terminal gestartet habt.

<br>

### Großes R:



Startet die app auf den Emulator neu mit den Code Änderungen.

<br>

### Kleines r:

Hot reload: Lädt Code Änderungen life.

<br>

### Q:

Schließt die app (quit). Stoppt debugging.

</details>