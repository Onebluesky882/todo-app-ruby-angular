CommonModule = ของที่ทำให้ template ใช้ *ngIf, *ngFor, ngClass ได้

**เหมือน การเรียนใช้ฟังชั่นใน library ต่างๆ**

```html
<div *ngIf="isLoggedIn">Hello</div>
```

//map

<li *ngFor="let user of users">

{{ user.name }}

</li>

// state

<div [ngClass]="{ active: isActive }"></div>

css condition state

<div [ngStyle]="{ color: 'red' }"></div>
