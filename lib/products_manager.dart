import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text('Add Prduct'),
            onPressed: () {
              setState(() => _products.add('some randome value'));
            },
          ),
          margin: EdgeInsets.all(10.0),
        ),
        Products(_products),
      ],
    );
  }
}
