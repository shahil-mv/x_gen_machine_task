# XGen Machine Task

This project is a Flutter application developed as part of the XGen Machine Task. The application uses the BLoC (Business Logic Component) pattern for state management and follows the Clean Architecture principles.

## Features

- User Authentication (Sign Up, Sign In, Sign Out)
- User Profile Management
- Notes Management (Create, Edit, Delete, View)
- Firebase Integration (Authentication, Firestore)

## State Management

The application uses the BLoC pattern for state management. BLoC helps to separate business logic from the UI, making the code more maintainable and testable.

## Architecture

The application follows the Clean Architecture principles, which include:

- **Presentation Layer**: Contains the UI components (Widgets) and the BLoC classes.
- **Domain Layer**: Contains the business logic, use cases, and entities.
- **Data Layer**: Contains the data sources, repositories, and models.

## Project Structure

The project structure is organized as follows:

lib/ ├── features/ │ ├── screens/ │ │ ├── home/ │ │ │ ├── bloc/ │ │ │ │ ├── home_bloc.dart │ │ │ │ ├── home_event.dart │ │ │ │ ├── home_state.dart │ │ │ ├── domain/ │ │ │ │ ├── model/ │ │ │ │ │ ├── note_model.dart │ │ │ │ ├── repo/ │ │ │ │ │ ├── note_repo.dart │ │ │ ├── home.dart │ │ │ ├── home_details.dart │ │ ├── profile/ │ │ │ ├── profile_page.dart │ │ ├── sign_in/ │ │ │ ├── sign_in_page.dart │ │ ├── sign_up/ │ │ │ ├── sign_up_page.dart │ │ │ ├── bloc/ │ │ │ │ ├── sign_up_bloc.dart │ │ │ │ ├── sign_up_event.dart │ │ │ │ ├── sign_up_state.dart │ │ ├── splash/ │ │ │ ├── splash_screen.dart ├── shared/ │ ├── auth/ │ │ ├── auth_service.dart │ ├── routes/ │ │ ├── route_generator.dart │ │ ├── routes.dart │ ├── app/ │ │ ├── enums/ │ │ │ ├── api_fetch_status.dart │ │ ├── helper.dart

## Getting Started

### Prerequisites

- Flutter SDK
- Firebase account

### Installation

1. Clone the repository:

```sh
git clone https://github.com/shahil-mv/x_gen_machine_task.git
cd x_gen_machine_task
