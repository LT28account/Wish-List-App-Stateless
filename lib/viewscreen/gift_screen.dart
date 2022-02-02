import 'package:flutter/material.dart';
import 'package:cwa1/viewscreen/view/view_util.dart';

enum WishList { Pans, Conforter, Vacuum, Sheets, Theragun, Watch }

class GiftScreen extends StatelessWidget {
  const GiftScreen({Key? key}) : super(key: key);

  static const routeName = '/giftScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gift an Item'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () => showSnackBar(
                  context: context, message: 'Gifted a Mystery Purchase'),
              icon: const Icon(Icons.card_giftcard),
              label: const Text('Gift a Mystery Purchase'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Gift from Wish List',
              style: Theme.of(context).textTheme.headline3,
            ),
            Container(
              color: Colors.purple[200],
              child: DropdownButton(
                value: WishList.Conforter,
                items: [
                  for (var color in WishList.values)
                    DropdownMenuItem(
                      value: color,
                      child: Text(color.name),
                    ),
                ],
                onChanged: (WishList? color) {
                  showSnackBar(
                    context: context,
                    message: 'Gifted a ${color != null ? color.name : 'N/A'}',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
