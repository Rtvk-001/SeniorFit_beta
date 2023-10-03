import 'package:flutter/material.dart';

class LeaderboardItem {
  final String name;
  final String profileImageUrl;
  final int score;

  LeaderboardItem({
    required this.name,
    required this.profileImageUrl,
    required this.score,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LeaderboardScreen(),
    );
  }
}

class LeaderboardScreen extends StatefulWidget {
  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final List<LeaderboardItem> leaderboardData = [
    LeaderboardItem(
      name: 'John Doe',
      profileImageUrl: 'assets/profiles/profile1.jpg',
      score: 1000,
    ),
    LeaderboardItem(
      name: 'Alice Smith',
      profileImageUrl: 'assets/profiles/profile2.jpg',
      score: 800,
    ),
    LeaderboardItem(
      name: 'Bob Johnson',
      profileImageUrl: 'assets/profiles/profile3.jpg',
      score: 750,
    ),
    // Add more leaderboard items here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: ListView.builder(
        itemCount: leaderboardData.length,
        itemBuilder: (BuildContext context, int index) {
          return LeaderboardListItem(
            item: leaderboardData[index],
            rank: index + 1,
          );
        },
      ),
    );
  }
}

class LeaderboardListItem extends StatelessWidget {
  final LeaderboardItem item;
  final int rank;

  LeaderboardListItem({
    required this.item,
    required this.rank,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(item.profileImageUrl),
        radius: 30,
      ),
      title: Text(
        '${rank.toString()}. ${item.name}',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Score: ${item.score.toString()}',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
