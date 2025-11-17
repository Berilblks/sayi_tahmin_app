# Number Guessing Game (Sayı Tahmin Uygulaması)

**It is a simple mobile game application that aims to have the user guess a hidden number. Dart and Flutter are easy to use.**


##  About the Project

This project focuses on implementing a classic number guessing game, which serves as an excellent exercise for practicing Flutter development fundamentals, state management, and navigation between screens. The application features a clean, intuitive start screen and a functional game screen.

* **Game Flow:** The game is structured around two main screens: the **Anasayfa (Home Page)** for launching the game, and the **TahminEkrani (Guessing Screen)** where the core logic (random number generation, comparison, and user feedback) takes place.
* **Intuitive UI:** A clear and simple interface encourages immediate user interaction with a striking **Indigo** color scheme and a compelling call-to-action (Start Game button).


##  Technologies

 **Main Language** : **Dart**  The programming language used for defining game logic and UI. 
 **Framework** : **Flutter SDK**  Employed for building the cross-platform mobile user interface. 
 **Navigation** : **`Navigator`**  Used to transition the user smoothly from the home screen to the guessing screen (`TahminEkrani`). 
 **UI Design** : **Material Design**  Utilizing standard Flutter widgets (AppBar, ElevatedButton, Center) for a modern look. 


##  Key Features

The application's home screen and overall structure include the following features:

* **Welcome Screen (`Anasayfa`):** A compelling entry point with the application's title and branding.
* **Visual Element:** Integrates a relevant image asset (`image/zar_resim.png`) to visually represent the game concept.
* **Game Launch:** A dedicated "OYUNA BAŞLA" (Start Game) button initiates navigation to the game logic screen.
* **Core Game Logic (TahminEkrani):** 
    * Random odds of the secret number.
    * Retrieving user accounts and comparing predictions.
    * Providing "UP" or "DOWN" explanations.
    * Counting remaining guessing freedom.
