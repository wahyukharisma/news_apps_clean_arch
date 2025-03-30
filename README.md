# 📰 News Apps - Clean Architecture (Android)

This is a **news application** built using **Kotlin** and follows the **Clean Architecture** pattern. It is designed to be modular, scalable, and testable, with a clear separation of concerns between different layers of the application.

## ✨ Features
- ✅ Fetch and display the latest news articles
- ✅ Category-based news filtering
- ✅ Search functionality
- ✅ Offline caching for better user experience
- ✅ Dark mode support

## 🏗️ Tech Stack
- **Programming Language**: Kotlin
- **Architecture**: Clean Architecture (Presentation, Domain, Data)
- **Dependency Injection**: Hilt
- **Networking**: Retrofit + OkHttp
- **Coroutines & Flow**: Asynchronous programming
- **Local Storage**: Room Database for caching
- **UI**: Jetpack Compose / XML Views
- **Testing**: JUnit, MockK, Espresso

## 📂 Project Structure
This project follows the **Clean Architecture** principles, ensuring maintainability and separation of concerns.

```
📂 news_apps_clean_arch
 ├── 📂 app                # Application module (UI layer)
 ├── 📂 domain             # Business logic & use cases
 ├── 📂 data               # Repository & data sources
 ├── 📂 core               # Common utilities and base classes
 ├── 📂 di                 # Dependency Injection (Hilt)
 ├── 📂 ui                 # UI components & ViewModels
```

## 🚀 Setup & Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/wahyukharisma/news_apps_clean_arch.git
   ```
2. Open in Android Studio
3. Run the project on an emulator or physical device
