import 'package:flutter/material.dart';

//父控件和子控件混合管理状态的一个demo
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ParentWidget(),
      ),
    );
  }
}

//一个父控件和子控件各自管理状态的demo
class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _activeChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Tapbox(
          active: _active,
          onChange: _activeChange,
        ),
      ),
    );
  }
}

class Tapbox extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChange;

  const Tapbox({Key key, this.active, this.onChange}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TapboxState();
}

class _TapboxState extends State<Tapbox> {
  bool _highlight = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _onTap() {
    widget.onChange(!widget.active);
  }

  void _onTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: _onTap,
      onTapCancel: _onTapCancel,
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(color: Colors.teal[700], width: 10)
              : null,
        ),
      ),
    );
  }
}
