

class Item
{
  String _itemImage;
  String _itemName;
  String _itemPrice;

  Item(this._itemImage, this._itemName, this._itemPrice);

  String get itemPrice => _itemPrice;

  set itemPrice(String value) {
    _itemPrice = value;
  }

  String get itemName => _itemName;

  set itemName(String value) {
    _itemName = value;
  }

  String get itemImage => _itemImage;

  set itemImage(String value) {
    _itemImage = value;
  }
}