# Shopping App

This is a Flutter-based mobile application that allows users to browse and purchase products. The app fetches product data from an API and displays it in a grid view. Users can view detailed information about each product, navigate through the app using a bottom navigation bar, and enjoy a consistent, stylish user interface.

## Features

- **Product Grid View**: Displays products in a grid layout with images, names, descriptions, and prices.
- **Product Detail Screen**: Shows detailed information about each product, including an image, name, price, and description.
- **Hero Banner**: A visually appealing banner at the top of the main screen.
- **Bottom Navigation Bar**: Provides easy navigation with tabs for Home, Orders, and Profile.
- **Styled App Bar**: A custom-styled app bar with a shopping cart icon.
- **State Management**: Utilizes the Provider package for efficient state management.
- **Responsive Design**: Ensures optimal display across various screen sizes.

## Screenshots

Include screenshots of your app here.

## Installation

To run this project locally, follow these steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/shopping-app.git
    cd shopping-app
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the app:**

    ```bash
    flutter run
    ```

## Project Structure

```plaintext
lib/
|-- models/
|   |-- product.dart
|-- providers/
|   |-- product_provider.dart
|-- screens/
|   |-- main_screen.dart
|   |-- product_detail_screen.dart
|-- services/
|   |-- api_service.dart
|-- main.dart

- **models/**: Contains the Product model.
- **providers/**: Contains the ProductProvider for state management.
- **screens/**: Contains the main screen and product detail screen.
- **services/**: Contains the API service for fetching product data.
- **main.dart**: Entry point of the application.

## Usage

- **Browse Products**: Open the app to see a grid view of products.
- **View Product Details**: Tap on any product to view its detailed information.
- **Navigate**: Use the bottom navigation bar to switch between Home, Orders, and Profile tabs.

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.