# Rails Backend API

Simple Rails API project built with:

- Ruby on Rails 8
- PostgreSQL
- UUID primary keys
- REST API architecture
- Service layer pattern
- DTO validation pattern

## Requirements

- Ruby 3.3+
- PostgreSQL
- Bundler

## Setup

Clone the repository:

```bash
git clone <repository_url>
cd backend
```

Install gems:

```bash
bundle install
```

Setup database:

```bash
rails db:create
rails db:migrate
```

Run the server:

```bash
rails server
```

Server will start at:

```txt
http://localhost:3000
```

## API Routes

### Get all users

```http
GET /api/v1/users
```

### Get user by id

```http
GET /api/v1/users/:id
```

### Create user

```http
POST /api/v1/users
```

Request body:

```json
{
  "name": "John",
  "email": "john@gmail.com",
  "job": "developer"
}
```

### Update user

```http
PUT /api/v1/users/:id
```

### Delete user

```http
DELETE /api/v1/users/:id
```

## Database

Project uses PostgreSQL with UUID primary keys.

Enable UUID extension:

```ruby
enable_extension 'pgcrypto'
```

## Project Structure

```txt
app/
├── controllers/
├── dtos/
├── models/
└── services/
```

## Relations

Implemented relations:

- One to One
- One to Many
- Many to Many

## Deployment

This project can be deployed using Railway.

Environment variables:

```env
RAILS_MASTER_KEY=
DATABASE_URL=
RAILS_ENV=production
```

## Run Tests

```bash
rails test
```
