Frontend logic

This folder contains all of the pages and widgets for the frontend of the app. This allows you to keep the UI completely seperate from the business logic. (https://medium.com/itnext/best-folder-structure-for-your-next-project-a0d18ad1483a)

1. Pages:
 - Contains all of the seperate views for the project in seperate modules. You can further seperate specific views into subfolders like auth, home, onboarding, splash, etc.

 2. Shared:
 - Contains pages and widgets that you would like to use more than once. This way if you change a shared widget it will apply those changes everywhere and will prevent boilerplate code. Here, you might add pages like "404 not found," "empty," or "no connection."
