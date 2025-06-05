# 🎯 Flutter Expense Tracker

![Expense Tracker Demo](Project%20Screenshots/Chart%20Screen.png)

A comprehensive expense management solution built with Flutter that helps users track their spending with beautiful visualizations.

---

## ✨ Features

### Core Functionality
- **Expense Logging**: Add expenses with title, amount, date and category
- **Visual Analytics**: Interactive bar chart showing spending distribution
- **Dark/Light Mode**: Full theme support based on system preferences
- **Data Management**: Add, edit, and delete expenses with undo capability

### Technical Highlights
- **Responsive UI**: Adapts to various screen sizes
- **Material 3 Design**: Modern look with dynamic color schemes
- **Form Validation**: Ensures data integrity for all inputs
- **Date Picker**: Intuitive calendar interface for expense dates
- **Category Filtering**: Organize expenses by type (Food, Travel, etc.)

### User Experience
- **Snackbar Notifications**: Undo functionality for deleted items
- **Intuitive Navigation**: Clean layout with floating action button
- **Local Storage**: Data persists between sessions (implementation ready)
- **Currency Formatting**: Proper display of monetary values

---

## 🧠 What I Learned

Building this app deepened my understanding of:

- **State Management**: Using `setState` for reactive UIs
- **Widget Composition**: Creating reusable custom components
- **Data Visualization**: Building dynamic charts with custom painters
- **Form Handling**: Complex input validation and submission
- **Theme Systems**: Implementing dark/light mode with Material 3

---

## 🛠️ Technical Implementation

### Core Architecture
- **Main Components**:
  - `Chart`: Visualizes expense distribution by category
  - `ChartBar`: Custom widget for individual chart bars
  - `ExpenseItem`: Displays individual expense cards
  - `ModelForm`: Handles expense input and validation

### Key Flows
1. User adds expense via bottom sheet form
2. Form validates and adds to state
3. Chart updates dynamically
4. Expenses displayed in scrollable list
5. Swipe-to-delete with undo functionality

### Dependencies
- Built entirely with Flutter SDK
- No external packages required
- Pure Dart implementation

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0+ recommended)
- Dart (2.17+)
- Android Studio/VSCode with Flutter plugins

### Installation
```bash
git clone https://github.com/purvavyawahare/expense-tracker.git
cd expense-tracker
flutter pub get
flutter run
```

## 📸 Screenshots

| Home Screen | Add Expense Screen | Chart Screen | Dark Screen |
|--------------|-----------------|----------------|--------------|
| <img src="Project Screenshots/Home Screen.png" width="200"> | <img src="Project Screenshots/Add Screen.png" width="200"> | <img src="Project Screenshots/Chart Screen.png" width="200"> | <img src="Project Screenshots/Dark Mode Screen.png" width="200">|

---

## 📚 Resources

| Resource | Description |
|----------|-------------|
| [Flutter Documentation](https://flutter.dev/docs) | Official Flutter docs |
| [Dart Language Tour](https://dart.dev/guides/language/language-tour) | Learn Dart basics |
| [Material 3 Guidelines](https://m3.material.io/) | Design system reference |

---

## 👩‍💻 Author

**Purva Vyawahare**  
[![GitHub](https://img.shields.io/badge/GitHub-Profile-181717?style=flat&logo=github)](https://github.com/purvavyawahare)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=flat&logo=linkedin)](https://www.linkedin.com/in/purva-vyawahare-739530332)
