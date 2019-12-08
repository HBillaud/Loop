import 'package:flutter/cupertino.dart';
import 'settings_item.dart';

class SettingsGroup extends StatelessWidget {
  SettingsGroup({
    @required this.items,
  }) : assert(items != null);

  final List<SettingsItem> items;

  @override
  Widget build(BuildContext context) {
    final dividedItems = <Widget>[items[0]];

    for (int i = 1; i < items.length; i++) {
      dividedItems.add(Container(
        color: CupertinoColors.black,
        height: 0.3,
      ));
      dividedItems.add(items[i]);
    }

    return Padding(
      padding: EdgeInsets.only(
          top: 35,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              border: Border(
                top: const BorderSide(
                  color: CupertinoColors.black,
                  width: 0,
              ),
                bottom: const BorderSide(
                  color: CupertinoColors.black,
                  width: 0,
                ),
            ),
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: dividedItems,
            ),
          ),
        ],
      ),
    );
  }
}