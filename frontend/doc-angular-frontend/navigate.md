```typescript
import { Router } from '@angular/router';

constructor(private router: Router) {}

navigateToHome() {
  this.router.navigate(['/home']);
}
goToCart() {
  this.router.navigate(['/cart']);
}

```
