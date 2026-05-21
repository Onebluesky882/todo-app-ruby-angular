```
src/app/
 ├── features/
 │    ├── home/
 │    │    └── home.component.ts
 │    ├── cart/
 │    │    └── cart.component.ts
 │    ├── product/
 │    │    └── product.component.ts
 │
 ├── app.routes.ts
 ├── app.component.ts
```

ng g component features/home

ng g component features/cart

```typescript
//  file :  app.routes.ts
import { Routes } from '@angular/router';
import { HomeComponent } from './features/home/home.component';
import { CartComponent } from './features/cart/cart.component';

export const routes: Routes = [
  {
    path: '',
    component: HomeComponent,
  },
  {
    path: 'cart',
    component: CartComponent,
  },
];
```
