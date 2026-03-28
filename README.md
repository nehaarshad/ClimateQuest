# ClimateQuest

# test weebhook 3
📋 Overview
ClimateQuest is a gamified cross-platform mobile application that transforms home climate management into an engaging experience. Built with Flutter, it enables users to monitor and optimize their indoor environment regardless of technical expertise or equipment availability.
✨ Key Features

🎮 Gamification System: Earn points, unlock achievements, and complete daily quests
📊 Three Monitoring Modes: Estimation, Manual Logging, and IoT Integration
🏠 Multi-Room Management: Track climate conditions across different spaces
👨‍👩‍👧‍👦 Family Collaboration: Compete and collaborate with family members
🌐 Weather Integration: Real-time weather data for contextual recommendations
📚 Educational Content: Learn about climate science and energy efficiency
📱 Offline Support: Log data without internet connectivity
🔐 Privacy-Focused: Control your data with comprehensive privacy settings

🚀 Quick Start
Prerequisites

Flutter SDK (3.0.0 or higher)
Dart SDK (2.17.0 or higher)
Android Studio / Xcode
Git

Installation
# Clone the repository
git clone https://github.com/nehaarshad/ClimateQuest.git

# Navigate to project directory
cd ClimateQuest

# Install dependencies
flutter pub get

# Run the app
flutter run

Environment Setup
Create a .env file in the root directory:
envOPENWEATHER_API_KEY=your_api_key_here
MQTT_BROKER_URL=your_broker_url
MQTT_PORT=1883
📱 Supported Platforms

Android 7.0+ (API Level 24+)
iOS 12.0+

🎯 Core Concepts
Monitoring Modes

Estimation Mode - No equipment needed, AI-powered estimates
Manual Mode - Log readings from basic thermometers
IoT Mode - Automated monitoring with ESP32/Arduino sensors

Gamification Elements

Points System: Earn points for logging data and maintaining optimal conditions
Levels: Progress through 50+ levels based on accumulated points
Achievements: Unlock 40+ badges for milestones
Daily Quests: Complete 3-5 personalized challenges daily
Leaderboards: Compete with family and friends

🏗️ Project Structure
lib/
├── main.dart                 # Application entry point
├── models/                   # Data models
│   ├── user.dart
│   ├── room.dart
│   └── climate_data.dart
├── screens/                  # UI screens
│   ├── auth/
│   ├── onboarding/
│   ├── dashboard/
│   └── settings/
├── widgets/                  # Reusable components
├── services/                 # Business logic
│   ├── auth_service.dart
│   ├── climate_service.dart
│   └── gamification_service.dart
├── utils/                    # Utilities and helpers
└── constants/                # App constants
🧪 Testing
bash# Run unit tests
flutter test

# Run integration tests
flutter test integration_test

# Generate coverage report
flutter test --coverage
Test Coverage

Unit Tests: 15 tests covering core logic
Widget Tests: 20 tests covering UI components
Integration Tests: 3 end-to-end scenarios

📖 Documentation

User Manual
API Documentation
Installation Guide
Architecture Overview

🤝 Contributing
We welcome contributions! Please see our Contributing Guidelines for details.

Fork the repository
Create your feature branch (git checkout -b feature/AmazingFeature)
Commit your changes (git commit -m 'Add some AmazingFeature')
Push to the branch (git push origin feature/AmazingFeature)
Open a Pull Request

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
👥 Team
Neha Arshad - SAP ID: 51009

GitHub: @nehaarshad
Project: ClimateQuest Repository

Faculty of Computing
Riphah International University, Islamabad
🙏 Acknowledgments

Anthropic's Claude AI for development assistance
Flutter team for the amazing framework
OpenWeatherMap for weather API
All contributors and testers

📞 Support
For support, email nehaarshad@riphah.edu.pk or open an issue in the repository.
🗺️ Roadmap

 Voice assistant integration
 Apple Watch & Android Wear support
 Machine learning predictions
 Community challenges
 Energy cost tracking
 Smart home device integration


Built with ❤️ using Flutter and AI

