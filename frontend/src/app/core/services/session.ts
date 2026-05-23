import { isPlatformBrowser } from '@angular/common';
import { Injectable, signal, computed, effect, PLATFORM_ID, inject } from '@angular/core';
import { User } from '@supabase/supabase-js';

@Injectable({
  providedIn: 'root',
})
export class SessionService {
  user = signal<User | null>(null);
  private platformId = inject(PLATFORM_ID);
  isLoggedIn = computed(() => !!this.user());

  constructor() {
    this.loadFromStorage();

    effect(() => {
      const user = this.user();

      // ✅ เช็คก่อนว่าอยู่ใน browser
      if (!isPlatformBrowser(this.platformId)) return;

      if (user) {
        localStorage.setItem('user', JSON.stringify(user));
      } else {
        localStorage.removeItem('user');
      }
    });
  }

  setUser(user: User | null) {
    this.user.set(user);
  }

  clearUser() {
    if (isPlatformBrowser(this.platformId)) {
      localStorage.removeItem('user');
    }
    this.user.set(null);
  }

  private loadFromStorage() {
    if (!isPlatformBrowser(this.platformId)) return; // ✅ ใช้ให้สม่ำเสมอ

    const data = localStorage.getItem('user');
    if (!data) return;

    try {
      this.user.set(JSON.parse(data));
    } catch {
      this.user.set(null);
    }
  }
}
