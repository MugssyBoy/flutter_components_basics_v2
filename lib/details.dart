import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.productName}) : super(key: key);

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_outlined),
              title: Text(
                productName.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
