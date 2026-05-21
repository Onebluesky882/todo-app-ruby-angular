```
src/
 ├── app/
 │   ├── core/          # services, guards, interceptors
 │   ├── shared/        # reusable components
 │   ├── features/      # pages (domain-based)
 │   │    ├── auth/
 │   │    ├── users/
 │   │    └── foods/
 │   ├── layouts/       # main layout / admin layout
 │   └── app.routes.ts
 │
 ├── environments/
 └── assets/

```

ng g module core
ng g module shared
ng g module features/auth
ng g module features/users

## core คือ services, guards, interceptors

## shared คือ reusable components

## features คือ pages (domain-based)

## layouts คือ main layout / admin layout

🚨 กฎสำคัญ (จำให้ดี)

❌ ห้าม:

- เอา login page ไปไว้ core
- เอา UI ไปไว้ core

❌ ห้าม:

- เอา business logic ของ API ไปไว้ features

💡 สรุปง่ายที่สุด

👉 features/auth = หน้า login/register
👉 core/auth = logic authentication system

## Angular พยายาม “จัดระบบให้ครบตั้งแต่แรก”

Angular ไม่ได้ให้คุณเลือกเองเหมือน React

มันบังคับ structure เช่น:

- module / standalone
- service
- dependency injection
- router
- http client
- rxjs
