# Flutter Clean Architecture Todo List

This is a Flutter project based on a tutorial by Rody Davis, implementing the Clean Architecture pattern to create a simple Todo List app. The app allows users to list, add, save, and remove Todo items. 

## Architecture

The app follows the Clean Architecture pattern, which separates the app into three layers:
- **Domain layer**: Contains the business logic and entities of the app. In this app, the `Todo` entity and the `TodoRepository` interface are defined in the domain layer.
- **Data layer**: Contains the implementation of the `TodoRepository` interface, which interacts with the data source (in this case, a local database).
- **Presentation layer**: Contains the UI and presentation logic of the app. In this app, the `TodoListPage` and `TodoFormPage` widgets are defined in the presentation layer.

## Features

The app has the following features:
- **List Todo items**: Users can view a list of all Todo items.
- **Add Todo item**: Users can add a new Todo item by filling out a form.
- **Save Todo item**: Users can update an existing Todo item by editing its details.
- **Remove Todo item**: Users can delete a Todo item by swiping it in the list view.

## Testing

The app includes tests for all the major components, including the domain layer, data layer, and presentation layer. The tests use the `flutter_test` package and cover a range of scenarios, such as adding and removing Todo items, and verifying that the UI is updated correctly.

## Installation

To run the app, clone the repository and run `flutter run` in the project directory. 


## Architecture

The app follows the Clean Architecture pattern, which separates the app into three layers:
- **Domain layer**: Contains the business logic and entities of the app. In this app, the `Todo` entity and the `TodoRepository` interface are defined in the domain layer.
- **Data layer**: Contains the implementation of the `TodoRepository` interface, which interacts with the data source (in this case, a local database).
- **Presentation layer**: Contains the UI and presentation logic of the app. In this app, the `TodoListPage` and `TodoFormPage` widgets are defined in the presentation layer.

## Features

The app has the following features:
- **List Todo items**: Users can view a list of all Todo items.
- **Add Todo item**: Users can add a new Todo item by filling out a form.
- **Save Todo item**: Users can update an existing Todo item by editing its details.
- **Remove Todo item**: Users can delete a Todo item by swiping it in the list view.

## Testing

The app includes tests for all the major components, including the domain layer, data layer, and presentation layer. The tests use the `flutter_test` package and cover a range of scenarios, such as adding and removing Todo items, and verifying that the UI is updated correctly.

## Installation

To run the app, clone the repository and run `flutter run` in the project directory. 

## Credits

This project is based on the tutorial ["Clean Architecture with Flutter"](https://www.udemy.com/course/flutter-clean-architecture-course/) by Rody Davis on Youtube.
