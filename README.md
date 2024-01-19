
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

## Folder Structure
# Dino Flutter App Folder Structure

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
List and describe the major dependencies used in the project.

## Development

### Coding Guidelines
Specify coding standards and best practices for contributors.

### Testing
Describe how to run tests and provide sample test cases.

### Contributing
Guidelines for developers who want to contribute to the project.

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
