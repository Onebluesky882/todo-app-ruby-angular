import { inject, Injectable } from '@angular/core';
import { supabase } from '../lib/supabase';
import { SessionService } from './session';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private session = inject(SessionService);

  async login(email: string, password: string) {
    const { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) {
      throw error;
    }
    this.session.setUser(data.user);
    return data;
  }

  async register(email: string, password: string) {
    const { data, error } = await supabase.auth.signUp({
      email,
      password,
    });

    if (error) {
      throw error;
    }

    this.session.setUser(data.user);
    return data;
  }

  async logout() {
    await supabase.auth.signOut();
    this.session.clearUser();
  }

  async getUser() {
    const {
      data: { user },
    } = await supabase.auth.getUser();
    this.session.setUser(user);
    return user;
  }
}
