import 'dart:io';
import 'package:flutter/material.dart';

class PlatWrapper extends StatelessWidget {
  final Widget material;
  final Widget cupertino;
  const PlatWrapper({Key? key, required this.material, required this.cupertino})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? cupertino : material;
  }
}
