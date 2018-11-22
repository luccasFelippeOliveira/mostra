import 'package:flutter/material.dart';
import '../models/sell_item.dart';
import '../models/product.dart';

class ProductListItem extends StatelessWidget {
  SellItem _item;
  VoidCallback _onSelect;

  ProductListItem(SellItem item, {@required VoidCallback onSelect}) {
    _item = item;
    _onSelect = onSelect;
  }

  Color colorBackground = Color(0xFF8D949D);

  Widget _buildListTile() {
    Product _product = _item.product;
    int _quantity = _item.quantity;
    bool isSelected = _item.isSelected;

    TextStyle textStyle = TextStyle(
        color: isSelected ? colorBackground : Colors.white, fontSize: 18.0);

    return ListTile(
      title: Text("ref. ${_product.referencia}",
          style: TextStyle(
              color: isSelected ? colorBackground : Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("$_quantity x R\$ ${_product.valor}", style: textStyle),
          Text("R\$ ${_product.valor * _quantity}", style: textStyle)
        ],
      ),
      onLongPress: _onSelect,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected = _item.isSelected;
    return Container(
        color: isSelected ? Colors.white : colorBackground,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: _buildListTile()));
  }
}
