import { CommonModule } from '@angular/common';
import { Component, inject, OnInit } from '@angular/core';
import { SessionService } from '../../core/services/session';
import { Login } from '../components/login/login';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [CommonModule, Login],
  templateUrl: './header.html',
})
export class HeaderComponent implements OnInit {
  session = inject(SessionService);
  ngOnInit(): void {
    console.log('user:', this.session.user());
  }
  isMenuOpen = false;
  isCartCount = 3;
  toggleMenu() {
    this.isMenuOpen = !this.isMenuOpen;
  }

  profileToggle = false;

  setProfileToggle(value: boolean) {
    this.profileToggle = value;
  }
  // if click on cart icon, redirect to cart page
  goToCart() {
    window.location.href = '/cart';
  }

  // if click on logo, redirect to home page
  goToHome() {
    window.location.href = '/';
  }

  //if click icon user toggle login modal
  isLoginModalOpen = false;
  toggleLogin() {
    this.isLoginModalOpen = !this.isLoginModalOpen;
  }

  signOut() {
    this.session.clearUser();
    this.goToHome();
  }

  closeLogin = () => {
    this.isLoginModalOpen = false;
  };
}
