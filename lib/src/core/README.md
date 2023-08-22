Backend Logic

All of the business logic for the project is stored here. This project follows the MVC format. Models allow you to model your project's data. Controllers are functions and classes that perform a specific task that manipulate the models or views, which allows them to "control" or update the app state. Views are pages and widets that the users see on the frontend. (https://medium.com/itnext/mvc-s-design-pattern-in-flutter-6eba15169413)

1. Models:
  - Contains all of the base classes used to model your data (i.e. user.dart, product.dart, etc.)

2. Providers:
  - Contains all of the state management logic for your models (i.e. user_provider.dart, auth_provider.dart, etc.). These classes allow you to share information between widgets and update the state of your app (See Flutter Provider SDK). This folder can also contain BLoC logic, if needed (https://www.biztechcs.com/blog/flutter-bloc-tutorial/#:~:text=BLoC%20stands%20for%20Business%20Logic,central%20place%20in%20your%20project.)

     - ChangeNotifier: This one should be extended to provide an object that can be used to send change notifications to its listeners.
     - ChangeNotifierProvider: It has changes from a ChangeNotifier. Child widgets can access the state object and listen the changes
     - Consumer: Rebuilds part of a subtree when the listening state changes.
     - Provider.of: Allows descendant widgets to access the state object.
    (https://medium.com/bancolombia-tech/flutter-provider-what-is-it-what-is-it-for-and-how-to-use-it-47d6941860d7)

3. Services:
  - Fetches data from the outside world and returns it to your app. These classes could be fetching data from a REST API or any DB connection (i.e. user_service, auth_service, etc.).
