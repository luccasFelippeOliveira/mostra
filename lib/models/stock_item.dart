import '../models/product.dart';

class StockItem {
  int quantity;
  Product product;
  bool isSelected = false;

  StockItem(this.product, this.quantity);
}