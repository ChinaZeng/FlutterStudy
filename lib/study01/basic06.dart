//假设的购物应用程序显示要出售的各种产品，并维护打算购买的购物车
import 'package:flutter/material.dart';

//listview
class ShoppingList extends StatefulWidget {
  final List<Product> products;

  const ShoppingList({Key key, this.products}) : super(key: key);

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();

  @override
  void didUpdateWidget(ShoppingList oldWidget) {
    print("_ShoppingListState didUpdateWidget:$oldWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("_ShoppingListState dispose");
    super.dispose();
  }

  @override
  void initState() {
    print("_ShoppingListState initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("_ShoppingListState build");
    return Scaffold(
      appBar: AppBar(
        title: Text("shopping list"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: _getChildList(),
      ),
    );
  }

  List<Widget> _getChildList() {
    return widget.products.map(_product2ListItem).toList();
  }

  _ShoppingListItem _product2ListItem(Product product) {
    return _ShoppingListItem(
      product: product,
      inCard: _shoppingCart.contains(product),
      onCardChange: _onCardChange,
    );
  }

  void _onCardChange(Product product, bool inCard) {
    setState(() {
      if (!inCard) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }
}

//点击回调
typedef void CardChangeCallback(Product product, bool inCard);

//item
class _ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCard;
  final CardChangeCallback onCardChange;




  _ShoppingListItem({this.product, this.inCard, this.onCardChange});

  @override
  Widget build(BuildContext context) {
    print(_getString());
    return ListTile(
      onTap: () {
        onCardChange(product, inCard);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getStyle(context),
      ),
    );
  }

  Color _getColor(BuildContext context) {
    return inCard ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getStyle(BuildContext context) {
    if (!inCard) return null;
    return TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  String _getString() {
    return '_ShoppingListItem{product: $product, inCard: $inCard, onCardChange: $onCardChange}';
  }
}

//item数据实体
class Product {
  final String name;

  Product({this.name});

  @override
  String toString() {
    return 'Product{name: $name}';
  }
}
