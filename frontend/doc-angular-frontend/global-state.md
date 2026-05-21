src/app/core/stores/
ng g service core/stores/auth
ng g service core/stores/cart

```typescript
import { Injectable, signal } from '@angular/core';

@Injectable({ providedIn: 'root' })
export class AuthStore {
  session = signal<any>(null);

  setSession(user: any) {
    this.session.set(user);
  }

  logout() {
    this.session.set(null);
  }
}
```

// cart store

```typescript
import { Injectable, signal, computed } from '@angular/core';

export interface CartItem {
  id: number;

  name: string;

  price: number;

  qty: number;
}

@Injectable({
  providedIn: 'root',
})
export class CartStore {
  // 🟢 global state

  private items = signal<CartItem[]>([]);

  // 🟢 readable state

  cartItems = this.items;

  // 🟢 derived state (เหมือน zustand selector)

  totalItems = computed(() => this.items().reduce((sum, item) => sum + item.qty, 0));

  totalPrice = computed(() => this.items().reduce((sum, item) => sum + item.qty * item.price, 0));

  // 🟢 actions

  addToCart(product: CartItem) {
    const current = this.items();

    const existing = current.find((i) => i.id === product.id);

    if (existing) {
      this.items.set(current.map((i) => (i.id === product.id ? { ...i, qty: i.qty + 1 } : i)));
    } else {
      this.items.set([...current, { ...product, qty: 1 }]);
    }
  }

  removeItem(id: number) {
    this.items.set(this.items().filter((i) => i.id !== id));
  }

  clearCart() {
    this.items.set([]);
  }
}
```
