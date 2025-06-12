# 📦 Project: Flutter Inbox Clone

A modern inbox-style UI inspired by messaging apps like Slack, Discord, and Spotify. This project demonstrates good Flutter UI practices, separation of widgets, reusable components, and clean navigation structure.

---

## 📖 Overview

This project is a Flutter application that mimics an inbox screen, complete with avatars, message previews, tabs (All, Groups, Podcasts), and a bottom navigation bar. The goal is to explore layout structures, reusable widgets, and real-world app patterns in Flutter.

---

## 🚀 Setup Instructions

1. **Clone the repository**

```bash
git clone https://github.com/JDMUHIRWA/my-app.git
cd flutter-inbox-clone
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

Ensure your emulator or connected device is running.

---

## 📦 Dependencies

* `flutter`
* `cupertino_icons`
* No third-party navigation or state management packages are used for simplicity.

---

## 🧪 Running Tests

If you have unit or widget tests:

```bash
flutter test
```

(Include test files under `test/` directory)

---

## 📄 Change Log (Last Sprint)

**Added**

* InboxHomePage screen with mock chat list
* BottomNavigationBar with 4 main screens
* Badge count display for unread messages

**Changed**

* Avatar widget to support both network and asset images
* Tabs moved to custom component widget

**Fixed**

* UI overflow issue on small screens
* Missing image bug in CircleAvatar widget

---

## 📚 Resources

* [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* [README Best Practices](https://www.archbee.com/blog/readme-document-elements)

---

## ✍️ Author

Muhirwa JD — Flutter Developer & UI Enthusiast

---

## 📎 License

MIT License (or specify another if applicable)
