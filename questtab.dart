import 'package:flutter/material.dart';

class QuestsTab extends StatelessWidget {
  const QuestsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quests & Achievements'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.deepPurple],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Daily Progress',
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '3 / 5 Quests',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white24,
                    child: const Text(
                      '60%',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Daily Quests',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildQuestItem(
              'Log Morning Temperature',
              'Complete',
              50,
              true,
              Icons.check_circle,
            ),
            _buildQuestItem(
              'Maintain Optimal Humidity',
              'Complete',
              100,
              true,
              Icons.check_circle,
            ),
            _buildQuestItem(
              'Read Educational Content',
              'In Progress',
              75,
              false,
              Icons.book,
            ),
            _buildQuestItem(
              'Share with Family',
              'Pending',
              30,
              false,
              Icons.share,
            ),
            _buildQuestItem(
              'Check All Rooms',
              'Complete',
              60,
              true,
              Icons.check_circle,
            ),
            const SizedBox(height: 24),
            const Text(
              'Achievements',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildAchievementBadge(
                    '🔥',
                    '7-Day Streak',
                    Colors.orange,
                    true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildAchievementBadge(
                    '🏆',
                    'Climate Master',
                    Colors.amber,
                    true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildAchievementBadge(
                    '⭐',
                    'First Log',
                    Colors.blue,
                    true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildAchievementBadge(
                    '🎯',
                    '100 Readings',
                    Colors.green,
                    false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestItem(String title, String status, int points, bool completed, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: completed ? Colors.green.shade200 : Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: completed ? Colors.green : Colors.grey,
            size: 28,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: completed ? Colors.green : Colors.orange,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '+$points',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementBadge(String emoji, String title, Color color, bool unlocked) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: unlocked ? color.withOpacity(0.1) : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: unlocked ? color : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Text(
            emoji,
            style: TextStyle(
              fontSize: 40,
              color: unlocked ? null : Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: unlocked ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
