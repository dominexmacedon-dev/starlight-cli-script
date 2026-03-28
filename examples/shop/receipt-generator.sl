# Receipt generator

define cart = [
    { "name": "Book", "price": 10, "qty": 2 },
    { "name": "Pen", "price": 2, "qty": 3 }
];

func printReceipt(items) {

    define total = 0;

    sldeploy "----- RECEIPT -----";

    for item in items {
        define itemTotal = item.price * item.qty;
        total = total + itemTotal;

        sldeploy item.name + " x" + item.qty + " = " + itemTotal;
    }

    sldeploy "-------------------";
    sldeploy "Total: " + total;
}

printReceipt(cart);
