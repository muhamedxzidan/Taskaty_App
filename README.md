# 🚀 Taskaty - Minimalist Task Management App

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

**Taskaty** is a sleek, modern task management application built with Flutter. Designed with a focus on simplicity and productivity, Taskaty provides a beautiful interface to help users organize their daily schedules, track deadlines, and manage their workflow with ease.

---

## 📱 Screenshots & Demo

| Splash & Onboarding | Tasks Dashboard | Task Creation |
| :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/e7a33f8a-cf0a-4e4b-828f-920c422d3420" width="280" /> | <img src="https://github.com/user-attachments/assets/acd5d7e3-bba0-4adb-a7b0-456bd1a7cbe5" width="280" /> | <img src="https://github.com/user-attachments/assets/5cda1f18-bee5-447e-a2ea-43d1aaaf16c4" width="280" /> |

---

## ✨ Features

- **🎨 Modern UI/UX**: Clean, minimalist design following Material Design principles.
- **🔐 User Profiles**: Personalized onboarding experience with local profile setup and image uploading.
- **📅 Dynamic Task Dashboard**: View and manage tasks organized by dates.
- **➕ Smart Task Creation**: Add tasks with titles, descriptions, dates, and color-coded priority levels.
- **🎞️ Fluid Animations**: Integrated with **Lottie** for smooth transitions and an engaging user experience.
- **📸 Image Picker**: Allows users to set profile avatars directly from the camera or gallery.
- **🧩 Reusable Components**: Architected with a highly modular widget system for scalability.

---

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev)
- **Language:** [Dart](https://dart.dev)
- **Animations:** [Lottie for Flutter](https://pub.dev/packages/lottie)
- **Storage/Utility:**
  - `image_picker` for media handling.
  - `intl` for advanced date and time formatting.
  - `cupertino_icons` for iOS-styled iconography.

---

## 🏗️ Architecture & Folder Structure

The project follows a clean, layered architecture separating UI logic from data models:

```text
lib/
├── main.dart            # Entry point
├── taskaty_app.dart     # Root widget & Theme configuration
├── model/               # Data structures (TaskModel)
├── screens/             # Feature-specific pages (Auth, Dashboard, Create Task)
└── widgets/             # Reusable UI components (Buttons, Headers, Inputs)
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.10.x or higher)
- [Dart SDK](https://dart.dev/get-started/sdk)
- A physical device or emulator (Android/iOS)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/muhamedxzidan/Taskaty_App.git
    cd Taskaty_App
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Run the application:**
    ```bash
    flutter run
    ```

---

## 📖 Usage Guide

1.  **Onboarding**: Start by setting up your profile. You can upload an image from your gallery or take a new one using the camera.
2.  **Viewing Tasks**: The home screen displays your tasks. Use the date header to filter tasks by the day.
3.  **Adding Tasks**: Click the add button to navigate to the "Create Task" screen. Fill in the details, select a priority color, and save.
4.  **Completion**: Interact with your task items to manage your daily progress.

---

## 🤝 Contributing

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
- Professional Software Engineer & UI Enthusiast

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

---
<p align="center">Made with ❤️ using Flutter</p>
