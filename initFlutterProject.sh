#!/bin/bash

#Your app name
export APP_NAME=lingopal_app

#The path to create the project in 
export PATH_NAME=~/Development/Projects

# create flutter project
flutter create --org com.carteradams $APP_NAME 
cd ./$APP_NAME

#Add app dependencies
flutter pub add appwrite
flutter pub add flutter_svg
flutter pub add provider

#Create folder structure
mkdir assets
cd ./assets
mkdir animations
mkdir icons
mkdir images
cd ..

cd ./lib
mkdir src
cd ./src
mkdir core
cd ./core
mkdir models
mkdir providers
mkdir services
cat > README.md << EOF
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
EOF
cd ..

mkdir ui
cd ./ui
mkdir pages
mkdir shared
cd ./shared
mkdir pages
mkdir widgets
cd ..
cat > README.md << EOF
Frontend logic

This folder contains all of the pages and widgets for the frontend of the app. This allows you to keep the UI completely seperate from the business logic. (https://medium.com/itnext/best-folder-structure-for-your-next-project-a0d18ad1483a)

1. Pages:
 - Contains all of the seperate views for the project in seperate modules. You can further seperate specific views into subfolders like auth, home, onboarding, splash, etc.

 2. Shared:
 - Contains pages and widgets that you would like to use more than once. This way if you change a shared widget it will apply those changes everywhere and will prevent boilerplate code. Here, you might add pages like "404 not found," "empty," or "no connection."
EOF
cd ..

mkdir utils
cd ./utils
cat > README.md << EOF
Utils

This folder is a storage location that contains anything that controls the functionality of your app. Some examples of what to store in utils include:

 - constants
 - assets
 - enums
 - extensions
 - different language settings
 - routes
 - styles
 - interceptors (Used for manipulating HTTP request/response) (https://medium.com/upday-devs/how-to-set-up-interceptors-for-http-calls-in-flutter-app-b0560985b33#:~:text=What%20are%20Interceptors,the%20value%20of%20the%20request.)
EOF

cat > constants.dart << EOF
const String APPWRITE_PROJECT_ID = "";
const String APPWRITE_URL = "https://cloud.appwrite.io/v1";

const String APPWRITE_DATABASE_ID = "";
const String COLLECTION_MESSAGES = "";
EOF
cd ../../../../

mv ./$APP_NAME $PATH_NAME
echo $APP_NAME "setup complete!"
