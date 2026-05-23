import { Component, inject, effect } from '@angular/core';
import { CartItemComponent } from '@/shared/components/cart-items/cart-items';
import { CartStore } from '../../core/services/cart-store';
import { SessionService } from '@/core/services/session';
import { Router } from '@angular/router';

@Component({
  selector: 'app-cart',
  imports: [CartItemComponent],
  templateUrl: './cart.html',
  styleUrl: './cart.css',
})
export class Cart {
  cartStore = inject(CartStore);
  session = inject(SessionService);
  router = inject(Router);

  constructor() {
    if (!this.session.user()) {
      this.router.navigate(['/login']);
    }
  }

  cartItems = this.cartStore.cartItems;

  effect() {
    console.log(this.cartItems());
  }

  updateQuantity(item: any, newQuantity: number) {
    this.cartStore.cartItems.update((items) => {
      return items.map((i) =>
        i.items[0].id === item.items[0].id ? { ...i, qty: newQuantity } : i,
      );
    });
  }

  removeCartItem(itemId: string) {
    this.cartStore.cartItems.update((items) => {
      return items.filter((i) => i.items[0].id !== itemId);
    });
  }
}
