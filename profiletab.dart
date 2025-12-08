import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              color: Colors.blue,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 60, color: Colors.blue),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Neha Arshad',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Climate Master • Level 12',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildProfileStat('3,450', 'Points'),
                      _buildProfileStat('7', 'Days Streak'),
                      _buildProfileStat('15', 'Badges'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildMenuItem(Icons.home, 'My Homes', 'Manage your properties'),
            _buildMenuItem(Icons.group, 'Family & Friends', '3 members'),
            _buildMenuItem(Icons.school, 'Learning Center', '15/50 modules completed'),
            _buildMenuItem(Icons.leaderboard, 'Leaderboard', 'See your ranking'),
            _buildMenuItem(Icons.history, 'Activity History', 'View all logs'),
            _buildMenuItem(Icons.shopping_cart, 'IoT Shop', 'Browse sensors'),
            _buildMenuItem(Icons.help, 'Help & Support', 'Get assistance'),
            _buildMenuItem(Icons.privacy_tip, 'Privacy Policy', 'Read our policy'),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                ),
                child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
