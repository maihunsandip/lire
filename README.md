# 📚 Lire

> A modern, cross-platform, open-source ebook reader built with Flutter.

Lire is a fast, lightweight, and privacy-friendly ebook reader designed for desktop platforms. It aims to provide a clean reading experience while supporting popular ebook formats and a modern, intuitive interface.

> 🚧 **Project Status:** Early Development (Pre-release)

---

## ✨ Features

### Library
- Import books from local storage
- Grid and List view
- Search books by title or author
- Sort by:
  - Recently Read
  - Title
  - Author
  - Date Added

### Reading
- EPUB support
- PDF support
- TXT support
- Remember last reading position
- Responsive reading interface

### User Experience
- Material Design 3
- Light & Dark themes
- Fast and lightweight
- Cross-platform desktop support
- Privacy-first (your library stays on your device)

---

## 🖥️ Supported Platforms

| Platform | Status |
|----------|--------|
| Linux | 🚧 In Development |
| Windows | 🚧 Planned |
| macOS | 🚧 Planned |

---

## 🛠 Tech Stack

- Flutter
- Dart
- Riverpod (State Management)
- Go Router (Navigation)

---

## 📂 Project Structure

```
lib/
├── app/
├── core/
├── features/
│   ├── library/
│   ├── reader/
│   └── settings/
├── shared/
└── main.dart
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Git

### Clone the repository

```bash
git clone https://github.com/<your-username>/lire.git
```

### Navigate to the project

```bash
cd lire
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

Linux

```bash
flutter run -d linux
```

Windows

```bash
flutter run -d windows
```

---

## 🗺 Roadmap

### Phase 1
- [x] Flutter project setup
- [ ] App architecture
- [ ] Library page
- [ ] Import books
- [ ] Search books
- [ ] Grid/List view

### Phase 2
- [ ] EPUB reader
- [ ] PDF reader
- [ ] TXT reader
- [ ] Reading progress
- [ ] Recent books

### Phase 3
- [ ] Themes
- [ ] Book metadata
- [ ] Book covers
- [ ] Keyboard shortcuts
- [ ] Performance improvements

### Future
- [ ] Bookmarks
- [ ] Highlights
- [ ] Notes
- [ ] Reading statistics
- [ ] Plugin system
- [ ] Sync support (optional)

---

## 🤝 Contributing

Contributions are welcome!

If you'd like to contribute:

1. Fork the repository
2. Create a feature branch

```bash
git checkout -b feature/amazing-feature
```

3. Commit your changes

```bash
git commit -m "Add amazing feature"
```

4. Push to your branch

```bash
git push origin feature/amazing-feature
```

5. Open a Pull Request

Please make sure your code follows the project's coding style and includes appropriate documentation where necessary.

---

## 📄 License

This project is licensed under the MIT License.

See the [LICENSE](LICENSE) file for details.

---

## 💙 Why Lire?

Many ebook readers are either:
- Heavy and resource-intensive
- Platform-specific
- Filled with unnecessary features
- Closed source

Lire aims to be a modern, lightweight, and open-source alternative that focuses on speed, simplicity, and an excellent reading experience.

---

## ⭐ Support the Project

If you like Lire, consider giving the repository a ⭐ on GitHub. It helps others discover the project and motivates future development.

---

Made with ❤️ using Flutter.