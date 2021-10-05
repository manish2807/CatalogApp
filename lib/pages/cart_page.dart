import 'package:catalog_app/core/store.dart';
import 'package:catalog_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.make(),
      ),
      body: Column(
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context, _, VxStatus? vxStatus) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.colorScheme.secondary)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not supported yet."
                            .text
                            .color(context.theme.colorScheme.secondary)
                            .make()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          context.theme.colorScheme.onSecondary),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Buy".text.white.make())
              .w24(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Cart is empty".text.xl2.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                  onPressed: () {
                    RemoveMutation(_cart.items[index]);
                  },
                  icon: Icon(Icons.remove_circle_outline)),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
