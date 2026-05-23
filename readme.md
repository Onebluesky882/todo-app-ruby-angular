# 📦 Fullstack Ruby + Angular E-commerce

A fullstack e-commerce application built with Angular, Ruby on Rails, and a signal-based cart system.

---

## 🚀 Features

### 🛍️ Products
- Product listing & detail pages
- Rating system
- Category / subcategory filtering

### 🛒 Cart
- Add, update quantity, and remove items
- Auto price calculation (signal-based)

### 👤 Authentication
- Login / Logout
- Session stored in `localStorage`
- Protected routes with redirect to login

### 💳 Checkout
- Payment popup UI
- Payment method selection
- Total price summary

### 📦 Orders
- Order history
- Order status: `paid` / `pending` / `cancelled`

---

## 🧠 Tech Stack

### Frontend (Angular)
| Tool | Usage |
|------|-------|
| Angular 17+ | Standalone Components |
| Signals | `signal`, `computed`, `effect` |
| RxJS | `firstValueFrom` |
| TailwindCSS | Styling |
| Angular Router | Navigation & route guards |

### Backend (Ruby)
| Tool | Usage |
|------|-------|
| Ruby on Rails | API server |
| REST API | JSON responses |

---

## 📁 Project Structure

```
frontend/
└── src/app/
    ├── core/        # Services: api, session, cart-store
    ├── features/    # Pages: home, cart, order, login
    ├── shared/      # Reusable components
    ├── layouts/     # Header / footer layout
    └── type/        # TypeScript types
```

---

## 🛠️ Getting Started

### Frontend
```bash
cd frontend
npm install
ng serve
```

### Backend
```bash
cd backend
bundle install
rails db:setup
rails server
```
