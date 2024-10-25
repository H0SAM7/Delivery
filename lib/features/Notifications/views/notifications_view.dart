// import 'package:delivery/constants.dart';
// import 'package:delivery/core/styles/app_styles.dart';
// import 'package:delivery/core/utils/assets.dart';
// import 'package:delivery/features/Notifications/views/widgets/notifi_list_view.dart';
// import 'package:delivery/features/Notifications/views/widgets/notifi_view_item.dart';
// import 'package:flutter/material.dart';

// class NotificationsView extends StatelessWidget {
//   const NotificationsView({super.key});
//   static String id = 'NotificationsView';
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Notifications'),
//           elevation: 0,
//           backgroundColor: Colors.white,
//           bottom: TabBar(
//             unselectedLabelStyle: const TextStyle(color: Color(0xffA5A7B9)),
//             labelColor: orangeColor,
//             indicatorColor: orangeColor,
//             dividerColor: orangeColor,
//             tabs: const <Widget>[
//               Tab(
//                 text: 'Notifications',
//               ),
//               Tab(
//                 text: 'Messages',
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             const Expanded(child: NotifiListView(notificationsList: [],)),
             
//             Container(),
//           ],
//         ),
//       ),
//     );
//   }
// }
