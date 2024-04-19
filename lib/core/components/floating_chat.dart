// import 'package:draggable_expandable_fab/draggable_expandable_fab.dart';
// import 'package:flutter/material.dart';
// import 'package:team/chat_screen/widgets/chat_screen_body.dart';

// class FloatingChat extends StatelessWidget {
//   const FloatingChat({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ExpandableDraggableFab(
//       openWidget: Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(boxShadow: [
//             BoxShadow(
//               color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
//               spreadRadius: 0,
//               blurRadius: 5,
//               // offset: const Offset(0, 3),
//             ) // changes position of shadow
//           ], color: Colors.blue, borderRadius: BorderRadius.circular(30)),
//           child: const Icon(
//             Icons.sentiment_very_satisfied,
//             color: Colors.white,
//           )),
//       closeWidget: Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(boxShadow: [
//             BoxShadow(
//               color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
//               spreadRadius: 0,
//               blurRadius: 5,
//               // offset: const Offset(0, 3),
//             ) // changes position of shadow
//           ], color: Colors.red, borderRadius: BorderRadius.circular(30)),
//           child: const Icon(
//             Icons.close,
//             color: Colors.white,
//           )),

//       childrenCount: 1,
//       onTab: () {
//         debugPrint("Tab");
//       },

//       childrenBoxDecoration: BoxDecoration(),
//       childrenType: ChildrenType.rowChildren,
//       closeChildrenRotate: true,
//       childrenAlignment: Alignment.bottomCenter,
//       distance: 5, // Animation distance during open and close.
//       children: [
//         BottomSheet(
//             enableDrag: false,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(5),
//             ),
//             onClosing: () {},
//             builder: (context) {
//               return Container(
//                 height: MediaQuery.sizeOf(context).height / 4,
//                 width: MediaQuery.sizeOf(context).width,
//                 padding: EdgeInsets.all(12),
//                 child: ChatScreenBody(),
//               );
//             })
//       ],
//     );
//   }
// }
