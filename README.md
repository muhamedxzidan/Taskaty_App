# Taskaty 📝

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=flat&logo=dart&logoColor=white)](https://dart.dev/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Taskaty** is a sleek, modern, and intuitive task management application built with Flutter. Designed for simplicity and productivity, Taskaty helps you organize your daily life with ease, featuring a vibrant UI and smooth user experience.

---

## 🚀 Features

- **Personalized Onboarding**: Set up your profile with a custom name and avatar (Gallery/Camera support).
- **Comprehensive Task Creation**: Add tasks with detailed descriptions, dates, and specific timings.
- **Visual Categorization**: Color-code your tasks to distinguish between different priorities or categories.
- **Interactive Calendar View**: Quickly navigate through days using the horizontal date picker.
- **Rich Animations**: Experience a fluid interface powered by Lottie animations.
- **Clean & Modern UI**: A minimalist design focus that keeps your productivity at the center.

---

## 📸 Screenshots & Demo

| Splash Screen | Registration | Task Dashboard | Create Task |
| :---: | :---: | :---: | :---: |
| ![Splash](https://github.com/user-attachments/assets/4444a0b4-36a7-47f5-8598-dcfc4350aa99) | ![Auth](https://github.com/user-attachments/assets/dcb968d3-7a5f-4cd1-8043-844659c3269f) | ![Dashboard](https://github.com/user-attachments/assets/e7a33f8a-cf0a-4e4b-828f-920c422d3420) | ![Create](https://github.com/user-attachments/assets/5cda1f18-bee5-447e-a2ea-43d1aaaf16c4) |

<p align="center">
  <img src="https://github.com/user-attachments/assets/79fe2672-06b9-47f6-8594-c3c10b233861" width="30%" alt="Taskaty UI 1" />
  <img src="https://github.com/user-attachments/assets/acd5d7e3-bba0-4adb-a7b0-456bd1a7cbe5" width="30%" alt="Taskaty UI 2" />
</p>

---

## 🛠️ Tech Stack

- **Framework**: [Flutter](https://flutter.dev/) (SDK ^3.10.1)
- **Language**: [Dart](https://dart.dev/)
- **Animations**: [Lottie](https://pub.dev/packages/lottie)
- **Date Formatting**: [Intl](https://pub.dev/packages/intl)
- **Media Access**: [Image Picker](https://pub.dev/packages/image_picker)
- **Icons**: [Cupertino Icons](https://pub.dev/packages/cupertino_icons)

---

## 🏗️ Architecture & Folder Structure

Taskaty follows a clean layered architecture to ensure maintainability and scalability:

```text
lib/
├── model/          # Data models and static business logic
│   └── task_model.dart
├── screens/        # Main UI screens (Splash, Auth, Dashboard, Create Task)
│   ├── auth_screen.dart
│   ├── create_task.dart
│   ├── splash_screen.dart
│   └── tasks_screen.dart
├── widgets/        # Reusable UI components and custom design elements
│   ├── custom_button.dart
│   ├── custom_task_item.dart
│   └── ...
├── main.dart       # Entry point
└── taskaty_app.dart# App configuration and routing
```

---

## ⚙️ Installation & Setup

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.
- An IDE (VS Code or Android Studio) with Flutter/Dart extensions.
- An emulator or physical device for testing.

### Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/muhamedxzidan/Taskaty_App.git
   cd taskaty_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```

---

## 📱 Usage Guide

1. **Get Started**: Launch the app and enter your name. Upload a profile picture using your camera or gallery.
2. **Dashboard**: View your tasks for the current day. Use the top horizontal list to switch between days.
3. **Add Task**: Click the create button to add a new task. Choose a unique color, set the time, and write a summary.
4. **Manage**: Keep track of your schedule and stay productive!

---

## 🤝 Contribution

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 👤 Author

**Muhamed Zidan**
- GitHub: [@muhamedxzidan](https://github.com/muhamedxzidan)
- LinkedIn: [Muhamed Zidan](https://www.linkedin.com/in/muhamed-zidan/)

---

## 📄 License

This project is licensed under the MIT License - see the `LICENSE` file for details.

---
<p align="center">Made with ❤️ and Flutter</p>
