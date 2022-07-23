import 'package:flutter/material.dart';
import 'package:e_waste_project/model/emarketModels.dart';
import 'package:e_waste_project/model/emarketModels.dart';
import 'package:e_waste_project/screens/AddEmarket.dart';
import '../model/emarketModels.dart';

class EmarketPage extends StatefulWidget {
  EmarketPage({Key? key}) : super(key: key);
  @override
  _EmarketPageState createState() => _EmarketPageState();
}

class _EmarketPageState extends State<EmarketPage> {
  List<emarketList> emarket = [];
  @override
  Widget build(BuildContext context) {
    void addDeviceData(emarketList emdevice) {
      setState(() {
        emarket.add(emdevice);
      });
    }

    void showDeviceDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: AddeMarketAlert(addDeviceData),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("E-Market"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_rounded, size: 30),
            onPressed: showDeviceDialog,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  "Device name:" + emarket[index].eMName,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  "Description: " + emarket[index].eMDescription,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                leading: Icon(Icons.laptop),
                trailing: Text(
                  "R: " + emarket[index].eMPurchasePrice,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          itemCount: emarket.length,
        ),
      ),
    );
  }
}
