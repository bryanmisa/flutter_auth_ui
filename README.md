# flutter_auth_ui
https://firebase.google.com/docs/flutter/setup?platform=ios

## Step 1: 
1. If you haven't already, install the Firebase CLI https://firebase.google.com/docs/cli#setup_update_cli.
2. Log into Firebase using your Google account by running the following command:
```
firebase login 
```
3. Install the FlutterFire CLI by running the following command from any directory:
```
dart pub global activate flutterfire_cli
```

## Step 2: 

// Setting up the firebase
1. Create firebase database
2. Run these commands
``` 
flutter pub add firebase_core
```
```
flutterfire configure
```
3. In your lib/main.dart file, import the Firebase core plugin and the configuration file you generated earlier:
```
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
```
4. Also in your lib/main.dart file, initialize Firebase using the DefaultFirebaseOptions object exported by the configuration file:
```
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
```
```
flutter pub add firebase_auth
```

5. Run the command 
```
flutter run
```
