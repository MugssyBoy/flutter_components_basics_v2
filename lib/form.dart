import 'package:flutter/material.dart';
import './details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // String? _productName;
  final _productController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  bool? _checkBox, _listTileCheckBox = false;

  @override
  void dispose() {
    _productController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();

  //   _productController.addListener(_updateText);
  // }

  // void _updateText() {
  //   setState(() {
  //     _productName = _productController.text;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Store"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              "Product",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Add product details in the form below",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            // const TextField(
            //   decoration: InputDecoration(
            //     hintText: "Product Name",
            //     icon: Icon(Icons.verified_user_outlined),
            //     // prefixIcon: Icon(Icons.add_alarm_sharp),
            //   ),
            // ),
            TextFormField(
              // onChanged: (value) {
              //   _updateText(value);
              // },
              controller: _productController,
              decoration: const InputDecoration(
                  labelText: "Product Name",
                  prefixIcon: Icon(Icons.business_center_outlined),
                  // icon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              // onChanged: (value) {
              //   _updateText(value);
              // },
              controller: _productDescriptionController,
              decoration: const InputDecoration(
                  labelText: "Product Description",
                  prefixIcon: Icon(Icons.shopping_bag_outlined),
                  // icon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder()),
            ),

            // two types of checkbox

            // 1 check box
            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.deepPurple,
              tristate: true,
              value: _checkBox,
              onChanged: (val) {
                setState(() {
                  _checkBox = val;
                });
              },
            ),
            // 2 check box list tile
            CheckboxListTile(
              title: const Text("Top Product"),
              tristate: true,
              value: _listTileCheckBox,
              onChanged: (val) {
                setState(() {
                  _listTileCheckBox = val;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, // switch to start check box
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(200.0, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailPage(
                        productName: _productController.text.toString(),
                      );
                    },
                  ),
                );
              },
              child: Text(
                "Submit Form".toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // TextFormField(
            //   decoration: const InputDecoration(
            //       labelText: "Product Name",
            //       icon: Icon(Icons.verified_user_outlined),
            //       border: OutlineInputBorder()),
            // ),
            /**
             * Radio button
             * 1. Create 2 types of Radio Buttons
             * 2. setState() to update
             * 3. custom widget stateless => setState() in this.class
             * 
             */
          ],
        ),
      ),
    );
  }
}
