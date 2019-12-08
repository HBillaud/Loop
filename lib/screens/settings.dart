import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loop/screens/profile.dart';
import 'package:loop/screens/account.dart';
import 'package:loop/screens/about.dart';
import 'package:loop/screens/help.dart';
import 'package:loop/screens/notifications.dart';
import 'package:loop/widgets/settings_item.dart';
import 'package:loop/widgets/settings_group.dart';

class SettingsScreen extends StatelessWidget {
  SettingsItem _buildProfileItem(BuildContext context) {
    return SettingsItem(
        label: 'Profile',
        icon: Icon(
            CupertinoIcons.profile_circled,
            color: CupertinoColors.black,
        ),
      content:  Row(
        children: [
          Text(''),
          SizedBox(width: 8),
          SettingsNavigationIndicator(),
        ],
      ),
      onPress: () {
          Navigator.of(context).push<void>(
            CupertinoPageRoute(
              builder: (context) => ProfileDetailScreen(),
              title: 'Profile',
            ),
          );
      },
    );
  }

  SettingsItem _buildAccountItem(BuildContext context) {
    return SettingsItem(
        label: 'Account',
        icon: Icon(
            CupertinoIcons.settings,
            color: CupertinoColors.black,
        ),
      content: Row(
        children: [
          Text(''),
          SizedBox(width: 8),
          SettingsNavigationIndicator(),
        ],
      ),
      onPress: () {
          Navigator.of(context).push<void>(
            CupertinoPageRoute(
              builder: (context) => AccountDetailScreen(),
              title: 'Account',
            ),
          );
      },
    );
  }

  SettingsItem _buildNotificationsItem(BuildContext context) {
    return SettingsItem(
      label: 'Notifications',
      icon: Icon(
          CupertinoIcons.conversation_bubble,
          color: CupertinoColors.black,
      ),
      content: Row(
        children: [
          Text(''),
          SizedBox(width: 8),
          SettingsNavigationIndicator(),
        ],
      ),
      onPress: () {
        Navigator.of(context).push<void>(
          CupertinoPageRoute(
            builder: (context) => NotificationsDetailScreen(),
            title: 'Notifications',
          ),
        );
      },
    );
  }

  SettingsItem _buildAboutItem(BuildContext context) {
    return SettingsItem(
      label: 'About',
      icon: Icon(
          CupertinoIcons.info,
          color: CupertinoColors.black,
      ),
      content: Row(
        children: [
          Text(''),
          SizedBox(width: 8),
          SettingsNavigationIndicator(),
        ],
      ),
      onPress: () {
        Navigator.of(context).push<void>(
          CupertinoPageRoute(
            builder: (context) => AboutDetailScreen(),
            title: 'About',
          ),
        );
      },
    );
  }

  // SettingsItem _buildHelpItem(BuildContext context, Preferences prefs)
  SettingsItem _buildHelpItem(BuildContext context) {
    return SettingsItem(
      label: 'Help',
      icon: Icon(
          CupertinoIcons.padlock,
          color: CupertinoColors.black,
      ),
      content: Row(
        children: [
          Text(''),
          SizedBox(width: 8),
          SettingsNavigationIndicator(),
        ],
      ),
      onPress: () {
        Navigator.of(context).push<void>(
          CupertinoPageRoute(
            builder: (context) => HelpDetailScreen(),
            title: 'Help',
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final prefs = ScopeModel.of<Preferences>(context, rebuildOnChange: true);

    return CupertinoPageScaffold(
      child: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Settings'),
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    SettingsGroup(
                      items: [
                        _buildProfileItem(context),
                        _buildAccountItem(context),
                        _buildNotificationsItem(context),
                        _buildAboutItem(context),
                        _buildHelpItem(context),
                      ],
                    ),
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}