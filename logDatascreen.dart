import 'package:flutter/material.dart';

class LogDataScreen extends StatefulWidget {
  const LogDataScreen({Key? key}) : super(key: key);

  @override
  State<LogDataScreen> createState() => _LogDataScreenState();
}

class _LogDataScreenState extends State<LogDataScreen> {
  String selectedRoom = 'Living Room';
  double temperature = 22.0;
  double humidity = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Climate Data'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Room',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: selectedRoom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.room),
              ),
              items: ['Living Room', 'Bedroom', 'Kitchen', 'Office']
                  .map((room) => DropdownMenuItem(
                value: room,
                child: Text(room),
              ))
                  .toList(),
              onChanged: (value) {
                setState(() => selectedRoom = value!);
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Temperature (°C)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: temperature,
                    min: 15,
                    max: 35,
                    divisions: 40,
                    label: '${temperature.toStringAsFixed(1)}°C',
                    onChanged: (value) {
                      setState(() => temperature = value);
                    },
                  ),
                ),
                Container(
                  width: 80,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${temperature.toStringAsFixed(1)}°C',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Humidity (%)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: humidity,
                    min: 20,
                    max: 80,
                    divisions: 60,
                    label: '${humidity.toStringAsFixed(0)}%',
                    onChanged: (value) {
                      setState(() => humidity = value);
                    },
                  ),
                ),
                Container(
                  width: 80,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${humidity.toStringAsFixed(0)}%',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('✅ Data logged successfully! +50 points'),
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
                backgroundColor: Colors.blue
              ),
              child: const Text(
                'Log Data',
                style: TextStyle(fontSize: 18,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
