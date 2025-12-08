import 'package:climatequest/dasboard.dart';
import 'package:climatequest/modecard.dart';
import 'package:flutter/material.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({Key? key}) : super(key: key);

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  int currentStep = 0;
  String selectedMode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Setup Your Home',style: TextStyle(fontWeight: FontWeight.w600),),
        elevation: 0,
      ),
      body: Stepper(
        currentStep: currentStep,
        onStepContinue: () {
          if (currentStep < 3) {
            setState(() => currentStep++);
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          }
        },
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() => currentStep--);
          }
        },
        steps: [
          Step(
            title: const Text('Home Location'),
            content: Column(
              children: [
                const SizedBox(height: 8,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Home Address',
                    hintText: 'e.g., Street #12 h.no 21',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'City',
                    hintText: 'e.g., Islamabad',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            isActive: currentStep >= 0,
          ),
          Step(
            title: const Text('Add Rooms'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Select rooms to monitor:'),
                const SizedBox(height: 10),
                CheckboxListTile(
                  title: const Text('Living Room'),
                  value: true,
                  onChanged: (val) {},
                ),
                CheckboxListTile(
                  title: const Text('Bedroom'),
                  value: true,
                  onChanged: (val) {},
                ),
                CheckboxListTile(
                  title: const Text('Kitchen'),
                  value: false,
                  onChanged: (val) {},
                ),
                CheckboxListTile(
                  title: const Text('Office'),
                  value: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            isActive: currentStep >= 1,
          ),
          Step(
            title: const Text('Monitoring Mode'),
            content: Column(
              children: [
                ModeCard(
                  title: 'Estimation Mode',
                  description: 'No equipment needed\nQuick start option',
                  icon: Icons.psychology,
                  cost: 'FREE',
                  isSelected: selectedMode == 'estimation',
                  onTap: () => setState(() => selectedMode = 'estimation'),
                ),
                const SizedBox(height: 16),
                ModeCard(
                  title: 'Manual Mode',
                  description: 'Use your thermometer\nLog readings manually',
                  icon: Icons.edit,
                  cost: '\$5-10',
                  isSelected: selectedMode == 'manual',
                  onTap: () => setState(() => selectedMode = 'manual'),
                ),
                const SizedBox(height: 16),
                ModeCard(
                  title: 'IoT Mode',
                  description: 'Automatic monitoring\nReal-time data',
                  icon: Icons.sensors,
                  cost: '\$15-50',
                  isSelected: selectedMode == 'iot',
                  onTap: () => setState(() => selectedMode = 'iot'),
                ),
              ],
            ),
            isActive: currentStep >= 2,
          ),
          Step(
            title: const Text('Comfort Preferences'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Temperature Range (°C)', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                RangeSlider(
                  values: const RangeValues(20, 24),
                  min: 15,
                  max: 30,
                  divisions: 15,
                  labels: const RangeLabels('20°C', '24°C'),
                  onChanged: (values) {},
                ),
                const SizedBox(height: 20),
                const Text('Humidity Range (%)', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                RangeSlider(
                  values: const RangeValues(40, 60),
                  min: 20,
                  max: 80,
                  divisions: 12,
                  labels: const RangeLabels('40%', '60%'),
                  onChanged: (values) {},
                ),
              ],
            ),
            isActive: currentStep >= 3,
          ),
        ],
      ),
    );
  }
}
