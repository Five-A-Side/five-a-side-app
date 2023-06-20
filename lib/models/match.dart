class Match {
  final String matchId;
  final String teamName;
  final String teamBadge;
  final String location;
  final DateTime startsAt;
  final int confirmedPlayers;
  final int maxPlayers;

  Match(
      {required this.matchId,
      required this.teamName,
      required this.teamBadge,
      required this.location,
      required this.startsAt,
      required this.confirmedPlayers,
      required this.maxPlayers});

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      matchId: json['match_id'],
      teamName: json['team_name'],
      teamBadge: json['team_badge'],
      location: json['location'],
      startsAt: DateTime.parse(json['starts_at']).toLocal(),
      confirmedPlayers: int.parse(json['confirmed_players']),
      maxPlayers: int.parse(json['max_players']),
    );
  }
}
