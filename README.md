# Taskaty 📝
**Your Professional Task Management Companion**

Taskaty is a clean, efficient, and user-friendly task management application built with Flutter. Designed to help users stay organized, it combines a premium UI with a robust offline-first experience, ensuring your productivity never stops.

---

## 🌟 Overview
Taskaty is more than just a list; it's a personalized space to manage your daily objectives. Whether you're a student, professional, or hobbyist, Taskaty provides the tools to categorize, track, and complete tasks with ease.

---

## ✨ Features
- **👤 Personalized Onboarding:** Custom profile setup including name and profile picture selection (via Camera or Gallery).
- **📝 Task Management:** Create comprehensive tasks with titles, notes, specific dates, and times.
- **🎨 Color Categorization:** Organize tasks using a curated color palette for easy visual identification.
- **🔄 Interaction & Gestures:** 
    - **Swipe Right:** Mark tasks as completed instantly.
    - **Swipe Left:** Delete unwanted tasks with ease.
- **🔍 Dynamic Filtering:** Focus on what matters by filtering tasks into **All**, **Todo**, or **Completed**.
- **💾 Persistent Storage:** High-performance local data storage using **Hive (NoSQL)**, ensuring your data is always available offline.
- **✨ Visual Engagement:** Smooth Lottie animations and a modern "Glassmorphism" influenced design.
- **📱 Responsive UI:** Completely responsive layout that adapts beautifully across various mobile devices.

---

## 📸 Demo

<p align="center">
  <img src="https://github.com/user-attachments/assets/3efdb1c6-0ca6-431d-835c-d09f39a10718" width="200" alt="Splash Screen">
  <img src="https://github.com/user-attachments/assets/bc340001-61f7-4c01-904c-9b086e038a4e" width="200" alt="Onboarding Empty">
  <img src="https://github.com/user-attachments/assets/f0907399-7d01-4367-91d1-76b7c2f68cbd" width="200" alt="Onboarding Full">
  <img src="https://github.com/user-attachments/assets/38b27bed-45b1-42c6-a9c2-c0d359b52fd6" width="200" alt="Home Empty">
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/d4649e07-5859-40d5-a0ce-c0d7aca34526" width="200" alt="Home Tasks">
  <img src="https://github.com/user-attachments/assets/ddb3f45b-20fa-4b7c-80e6-9d791b2d0433" width="200" alt="Create Task Color">
  <img src="https://github.com/user-attachments/assets/fa53b733-aa03-4539-b3ad-3086439fb518" width="200" alt="Create Task Input">
</p>


---

## 🛠 Tech Stack
- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **Database:** [Hive & Hive Flutter](https://docs.hivedb.dev/) (Local Persistence)
- **State Management:** Separation of concerns using Modular Widgets (StatefulWidget/setState) 
- **Utilities:**
    - `image_picker`: For profile image selection.
    - `lottie`: For high-quality vector animations.
    - `intl`: For date and time formatting.
    - `hive_generator`: For efficient data model adaptation.

---

## 🏗 Architecture & Design
Taskaty follows **Clean Code** and **SOLID** principles to ensure maintainability:
- **Presentation Layer:** Highly reusable and granular widgets located in `lib/widgets`.
- **Data Layer:** Isolated data models and local storage management using Hive TypeAdapters.
- **Design System:** Consistent use of custom themes, colors, and typography to maintain a premium feel.

---

## 🚀 Installation & Setup

### Prerequisites
- Flutter SDK (v3.10.1 or higher)
- Android Studio / VS Code
- Git

### Steps
1. **Clone the repository:**
   ```bash
   git clone https://github.com/muhamedxzidan/Taskaty_App.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd taskaty_app
   ```
3. **Install dependencies:**
   ```bash
   flutter pub get
   ```
4. **Generate Hive adapters:**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. **Run the app:**
   ```bash
   flutter run
   ```

---

## 📁 Project Structure
```text
lib/
├── model/           # Data models and Hive adapters
├── screens/         # Main application screens (Auth, Tasks, Create)
├── widgets/         # Reusable UI components
├── taskaty_app.dart # Main App configuration
└── main.dart        # App entry point & database initialization
```

---

## 🤝 Contribution
Contributions are welcome! If you'd like to improve Taskaty, feel free to fork the repo and submit a PR or open an issue.

---

## 📩 Contact
**Author:** Muhamed Zidan  
**GitHub:** [@muhamedxzidan](https://github.com/muhamedxzidan)  
**Project Link:** [Taskaty App](https://github.com/muhamedxzidan/Taskaty_App)

---
<p align="center">Made with ❤️ for a more organized world.</p>
