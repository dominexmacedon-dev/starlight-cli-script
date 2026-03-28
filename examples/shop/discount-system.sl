# Discount system

define total = 200;

func applyDiscount(amount) {
    if (amount >= 200) {
        return amount * 0.8;  # 20% discount
    }

    if (amount >= 100) {
        return amount * 0.9;  # 10% discount
    }

    return amount;
}

define finalPrice = applyDiscount(total);

sldeploy "Original: " + total;
sldeploy "After discount: " + finalPrice;
