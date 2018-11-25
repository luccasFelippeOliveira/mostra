import 'package:flutter/material.dart';
import '../models/stock_item.dart';
import '../models/product.dart';

class StockListItem extends StatelessWidget {
  StockItem _item;
  VoidCallback _onSelect;

  StockListItem(StockItem item, {@required VoidCallback onSelect}) {
    _item = item;
    _onSelect = onSelect;
  }

  Color colorBackground = Color(0xFF8D949D);

  Widget _buildListTile() {
    Product _product = _item.product;
    int _quantity = _item.quantity;
    bool isSelected = _item.isSelected;

    TextStyle textStyle = TextStyle(
      color: isSelected ? colorBackground : Colors.white, fontSize: 18.0
    );

    return ListTile(
      title: Text("ref. ${_product.referencia}",
        style: TextStyle(
          color: isSelected ? colorBackground : Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("quantidade", style: textStyle,),
          SizedBox(width: 5.0,),
          Text("$_quantity", style: textStyle)
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
        child: _buildListTile(),
      )
    );
  }
}