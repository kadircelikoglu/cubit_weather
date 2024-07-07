# Weather App

A weather application built using Flutter. This app displays current weather information for a city and updates based on user input.

## Features

- Display current weather conditions
- Search for weather information by city
- Beautiful UI using Google Fonts

## Technologies Used

- **flutter_bloc**: State management for handling weather data and UI states.
- **json_serializable**: For JSON serialization and deserialization.
- **json_annotation**: Annotations for the json_serializable package.
- **http**: To make HTTP requests to the weather API.
- **google_fonts**: For custom fonts in the application.
- **build_runner**: For code generation, especially for json_serializable.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/weather_app.git
cd weather_app
flutter pub get
flutter pub run build_runner build
flutter run

lib/
├── core/
│   └── base/
│       └── cubit/
│           └── weather_cubit.dart
├── src/
│   ├── view/
│   │   └── weather/
│   │       └── weather_view.dart
│   ├── widgets/
│   │   └── widgets.dart
│   └── services/
│       └── service.dart
└── constants/
    └── enums/
        └── weather_enum.dart
Usage
-    Launch the app and you will see the current weather for a default location.
-    Use the search button (magnifying glass icon) to search for weather information for a different city.
-    The app will display the current weather conditions including temperature, weather description, and an appropriate background color.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
If you have any questions or suggestions, feel free to contact me at [kadircelikogluu@gmail.com].

Acknowledgements
-    OpenWeatherMap API for providing the weather data.
-    Google Fonts for the beautiful fonts.
-    Flutter Community for the awesome Flutter framework and packages.

Contact
If you have any questions or suggestions, feel free to contact me at [kadircelikogluu@gmail.com].
