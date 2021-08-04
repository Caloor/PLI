import 'package:flutter/material.dart';
import 'dart:async';



class Delayy extends StatefulWidget {
  final Widget child;
  final int delay;
  const Delayy({required this.delay, required this.child});

  @override
  _DelayyState createState() => _DelayyState();
}

class _DelayyState extends State<Delayy> with
SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset> _animOffset;

  get delay => null;




  @override

  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,
      duration: Duration(milliseconds: 880),
    );

    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _animOffset = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset.zero,

    ).animate(curve);
    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(opacity: _controller,
      child: SlideTransition(
          position: _animOffset,
          child: widget.child,

      ),
    );
  }

}

