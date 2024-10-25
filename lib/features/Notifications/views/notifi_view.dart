import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:delivery/constants.dart';
import 'package:delivery/core/styles/app_styles.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/Notifications/views/widgets/no_notifi_view.dart';
import 'package:delivery/features/Notifications/views/widgets/notifi_list_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotifiView extends StatefulWidget {
  const NotifiView({super.key});
  static String id = 'NotifiView';

  @override
  State<NotifiView> createState() => _NotifiViewState();
}

class _NotifiViewState extends State<NotifiView> {
  List<Map<String, String>> _notifications = [];
  Timer? _clearNotificationTimer;

  @override
  void initState() {
    super.initState();
    loadNotifications(); // Load notifications when the widget is initialized

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Received Message: ${message.notification?.title}, ${message.notification?.body}');
      if (message.notification != null) {
        String title = message.notification!.title ?? "No Title";
        String body = message.notification!.body ?? "No Body";

        setState(() {
          _notifications.add({'title': title, 'body': body});
        });
        storeNotifications(_notifications);
        startClearNotificationTimer();
      }
    });
  }

  @override
  void dispose() {
    _clearNotificationTimer?.cancel();
    super.dispose();
  }

  Future<void> storeNotifications(List<Map<String, String>> notifications) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> notificationsAsString =
        notifications.map((notification) => jsonEncode(notification)).toList();
    await prefs.setStringList('notifications', notificationsAsString);
    log("Stored Notifications: $notificationsAsString"); // Log to verify storage
  }

  Future<void> loadNotifications() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? storedNotifications = prefs.getStringList('notifications');
    log("Loaded Notifications: $storedNotifications"); // Log to verify loading

    if (storedNotifications != null) {
      try {
        setState(() {
          _notifications = storedNotifications
              .map((notificationString) =>
                  Map<String, String>.from(jsonDecode(notificationString)))
              .toList();
        });
      } catch (e) {
        log("Error decoding notifications: $e");
      }
    }
  }

  void startClearNotificationTimer() {
    _clearNotificationTimer?.cancel();
    _clearNotificationTimer = Timer(const Duration(days: 7), () async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('notifications');
      setState(() {
        _notifications.clear();
      });
      log("Notifications cleared after 7 days");
    });
  }

  Future<void> clearStoredNotifications() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('notifications');
    setState(() {
      _notifications.clear();
    });
    log("Notifications cleared manually");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: orangeColor,
      //   elevation: 0,
      //   bottom: const PreferredSize(
      //     preferredSize: Size.fromHeight(10.0),
      //     child: Divider(),
      //   ),
      //   title: const Text(
      //     'Notifications',
      //     style: AppStyles.styleBold18,
      //   ),
      //   actions: [
      //     PopupMenuButton<String>(
      //       onSelected: (value) async {
      //         if (value == 'clear') {
      //           await clearStoredNotifications();
      //         }
      //       },
      //       itemBuilder: (context) => [
      //         const PopupMenuItem(
      //           value: 'clear',
      //           child: ListTile(
      //             leading: Icon(Icons.clear_all),
      //             title: Text('Clear All'),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: Center(
        child: (_notifications.isNotEmpty)
            ? SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(title: 'Notifications',widget:  PopupMenuButton<String>(
              onSelected: (value) async {
                if (value == 'clear') {
                  await clearStoredNotifications();
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'clear',
                  child: ListTile(
                    leading: Icon(Icons.clear_all),
                    title: Text('Clear All'),
                  ),
                ),
              ],
                        ),),
                    const Divider(),
                    Expanded(
                      child: NotifiListView(
                        notificationsList: _notifications,
                      ),
                    ),
                  ],
                ),
            )
            : const NoNoitifiView(),
      ),
    );
  }
}
