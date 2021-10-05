import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p24(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4
                          .color(context.theme.colorScheme.secondary)
                          .make(),
                      Text(catalog.desc,
                              style: Theme.of(context).textTheme.caption)
                          .text
                          .xl
                          .make(),
                      10.heightBox,
                      Text("Sit sed at consetetur erat dolore invidunt erat. Et no tempor amet rebum dolore diam, dolor no voluptua duo et ea lorem aliquyam takimata magna. Diam magna voluptua amet eirmod,.",
                              style: Theme.of(context).textTheme.caption)
                          .text
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
