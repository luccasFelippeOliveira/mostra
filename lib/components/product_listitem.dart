import 'package:flutter/material.dart';
import '../models/sell_item.dart';
import '../models/product.dart';

class ProductListItem extends StatelessWidget {
  SellItem _item;

  ProductListItem(this._item);

  Widget _buildListTile() {
    Product _product = _item.product;
    int _quantity = _item.quantity;

    return ListTile(
      title: Text("ref. ${_product.referencia}",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          )
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("$_quantity x R\$ ${_product.valor}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
              )
          ),
          Text("R\$ ${_product.valor * _quantity}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
              )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8D949D),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: _buildListTile()
      )
    );
  }
}