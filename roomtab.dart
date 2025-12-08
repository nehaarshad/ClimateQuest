import 'package:climatequest/addroomscreen.dart';
import 'package:climatequest/roomdetailview.dart';
import 'package:flutter/material.dart';
class RoomsTab extends StatelessWidget {
  const RoomsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Rooms'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddRoomScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildRoomCard(
            context,
            'Living Room',
            22.5,
            55,
            'Good',
            85,
            Colors.blue,
          ),
          const SizedBox(height: 12),
          _buildRoomCard(
            context,
            'Bedroom',
            21.0,
            58,
            'Good',
            90,
            Colors.purple,
          ),
          const SizedBox(height: 12),
          _buildRoomCard(
            context,
            'Kitchen',
            24.0,
            62,
            'Moderate',
            70,
            Colors.orange,
          ),
          const SizedBox(height: 12),
          _buildRoomCard(
            context,
            'Office',
            23.0,
            52,
            'Good',
            88,
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildRoomCard(
      BuildContext context,
      String roomName,
      double temperature,
      int humidity,
      String airQuality,
      int comfortScore,
      Color color,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoomDetailScreen(roomName: roomName),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.room, color: color),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      roomName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.chevron_right, color: Colors.grey.shade400),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildRoomStat('Temp', '${temperature}°C', Icons.thermostat),
                _buildRoomStat('Humidity', '$humidity%', Icons.water_drop),
                _buildRoomStat('Air', airQuality, Icons.air),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Comfort Score',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      '$comfortScore/100',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      comfortScore >= 80
                          ? Icons.sentiment_very_satisfied
                          : Icons.sentiment_neutral,
                      color: comfortScore >= 80 ? Colors.green : Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoomStat(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}