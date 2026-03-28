# Simple shop total calculator

define cart = [
    { "name": "Book", "price": 10, "qty": 2 },
    { "name": "Pen", "price": 2, "qty": 5 },
    { "name": "Bag", "price": 25, "qty": 1 }
];

define total = 0;

for item in cart {
    define itemTotal = item.price * item.qty;
    total = total + itemTotal;

    sldeploy item.name + " x" + item.qty + " = " + itemTotal;
}

sldeploy "Total: " + total;
