import 'package:flutter/material.dart';

import '../components/base_layout.dart';
import '../components/labelled_list_panel.dart';
import '../components/product_listitem.dart';
import '../models/product.dart';
import '../models/sell_item.dart';

class VendaPage extends StatelessWidget {
  List<SellItem> _list = new List<SellItem>();

  VendaPage() {
    _list.add(SellItem(Product('123456789010', 20.0), 2));
    _list.add(SellItem(Product('123456789011', 10.0), 2));
    _list.add(SellItem(Product('123456789012', 25.0), 2));
    _list.add(SellItem(Product('123456789013', 24.0), 2));
    _list.add(SellItem(Product('123456789014', 20.0), 5));
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        _buildStatusTextPanel(),
        Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: LabelledListPanel(
                  labelText: 'produtos',
                  listView: ListView.builder(
                      itemCount: _list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductListItem(_list[index]);
                      }),
                )))
      ],
    );
  }

  Widget _buildStatusTextPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildStatusText('subtotal', "R\$ 123,45"),
        _buildStatusText('desconto', "R\$ 123,45"),
        _buildStatusText('total', "R\$ 123,45"),
      ],
    );
  }

  Widget _buildStatusText(String label, String value) {
    TextStyle style = TextStyle(fontSize: 25.0, color: Colors.white);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          label,
          style: style,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(value, style: style),
        SizedBox(
          width: 30.0,
        )
      ],
    );
  }

  Widget _buildBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildCloseButton(),
        _buildCameraButton(),
        _buildAddButton(),
        _buildConfirmButton()
      ],
    );
  }

  Widget _buildCloseButton() {
    return FlatButton(
        onPressed: () {
          print('Close button');
        },
        child: Icon(Icons.close, color: Colors.white, size: 48.00));
  }

  Widget _buildCameraButton() {
    return FlatButton(
        onPressed: () {
          print('Camera button');
        },
        child: Icon(Icons.camera, color: Colors.white, size: 48.00));
  }

  Widget _buildAddButton() {
    return FlatButton(
        onPressed: () {
          print('Add button');
        },
        child: Icon(Icons.add, color: Colors.white, size: 48.00));
  }

  Widget _buildConfirmButton() {
    return FlatButton(
        onPressed: () {
          print('Confirm button');
        },
        child: Icon(Icons.done, color: Colors.white, size: 48.00));
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      renderTopImage: false,
      bodyChild: _buildBody(),
      bottomChild: _buildBottom(),
    );
  }
}
