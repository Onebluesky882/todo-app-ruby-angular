ใช้ตัวแปรใน class

```typescript
export class Header {
  isMenuOpen = false;

  toggleMenu() {
    this.isMenuOpen = !this.isMenuOpen;
  }
}
```

ใช้ใน HTML

<button (click)="toggleMenu()">Toggle</button>

<div *ngIf="isMenuOpen">
  Menu Open
</div>
