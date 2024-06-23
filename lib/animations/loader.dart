import 'package:flutter/material.dart';
import 'package:test_app/constante.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Animation<Color>? valueColor;

  ProgressHUD({
    Key? key,
    required this.child,
    required this.inAsyncCall,
    this.opacity = 0.3,
    this.color = Colors.grey,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    List<Widget> widgetList = [];
    widgetList.add(child);
    if (inAsyncCall) {
      final modal = Stack(children: [
        Opacity(
          opacity: opacity,
          child: const ModalBarrier(dismissible: false, color: kDrawerColor),
        ),
        const Center(
          child: CircularProgressIndicator(color: kBackgroundColor),
        )
      ]);
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
