useEffect = ทำงานหลัง render / ตอน state เปลี่ยน / lifecycle

```typescript
import { Component, OnInit, signal, effect } from '@angular/core';

@Component({
  selector: 'app-header',

  standalone: true,

  templateUrl: './header.html',
})
export class ExampleComponent implements OnInit {
  session = signal<any>(null);

  constructor() {
    effect(() => {
      if (this.session()) {
        console.log('✅ user logged in');
      } else {
        console.log('❌ user logged out');
      }
    });
  }

  login() {
    this.session.set({ name: 'John' });
  }

  logout() {
    this.session.set(null);
  }
}
```
