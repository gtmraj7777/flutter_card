

class Order{
  String _foodImage;
  String _foodName;
  String _foodPrice;
  String _foodQuantity;
  String _totalPrice;

  Order(this._foodImage, this._foodName, this._foodPrice, this._foodQuantity,
      this._totalPrice);

  String get totalPrice => _totalPrice;

  set totalPrice(String value) {
    _totalPrice = value;
  }

  String get foodQuantity => _foodQuantity;

  set foodQuantity(String value) {
    _foodQuantity = value;
  }

  String get foodPrice => _foodPrice;

  set foodPrice(String value) {
    _foodPrice = value;
  }

  String get foodName => _foodName;

  set foodName(String value) {
    _foodName = value;
  }

  String get foodImage => _foodImage;

  set foodImage(String value) {
    _foodImage = value;
  }
}