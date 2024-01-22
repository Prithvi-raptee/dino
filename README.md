
# Dino Flutter App

Welcome to the Dino App, developed for Raptee Energy Pvt. Ltd.
>Made Using Flutter
## Table of Contents
1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
    - [Installation](#installation)
    - [Configuration](#configuration)
3. [Folder Structure](#folder-structure)
4. [Dependencies](#dependencies)
5. [Development](#development)
    - [Coding Guidelines](#coding-guidelines)
    - [Testing](#testing)
    - [Contributing](#contributing)
6. [Features](#features)
7. [Screenshots and Demo](#screenshots-and-demo)
8. [FAQs](#faqs)
9. [Troubleshooting](#troubleshooting)
10. [Release Notes](./docs/release-notes.md)
11. [License](#license)
12. [Roadmap](#roadmap)

# Introduction

Welcome to the Dino App- by the developers of Raptee Energy Pvt. Ltd. This section provides an overview of the project, its goals, and how to get started as a Flutter developer.

## About 

Dino is a Flutter-based mobile application designed to sync with the Raptee Electric Motorcycles for a seamless experience. It is designed to show information such as Current Location, Vehicle Status, Ride Mode, Distance travelled and many other insights portrayed through Graphs and Charts for easy understanding.
This app targets to give the users a "Premium" user experience to its users by making everything seamless- From accessing maps, Booking for a test drive and so on, till scheduling a service!

## Key Features

- A 360 degree view of the customizable Raptee 3D Motorcycles.
- Support and Services
- The Rave Community Forum
- Subscriptions

## Purpose

The main purpose of this app is to assist the user in case of any need and show them realtime data regarding their Electric Motorcycle. 

## Benefits

- Enhanced User Experience.
- Faster Support and Services.
- The Rave Community Forum for any help.
- Manage Subscriptions.
- Access to all the information related to the EV.

## Technology Stack

- Dart
- Flutter
- Pub.dev Packages like:  
	```yaml
	cupertino_icons: ^1.0.2  
    otp_text_field: ^1.1.3  
	persistent_bottom_nav_bar: ^5.0.2  
	carousel_slider: ^4.2.1  
	floating_bottom_navigation_bar: ^1.5.2  
	percent_indicator: ^4.2.3  
	qr_code_scanner: ^1.0.1  
	fl_chart: ^0.66.0  
	sticky_grouped_list: ^3.1.0  
	intl: ^0.19.0  
	custom_radio_grouped_button: ^2.2.1  
	flutter_rating_bar: ^4.0.1  
	banner_carousel: ^1.2.1  
	dropdown_button2: ^2.3.9  
	# mapmyindia_gl: any,  
	mappls_gl: ^1.0.1  
	location: ^5.0.3  
	fluttertoast: ^8.2.1  
	mappls_place_widget: ^1.0.0  
	mappls_direction_plugin: ^1.0.0  
	mappls_nearby_plugin: ^1.0.0  
	turf: ^0.0.7  
	model_viewer_plus: ^1.7.0
	```
   

## Demo

*Add links or screenshots of the app's screens*

# Getting Started

## Installation

1. Have a development enviornment setup like VS Code or Android Studio to run Flutter.
2. Follow a tutorial on how to setup Flutter on your development enviornment.
3. After the setup, clone the dino repository to your computer device.

## Configuration

> [!NOTE]
> Keep a note to add the necessary path variables to the system environment variables.
> Check your pubspec.yaml files for some changes.
> Add necessary changes to the android_manifest.xml, gradle files etc by looking into the respective package details mentioned in pub.dev.

# Folder Structure
The Dino app structure is organized into 5 directories and a main.dart under the `lib` folder:

- **component**
  - app_drawer.dart
  - appbar.dart
  - barchart_didget.dart
  - buttonWithIcons.dart
  - button_with_icon_desc.dart
  - category_option.dart
  - drawer_button.dart
  - screen_handling.dart
  - style.dart
  - switch_with_details_setting_button.dart

- **constant**
  - app_font.dart
  - clr.dart
  - directory.dart
  - setup.dart
  - url.dart

- **models**
  - live_chat_support_data_model.dart

- **screen**
  - **map_module**
    - map_nearby_search_widget.dart
  - **settings_screen**
    - about_setting_screen.dart
    - bluetooth_setting_screen.dart
    - incognito_setting_screen.dart
    - notification_setting_screen.dart
    - ota_update_screen.dart
    - permission_setting_screen.dart
    - personalization_setting_screen.dart
    - security_settings.dart
  - **support_and_services_module**
    - live_chat_support_screen.dart
    - my_ticket_screen.dart
    - raise_ticket_screen.dart
    - schedule_service_screen.dart
    - schedule_service_slot_screen.dart
    - service_booked_confirmation_screen.dart
    - service_booking_confirmation_details_screen.dart
    - service_details_screen.dart
    - service_history_screen.dart
    - support_ticket_screen.dart
  - charger_connected.dart
  - charging_history.dart
  - charging_screen.dart
  - document_screen.dart
  - home_button_navigation_screen.dart
  - home_screen.dart
  - insight_screen.dart
  - login_screen.dart
  - map_screen.dart
  - otp_verification_screenn.dart
  - profile_screen.dart
  - qr_scanner_screen.dart
  - rave_screen.dart
  - settings_screen.dart
  - splash_screen.dart
  - starter_screen.dart
  - support_and_service_screen.dart
  - support_screen.dart

- **secret**
  - map_my_india_key.dart

- **main.dart**


*Additional Information:*

*Make sure to import the necessary components, constants, models, and screens appropriately in your Dart files. Also, ensure that dependencies are added to your `pubspec.yaml` file, and any configuration files or environment variables are properly set up as per the project requirements.*

Feel free to provide more details or elaborate on specific points based on your project's specific needs.


## Dependencies
The list of all the dependencies used in this app are:
```yaml
 cupertino_icons: ^1.0.2  
 otp_text_field: ^1.1.3  
 persistent_bottom_nav_bar: ^5.0.2  
 carousel_slider: ^4.2.1  
 floating_bottom_navigation_bar: ^1.5.2  
 percent_indicator: ^4.2.3  
 qr_code_scanner: ^1.0.1  
 fl_chart: ^0.66.0  
 sticky_grouped_list: ^3.1.0  
 intl: ^0.19.0  
 custom_radio_grouped_button: ^2.2.1  
 flutter_rating_bar: ^4.0.1  
 banner_carousel: ^1.2.1  
 dropdown_button2: ^2.3.9  
 # mapmyindia_gl: any,  
 mappls_gl: ^1.0.1  
 location: ^5.0.3  
 fluttertoast: ^8.2.1  
 mappls_place_widget: ^1.0.0  
 mappls_direction_plugin: ^1.0.0  
 mappls_nearby_plugin: ^1.0.0  
 turf: ^0.0.7  
 model_viewer_plus: ^1.7.0
```
> [!NOTE]
> Always ensure that the app and its packages have minSdkVersion as 21.   
> Some of the packages used above are not compatible with minSdkVersion lesser than 21.
> Ensure that you perform `pub run` after adding any dependency to the pubspec.yaml file.

# Development

## Coding Guidelines
Welcome to the Dino Flutter App coding guidelines. These guidelines aim to ensure consistency, readability, and maintainability of the codebase. Please follow these conventions when contributing to the project.

### Table of Contents
1. [File Organization](#file-organization)
2. [Naming Conventions](#naming-conventions)
3. [Formatting](#formatting)
4. [Comments](#comments)
5. [State Management](#state-management)
6. [Error Handling](#error-handling)
7. [Testing](#testing)

## File Organization

1. **Lib Folder Structure:**
   - Keep a clean and organized folder structure as outlined in the [Folder Structure](#folder-structure) section of the documentation.
   - Group related files together in appropriate directories.

2. **Imports:**
   - Only import the packages you need.
   - Try to hard code as much as possible to decrease the frequency of imports and packages to reduce app size.
   - Group imports into three sections: Dart imports, third-party packages, and local project imports.

## Naming Conventions

1. **File Names:**
   - Use camelCase for file names.
   - Name files according to their content or purpose.

2. **Variable and Function Names:**
   - Use camelCase for variable and function names.
   - Choose descriptive names that convey the purpose of the variable or function.

3. **Class Names:**
   - Use UpperCamelCase for class names.
   - Make class names clear and descriptive.

## Formatting

1. **Indentation:**
   - Use 2 spaces for indentation.

2. **Line Length:**
   - Aim for lines of code to be no longer than 80 characters.
   - Break lines or use appropriate formatting to maintain readability.

3. **Spacing:**
   - Use a single space between operators and after commas.
   - Add a space between the `if`, `else`, `for`, and `while` keywords and the opening parenthesis.

4. **Brackets:**
   - Place opening brackets on the same line as the statement.
   - Place closing brackets on a new line.

## Comments

1. **Function Comments:**
   - Add comments for complex functions or logic to explain the purpose and important steps.

2. **Code Comments:**
   - Use comments sparingly.
   - Comments should provide context or explain why something is done in a certain way.

## State Management

1. **Provider Pattern:**
   - Use the Provider pattern for state management, as it is the preferred approach in this project.

2. **Bloc Pattern:**
   - If needed, consider using the BLoC pattern for more complex state management scenarios.

## Error Handling

1. **Use Try-Catch:**
   - Always use `try-catch` blocks when handling potentially error-prone operations, such as network requests.

2. **Throw Meaningful Exceptions:**
   - Throw exceptions with clear and meaningful messages.
   - Include relevant information about the error.

## Testing

1. **Unit Tests:**
   - Write unit tests for critical and complex functions.
   - Ensure all unit tests pass before merging code.

2. **Widget Tests:**
   - Write widget tests to verify the behavior of UI components.
   - Test edge cases and different scenarios.

Follow these guidelines to maintain a consistent and high-quality codebase. Thank you for your contributions!

### Unit Tests

1. **Command Line:**
   - To run all unit tests, use the following command:
     ```bash
     flutter test
     ```
   - This command runs all the tests located in the `test` directory.

2. **Test Specific File:**
   - To run tests from a specific file, use:
     ```bash
     flutter test test/path/to/test_file.dart
     ```

### Widget Tests

1. **Command Line:**
   - To run widget tests, use:
     ```bash
     flutter test/widget_test.dart
     ```

2. **Test Specific Widget:**
   - To run tests for a specific widget, use:
     ```bash
     flutter test/widget_test.dart testWidgets('Widget Test', (WidgetTester tester) async {
       // Your test logic here
     });
     ```

## Contributing

Welcome to the Dino Flutter App project! We appreciate your interest in contributing. Before you start, please take a moment to review the following guidelines to ensure a smooth and collaborative contribution process.

### Code of Conduct

Please review our [Code of Conduct](./CODE_OF_CONDUCT.md) before contributing. Ensure that all interactions within the project adhere to this code.

### How to Contribute

1. Fork the Repository: Click on the "Fork" button at the top right of the [Dino Flutter App repository](https://github.com/yourusername/dino).

2. Clone your Fork: Clone the forked repository to your local machine using the following command:
   ```bash
	git clone https://github.com/yourusername/dino.git
   ```
3. Create a Branch: Create a new branch for your contribution:
   ```bash
	  git clone https://github.com/yourusername/dino.git
  4. Make Changes: Implement your changes and ensure that your code follows the project's coding guidelines.
    
5.  Run Tests: Before submitting a pull request, make sure to run tests to verify that your changes do not introduce issues.
    
6.  Commit Changes: Commit your changes with a clear and concise commit message:
```bash
	git clone https://github.com/yourusername/dino.git
   ```
 7. Push Changes: Push your changes to your forked repository:
```bash
	git push origin feature/your-feature  
   ```

## Features
Document the major features of the app. Provide code snippets or examples.

## Screenshots and Demo
Include screenshots of different app screens. Provide links to any online demos if available.

## FAQs
Answer common questions users and contributors may have.

## Troubleshooting
Address common issues users may face and their solutions.

## Release Notes
See [Release Notes](./docs/release-notes.md) for details on each release.

## License
Specify the license under which the app is distributed.

## Roadmap
Outline future plans, features, and improvements.
