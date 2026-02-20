# Flutter Authentication_App

A simple and clean Authentication App built using Flutter.
This project demonstrates:

✅ Form Validation
✅ Named Routes
✅ Navigation between screens
✅ Social Media Login UI with CircleAvatar
✅ Clean UI Structure

## 📱 Features

1️⃣ User Authentication Screens
Login Screen
Sign Up Screen
Home Screen

2️⃣ Form Validation
Email validation
Password validation
Required fields validation
Error messages display

Example validation logic:

validator: (value) {
  if (value == null || value.isEmpty) {
    return "This field cannot be empty";
  }
  if (!value.contains("@")) {
    return "Enter a valid email";
  }
  return null;
}

3️⃣ Named Routes
The app uses named routes for better navigation structure.
routes: {
        MyHomePage.routeName: (context) => const MyHomePage(title: 'Home Page'),
        ScreenRegister.routeName: (context) => ScreenRegister(),
        ScreenLogin.routeName: (context) => const ScreenLogin(),
        ScreenPassword.routeName: (context) => const ScreenPassword(),
      },

4️⃣ Navigation
Navigation between screens is handled using:
Navigator.of(context).pushNamed(ScreenRegister);
Navigator.of(context).pushReplacementNamed(ScreenLogin.routeName);

pushNamed() → Navigate to new screen
pushReplacementNamed() → Replace current screen

5️⃣ Social Media Login UI
Social media buttons are built using CircleAvatar:
CircleAvatar(
  radius: 25,
  backgroundColor: Colors.grey.shade200,
  foregroundImage: NetworkImage('image URL'),
)
You can customize them for:
Facebook
Google
Twitter

🛠️ Project Structure
lib/
│
├── main.dart
├── screens/
│   ├── login.dart
│   ├── register.dart
│   └── password.dart

A few resources to get you started if this is your first Flutter project:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
