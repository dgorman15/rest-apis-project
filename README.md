# REST API Store Project

A RESTful API built with Flask for managing stores, items, tags, and users with JWT authentication.

This project allows users to:
- Register and log in
- Create and manage stores
- Create items within stores
- Tag items and manage tag relationships
- Authenticate requests using JWT access and refresh tokens

---

## Tech Stack

- Python
- Flask
- Flask-Smorest
- Flask-JWT-Extended
- SQLAlchemy
- SQLite / PostgreSQL (configurable)
- Flask-Migrate

---

## API Endpoints

### Users

- `POST /register` – Create a new user
- `POST /login` – Authenticate user and return JWT tokens
- `POST /logout` – Revoke current JWT token
- `POST /refresh` – Generate a new access token using refresh token
- `GET /user/<user_id>` – Get a user by ID
- `DELETE /user/<user_id>` – Delete a user by ID

### Tags

- `GET /tag/<tag_id>` – Get a single tag by ID
- `GET /store/<store_id>/tag` – Get all tags for a specific store
- `POST /store/<store_id>/tag` – Create a new tag in a store
- `POST /item/<item_id>/tag/<tag_id>` – Link an exisiting tag to an item

### Stores

- `GET /store` – Get all stores
- `GET /store/<store_id>` – Get a single store by ID
- `POST /store` – Create a new store
- `DELETE /store/<store_id>` – Delete a store by ID

### Items

- `GET /item` – Get all items
- `GET /item/<item_id>` – Get a single item by ID
- `POST /item` – Create a new item
- `DELETE /item/<item_id>` – Delete an item by ID
- `PUT /item/<item_id>` – Update item by ID

---

## Features

- JWT authentication with access and refresh tokens
- Token revocation (logout system)
- Fresh vs non-fresh token support
- Store–Item one-to-many relationship
- Item–Tag many-to-many relationship
- Cascading deletes for relational integrity
- RESTful design using Flask-Smorest
- Automatic Swagger UI documentation

---

## How to Run Locally

```bash
git clone <repo-url>
cd REST_API_store_project
python -m venv venv
source venv/bin/activate  # or .venv\Scripts\activate on Windows
pip install -r requirements.txt
flask run
```