// on cart record

```json
[
  {
    "status": "onCart",
    "userId": "5edd01dd-35c4-4a59-bab2-d07dc97bb385",
    "qty": 1,
    "total": 2000,
    "items": [
      {
        "id": "1",
        "image": "https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/images/products/moisturizer.jpg",
        "name": "Hydrating Facial Moisturizer",
        "rating": {
          "stars": 4.7,
          "count": 120
        },
        "priceCents": 2000,
        "category": "Beauty & Personal Care",
        "subCategory": "Skincare",
        "keywords": ["moisturizer", "hydration", "skincare", "beauty"],
        "description": "This Hydrating Facial Moisturizer is expertly formulated to deeply nourish and hydrate your skin, providing lasting moisture and a smooth, radiant complexion. Ideal for daily use."
      }
    ]
  },
  {
    "status": "onCart",
    "userId": "5edd01dd-35c4-4a59-bab2-d07dc97bb385",
    "qty": 1,
    "total": 1500,
    "items": [
      {
        "id": "2",
        "image": "https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/images/products/shampoo.jpg",
        "name": "Anti-Dandruff Shampoo",
        "rating": {
          "stars": 4.5,
          "count": 85
        },
        "priceCents": 1500,
        "category": "Beauty & Personal Care",
        "subCategory": "Hair Care",
        "keywords": ["shampoo", "hair care", "anti-dandruff", "cleanse"],
        "description": "Our Anti-Dandruff Shampoo effectively combats flakes and itchiness, promoting a healthy scalp. Infused with soothing ingredients, it cleanses your hair without stripping natural oils."
      }
    ]
  }
]
```

```typescript
export type CartItem = {
  userId: string;
  qty: number;
  total: number;
  status: "onCart" | "paid" | "cancelled" | "received";
  items: Product[];
};
```

insert cartItem with status 'onCart'  
after paid
put status to 'paid'
