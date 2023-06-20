import 'dart:io';

import 'package:flutter/material.dart';

import 'package:five_a_side_app/models/match.dart';
import 'package:five_a_side_app/widgets/pill.dart';
import 'package:intl/intl.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key, required this.match});

  final Match match;

  @override
  Widget build(BuildContext context) {
    final bool is24HoursFormat = MediaQuery.of(context).alwaysUse24HourFormat;

    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      elevation: 0,
      shadowColor: const Color(0xff042B52),
      color: Colors.greenAccent[100],
      child: SizedBox(
        width: 260,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  // TODO - @joaorbfc move to design system package (Create respective headings)
                  Text(
                    match.teamName.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  // TODO - @joaorbfc is this the best way to display localized hour minute? Should we do .toLocal() on the DateTime?
                  Pill(is24HoursFormat
                      ? '${DateFormat.Hm(Platform.localeName).format(match.startsAt)}h'
                      : DateFormat.jm(Platform.localeName)
                          .format(match.startsAt))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Container(
  //       decoration: const BoxDecoration(
  //         boxShadow: [
  //           BoxShadow(
  //             offset: Offset(0, 8),
  //             blurRadius: 30,
  //             color: Color(0xff042B52),
  //           )
  //         ],
  //       ),
  //       child: Card(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(24),
  //         ),
  //         shadowColor: const Color(0xff042B52),
  //         color: Colors.greenAccent[100],
  //         child: SizedBox(
  //           width: 230,
  //           height: 160,
  //           child: Padding(
  //             padding: const EdgeInsets.all(30.0),
  //             child: Column(
  //               children: [
  //                 Text(
  //                   match.teamName,
  //                   style: const TextStyle(
  //                     fontSize: 16,
  //                     fontWeight: FontWeight.w600,
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 const Text(
  //                   'Body',
  //                   style: TextStyle(
  //                     fontSize: 15,
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 const Text(
  //                   'Footer',
  //                   style: TextStyle(
  //                     fontSize: 15,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
