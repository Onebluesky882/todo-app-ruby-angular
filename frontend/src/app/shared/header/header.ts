import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './header.html',
})
export class HeaderComponent {
  isMenuOpen = false;
  isCartCount = 3;
  toggleMenu() {
    this.isMenuOpen = !this.isMenuOpen;
  }
}
