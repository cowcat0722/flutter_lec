import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:market_app/theme.dart';

import '../../../models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: textTheme().bodyLarge),
        SizedBox(height: 4.0),
        Text('${product.address} · ${product.publishedAt}'),
        SizedBox(height: 4.0),
        Text(
          '${numberFormat(product.price)}원',
          style: textTheme().displayMedium,
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
              visible: product.commentsCount > 0,
              child: _buildIcons(
                product.commentsCount,
                CupertinoIcons.chat_bubble_2,
              ),
            ),
            SizedBox(width: 8.0),
            Visibility(
              visible: product.heartCount > 0,
              child: _buildIcons(
                product.heartCount,
                CupertinoIcons.heart,
              ),
            ),
          ],
        )
      ],
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        SizedBox(width: 4.0),
        Text('$count')
      ],
    );
  }
}
