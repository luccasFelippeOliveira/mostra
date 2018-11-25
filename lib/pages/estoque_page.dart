import 'package:flutter/material.dart';
import '../components/base_layout.dart';
import '../components/labelled_list_panel.dart';
import '../components/stock_listitem.dart';
import '../components/add_by_reference_alert.dart';
import '../models/stock_item.dart';
import '../models/product.dart';

class EstoquePage extends StatefulWidget {
  List<StockItem> stock = new List<StockItem>();

  void _initList() {
    stock.add(StockItem(Product('12345678910', 12.0), 2));
    stock.add(StockItem(Product('12345678911', 2.0), 10));
    stock.add(StockItem(Product('12345678912', 12.0), 29));
    stock.add(StockItem(Product('12345678913', 12.0), 2));
    stock.add(StockItem(Product('12345678914', 12.0), 2));
    stock.add(StockItem(Product('12345678915', 12.0), 2));
  }

  @override
  State<StatefulWidget> createState() {
    // Initialize stock (PROTOTYPE)
    _initList();
    return _EstoquePage();
  }

}

class _EstoquePage extends State<EstoquePage> {
  bool haveItensSelected = false;
  bool onlyOneItemSelected = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    _loadList();
  }

  Future<Null> _loadList() async {
    // Here we load the list.
    await new Future.delayed(Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
  }

  @override
  void didUpdateWidget(EstoquePage oldWidget) {
    widget.stock = oldWidget.stock;
  }

  Widget _buildBody() {
    List<StockItem> _list = widget.stock;

    var listAfterLoad = LabelledListPanel(
        labelText: 'produtos',
        listView: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return StockListItem(_list[index], onSelect: () {
              onTapItemToggle(index);
            });
          },
        ));

    var listWhenLoading = Center(
      child: Text('carregando ...',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0
        ),
      ),
    );

    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text('estoque',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: isLoading ? listWhenLoading : listAfterLoad),
        )
      ],
    );
  }

  void onTapItemToggle(int index) {
    List<StockItem> _list = widget.stock;
    _list[index].isSelected = !_list[index].isSelected;

    int quantity = _list
        .where((item) => item.isSelected)
        .length;
    setState(() {
      haveItensSelected = quantity > 0;
    });
  }

  List<Widget> _buildBottomButtons() {
    return !haveItensSelected
        ? <Widget>[
      _buildCloseButton(),
      _buildCameraButton(),
      _buildAddButton(),
      _buildConfirmButton()
    ]
        : <Widget>[_buildEditButton(), _buildDeleteButton()];
  }

  Widget _buildBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _buildBottomButtons(),
    );
  }

  Widget _buildCloseButton() {
    return FlatButton(
        onPressed: () {
          print('Close Button');
        },
        child: Icon(Icons.close, color: Colors.white, size: 48.0));
  }

  Widget _buildCameraButton() {
    return FlatButton(
        onPressed: () {
          print('Camera Button');
        },
        child: Icon(Icons.camera, color: Colors.white, size: 48.0));
  }

  Widget _buildAddButton() {
    return FlatButton(
        onPressed: () {
          print('Add Button');
          showDialog<String>(context: context,
              builder: (BuildContext context) {
                return AddByReferenceAlert();
              }
          ).then<String>((String value) {
            if (value != null) {
              widget.stock.add(StockItem(Product(value, 12.0), 1));
            }
          });
        },
        child: Icon(Icons.add, color: Colors.white, size: 48.0));
  }

  Widget _buildConfirmButton() {
    return FlatButton(
        onPressed: () {
          print('Confirm Button');
          print(widget.stock);
        },
        child: Icon(Icons.check, color: Colors.white, size: 48.0));
  }

  Widget _buildEditButton() {
    return FlatButton(
        onPressed: () {
          print('Edit Button');
        },
        child: Icon(Icons.edit, color: Colors.white, size: 48.0));
  }

  Widget _buildDeleteButton() {
    return FlatButton(
        onPressed: () {
          print('Delete Button');
        },
        child: Icon(Icons.delete, color: Colors.white, size: 48.0));
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
