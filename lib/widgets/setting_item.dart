import 'dart:async';
import 'package:flutter/cupertino.dart';

typedef SettingsItemCallback = FutureOr<void> Function();

class SettingsNavigationIndicator extends StatelessWidget {
  const SettingsNavigationIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      CupertinoIcons.forward,
      color: CupertinoColors.inactiveGray,
      size: 21,
    );
  }
}

class SettingsItem extends StatefulWidget {
  const SettingsItem({
    @required this.label,
    @required this.icon,
    this.content,
    this.onPress(),
    Key key,
  }) : assert(label != null),
       super(key: key);

  final String label;
  final Widget icon;
  final Widget content;
  final SettingsItemCallback onPress;

  @override
  State<StatefulWidget> createState() => SettingsItemState();
}

class SettingsItemState extends State<SettingsItem> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      // color: pressed ? Styles.settingsItemPressed : Styles.transparentColor,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async {
          if (widget.onPress != null) {
            setState(() {
              pressed = true;
            });
            await widget.onPress();
            Future.delayed(
              Duration(milliseconds: 150),
                  () {
                setState(() {
                  pressed = false;
                });
              },
            );
          }
        },
        child: SizedBox(
          child: Row(
            children: [
              if (widget.icon != null)
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    bottom: 2,
                  ),
                  child: SizedBox(
                    height: 50,
                    width: 29,
                    child: widget.icon,
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: Text(widget.label),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 11),
                child: widget.content ?? Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}