import 'package:flutter/material.dart';
import '../models/sell_item.dart';
import '../models/product.dart';

class ProductListItem extends StatefulWidget {
  SellItem _item;

  ProductListItem(this._item);

  @override
  State<StatefulWidget> createState() {
    return _ProductListItem();
  }
}

class _ProductListItem extends State<ProductListItem>{
  bool isSelected = false;

  Color colorBackground = Color(0xFF8D949D);

  Widget _buildListTile() {
    SellItem _item = widget._item;
    Product _product = _item.product;
    int _quantity = _item.quantity;

    TextStyle textStyle = TextStyle(
      color: isSelected ? colorBackground : Colors.white,
      fontSize: 18.0
    );

    return ListTile(
      title: Text("ref. ${_product.referencia}",
          style: TextStyle(
              color: isSelected ? colorBackground : Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          )
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("$_quantity x R\$ ${_product.valor}",
              style: textStyle
          ),
          Text("R\$ ${_product.valor * _quantity}",
              style: textStyle
          )
        ],
      ),
      onLongPress: toggleSelection,
    );
  }

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.white : colorBackground,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: _buildListTile()
      )
    );
  }
}