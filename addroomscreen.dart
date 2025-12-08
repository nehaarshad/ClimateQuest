import 'package:flutter/material.dart';
class AddRoomScreen extends StatefulWidget {
  const AddRoomScreen({Key? key}) : super(key: key);

  @override
  State<AddRoomScreen> createState() => _AddRoomScreenState();
}

class _AddRoomScreenState extends State<AddRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Add New Room'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Room Name',
                hintText: 'e.g., Master Bedroom',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.room),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Room Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildRoomTypeChip('Living Room', Icons.weekend),
                _buildRoomTypeChip('Bedroom', Icons.bed),
                _buildRoomTypeChip('Kitchen', Icons.kitchen),
                _buildRoomTypeChip('Bathroom', Icons.bathroom),
                _buildRoomTypeChip('Office', Icons.work),
                _buildRoomTypeChip('Other', Icons.more_horiz),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Target Temperature Range (°C)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            RangeSlider(
              values: const RangeValues(20, 24),
              min: 15,
              max: 30,
              divisions: 15,
              labels: const RangeLabels('20°C', '24°C'),
              onChanged: (values) {},
            ),
            const SizedBox(height: 24),
            const Text(
              'Target Humidity Range (%)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            RangeSlider(
              values: const RangeValues(40, 60),
              min: 20,
              max: 80,
              divisions: 12,
              labels: const RangeLabels('40%', '60%'),
              onChanged: (values) {},
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('✅ Room added successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Add Room', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoomTypeChip(String label, IconData icon) {
    return FilterChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
      selected: label == 'Living Room',
      onSelected: (selected) {},
    );
  }
}