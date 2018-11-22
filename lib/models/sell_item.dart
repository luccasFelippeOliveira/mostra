import '../models/product.dart';

class SellItem {
  int quantity;
  Product product;
  bool  isSelected = false;

  SellItem(this.product, this.quantity);
}