import { Component, inject, OnInit, signal } from '@angular/core';
import { MainLayout } from './layouts/main-layout/main-layout';
import { AuthService } from './core/services/auth';

@Component({
  selector: 'app-root',
  imports: [MainLayout],
  templateUrl: './app.html',
  styleUrl: './app.css',
})
export class App implements OnInit {
  protected readonly title = signal('demo-angular');

  auth = inject(AuthService);

  ngOnInit(): void {
    this.auth.getUser();
  }
}
