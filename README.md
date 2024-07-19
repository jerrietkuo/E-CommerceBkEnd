# E-Commerce Back End

## Demo Video

[Walkthrough video here](./assets2/challenge13.webm)

## Description

This project is a back end for an e-commerce site, built with Express.js, Sequelize, and PostgreSQL. It provides a RESTful API for managing categories, products, tags, and the relationships between them.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Models](#models)
- [Associations](#associations)
- [License](#license)
- [Contributing](#contributing)
- [Questions](#questions)

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/jerrietkuo/E-CommerceBkEnd
    ```

2. Navigate to the project directory:

    ```bash
    cd E-CommerceBkEnd
    ```

3. Install dependencies:

    ```bash
    npm install
    ```

4. Set up your PostgreSQL database and create a `.env` file in the root directory with the following environment variables:

    ```plaintext
    DB_NAME=ecommerce_db
    DB_USER=your_postgresql_username
    DB_PASSWORD=your_postgresql_password
    ```

5. Run the database schema and seed the database:

    ```bash
    node seeds/index.js
    ```

## Usage

1. Start the server:

    ```bash
    npm start
    ```

2. Use Insomnia, Postman, or any other API client to interact with the API.

## API Endpoints

### Categories

- **Get all categories**
    - `GET /api/categories`
    - Response: JSON array of all categories

- **Get category by ID**
    - `GET /api/categories/:id`
    - Response: JSON object of the category with the specified ID

- **Create a new category**
    - `POST /api/categories`
    - Request Body: JSON object with `category_name`
    - Response: JSON object of the created category

- **Update a category by ID**
    - `PUT /api/categories/:id`
    - Request Body: JSON object with `category_name`
    - Response: JSON object of the updated category

- **Delete a category by ID**
    - `DELETE /api/categories/:id`
    - Response: JSON object with a message indicating successful deletion

### Products

- **Get all products**
    - `GET /api/products`
    - Response: JSON array of all products

- **Get product by ID**
    - `GET /api/products/:id`
    - Response: JSON object of the product with the specified ID

- **Create a new product**
    - `POST /api/products`
    - Request Body: JSON object with `product_name`, `price`, `stock`, `category_id`
    - Response: JSON object of the created product

- **Update a product by ID**
    - `PUT /api/products/:id`
    - Request Body: JSON object with `product_name`, `price`, `stock`, `category_id`
    - Response: JSON object of the updated product

- **Delete a product by ID**
    - `DELETE /api/products/:id`
    - Response: JSON object with a message indicating successful deletion

### Tags

- **Get all tags**
    - `GET /api/tags`
    - Response: JSON array of all tags

- **Get tag by ID**
    - `GET /api/tags/:id`
    - Response: JSON object of the tag with the specified ID

- **Create a new tag**
    - `POST /api/tags`
    - Request Body: JSON object with `tag_name`
    - Response: JSON object of the created tag

- **Update a tag by ID**
    - `PUT /api/tags/:id`
    - Request Body: JSON object with `tag_name`
    - Response: JSON object of the updated tag

- **Delete a tag by ID**
    - `DELETE /api/tags/:id`
    - Response: JSON object with a message indicating successful deletion

## Models

### Category

- `id`: Integer, primary key, auto increment
- `category_name`: String, not null

### Product

- `id`: Integer, primary key, auto increment
- `product_name`: String, not null
- `price`: Decimal, not null, validates as decimal
- `stock`: Integer, not null, default value 10, validates as numeric
- `category_id`: Integer, references `Category` model's `id`

### Tag

- `id`: Integer, primary key, auto increment
- `tag_name`: String

### ProductTag

- `id`: Integer, primary key, auto increment
- `product_id`: Integer, references `Product` model's `id`
- `tag_id`: Integer, references `Tag` model's `id`

## Associations

- `Product` belongs to `Category`, and `Category` has many `Product` models
- `Product` belongs to many `Tag` models, and `Tag` belongs to many `Product` models through the `ProductTag` model

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Questions

If you have any questions about the project, please contact me at:

- Email: [jerrietkuo@gmail.com](mailto:jerrietkuo@gmail.com)
- GitHub: [Jerrietkuo](https://github.com/jerrietkuo)