# QuickBook 📱

A beautiful cross-platform service booking application built with Flutter. QuickBook allows users to browse, book, and manage various home and personal services with an intuitive and modern interface.

## ✨ Features

- **🎨 Modern UI/UX**: Beautiful Material 3 design with gradient themes and animations
- **🏠 Service Discovery**: Browse various services with professional work photos
- **📅 Easy Booking**: Select services and choose date & time with calendar picker
- **📋 Booking Management**: View and track your booked services
- **👤 User Profile**: Personal profile management with preferences
- **🌙 Dark Mode**: Toggle between light and dark themes
- **📱 Responsive Design**: Optimized for both mobile and desktop platforms
- **🔍 Search & Filter**: Find services by category and search functionality
- **💰 Transparent Pricing**: Clear pricing in Indian Rupees (₹)

## 📱 App Screens

### Home Screen
- Grid layout of available services with images
- Search functionality
- Category filtering
- Service cards with photos, pricing, and duration

### Booking Screen
- Service selection form
- Date and time picker
- Customer details input
- Booking confirmation

### My Bookings Screen
- List of upcoming and past bookings
- Booking status tracking
- Quick actions for each booking

### Profile Screen
- User information display
- Dark mode toggle
- Settings and preferences

## 📸 Screenshots

*Screenshots will be added here once the app is deployed*

| Home Screen | Booking Screen | My Bookings | Profile |
|-------------|----------------|-------------|---------|
| Coming Soon | Coming Soon    | Coming Soon | Coming Soon |

## 🛠️ Tech Stack

- **Framework**: Flutter (Dart with null safety)
- **UI**: Material 3 Design System
- **State Management**: StatefulWidget (Provider/Riverpod planned)
- **Navigation**: Bottom Navigation Bar
- **Images**: Network images with fallback icons
- **Data**: Static dummy data (Firebase integration planned)
- **Platform Support**: Android, iOS, Windows, Web

## 🚀 Installation

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK (>=2.17.0)
- Android Studio / VS Code
- Android device/emulator or iOS simulator

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Sheetal0402/quickbook.git
   cd quickbook
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   # For Android
   flutter run -d android
   
   # For iOS
   flutter run -d ios
   
   # For Windows
   flutter run -d windows
   
   # For Web
   flutter run -d chrome
   ```

4. **Build APK (Android)**
   ```bash
   flutter build apk --release
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/                   # Data models
│   ├── service.dart         # Service model
│   ├── user.dart            # User model
│   └── dummy_data.dart      # Static dummy data
├── screens/                  # App screens
│   ├── home_screen.dart     # Service discovery
│   ├── booking_screen.dart  # Service booking
│   ├── my_bookings_screen.dart # Booking management
│   ├── profile_screen.dart  # User profile
│   └── main_navigation.dart # Bottom navigation
├── widgets/                  # Reusable components
│   ├── service_card.dart    # Service display card
│   ├── custom_button.dart   # Custom button widget
│   └── booking_form.dart    # Booking form widget
└── theme/                    # App theming
    └── app_theme.dart       # Material 3 theme config
```

## 🎯 Current Features (MVP)

- ✅ Service browsing with professional images
- ✅ Responsive grid layout
- ✅ Service booking form
- ✅ Date and time selection
- ✅ Booking management view
- ✅ User profile screen
- ✅ Dark mode support
- ✅ Cross-platform compatibility
- ✅ Search and filter functionality
- ✅ Material 3 design implementation

## 🔮 Future Improvements

### Backend Integration
- **Firebase Authentication**: User registration and login
- **Firestore Database**: Real-time data storage and synchronization
- **Cloud Storage**: Image uploads and management
- **Push Notifications**: Booking reminders and updates

### Payment Integration
- **Razorpay**: Secure payment processing
- **Multiple Payment Options**: UPI, Cards, Wallets
- **Payment History**: Transaction tracking

### Enhanced Features
- **Real-time Chat**: Communication with service providers
- **GPS Integration**: Location-based service discovery
- **Rating & Reviews**: Service feedback system
- **Advanced Filtering**: Price range, availability, ratings
- **Booking History Analytics**: Usage insights
- **Multi-language Support**: Localization

### Performance & Quality
- **State Management**: Migration to Riverpod or Bloc
- **Offline Support**: Local data caching
- **Performance Optimization**: Image caching and lazy loading
- **Testing**: Unit, widget, and integration tests
- **CI/CD Pipeline**: Automated testing and deployment

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Developer

**Sheetal Patel**
- GitHub: [@Sheetal0402](https://github.com/Sheetal0402)
- Project: [QuickBook](https://github.com/Sheetal0402/quickbook)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design team for the design system
- Unsplash for providing beautiful service images
- Community contributors and testers

---

⭐ **If you found this project helpful, please give it a star!** ⭐
