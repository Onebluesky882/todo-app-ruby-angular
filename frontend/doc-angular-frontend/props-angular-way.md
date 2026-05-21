```html
<app-user-card *ngIf="user?.name" [name]="user.name"> </app-user-card>
```

```typescript
@Component({
  selector: 'app-user-card',
  standalone: true,
  templateUrl: './user-card.component.html',
  styleUrls: ['./user-card.component.css'],
})
export class UserCardComponent {
  @Input() name: string = '';
}
```

```

Concept             ใช้ทำอะไร             เทียบ React
@Input()            รับข้อมูลจาก parent        props
@Output()           ส่ง event ไป parent     callback / emit

```
