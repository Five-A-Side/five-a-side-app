import 'package:five_a_side_app/models/match.dart';
import 'package:five_a_side_app/widgets/match_card.dart';
import 'package:flutter/material.dart';

import 'package:five_a_side_app/widgets/carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Match> matches = [
    Match(
      matchId: "D47H1L",
      teamName: "Benfica",
      teamBadge:
          "https://upload.wikimedia.org/wikipedia/pt/f/f0/500px-SL_Benfica_logo_svg.png",
      location: "Maia, Porto",
      startsAt: DateTime.parse("2023-06-20T21:30:00.000Z"),
      confirmedPlayers: 12,
      maxPlayers: 12,
    ),
    Match(
      matchId: "G33H5J",
      teamName: "Vitória S.C.",
      teamBadge:
          "https://upload.wikimedia.org/wikipedia/en/thumb/d/d5/Vit%C3%B3ria_Guimar%C3%A3es.svg/1200px-Vit%C3%B3ria_Guimar%C3%A3es.svg.png",
      location: "Maia, Porto",
      startsAt: DateTime.parse("2023-06-21T21:00:00.000Z"),
      confirmedPlayers: 8,
      maxPlayers: 12,
    ),
    Match(
      matchId: "R34JC1",
      teamName: "Five-A-Side",
      teamBadge: "https://i.imgur.com/LQe6qhX.png",
      location: "Matosinhos, Porto",
      startsAt: DateTime.parse("2023-08-21T21:30:00.000Z"),
      confirmedPlayers: 17,
      maxPlayers: 22,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Carousel(
          children: matches.map((match) => MatchCard(match: match)).toList(),
        ),
      ),
    );
  }
}
