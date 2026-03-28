# Checkout system with total calculation

define cart = [
    { "name": "Laptop", "price": 500, "qty": 1 },
    { "name": "Mouse", "price": 20, "qty": 2 },
    { "name": "Keyboard", "price": 50, "qty": 1 }
];

func calculateTotal(items) {
    define total = 0;

    for item in items {
        total = total + (item.price * item.qty);
    }

    return total;
}

define total = calculateTotal(cart);

sldeploy "Cart total: " + total;
