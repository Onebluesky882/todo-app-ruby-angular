DecimalPipe = คือการเปลี่ยน Number (ตัวเลข) ให้กลายเป็น String (ข้อความ) ที่จัดรูปแบบแล้ว เพื่อใช้แสดงผลบนหน้าจอครับ

CommonModule = คือการใช้ directives ที่ใช้บ่อยๆ เช่น ngIf, ngFor, ngClass, ngStyle, etc. ครับ

ReactiveFormsModule = คือการใช้ reactive forms ครับ

EventEmitter ใน Angular คือ “ตัวส่ง event จากลูก → พ่อ” (Child → Parent communication)

computed() ใน Angular (Signals) คือ ตัว “คำนวณค่าอัตโนมัติ” ที่อัปเดตเองเมื่อค่าที่มันอิงเปลี่ยน

## RxJS

import { firstValueFrom } from 'rxjs'; แปลง Observable → Promise
ต้องแปลงก่อน
const data = await firstValueFrom(this.api.getProducts());

## Signal

state management แบบ reactive ของ Angular
signal ทำให้

✅ เร็วขึ้น
✅ update เฉพาะจุด
✅ reactive ง่าย
✅ ไม่ต้อง RxJS เยอะ
