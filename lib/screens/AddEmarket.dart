import 'package:flutter/material.dart';
import 'package:e_waste_project/model/emarketModels.dart';

class AddeMarketAlert extends StatefulWidget {
  final Function(emarketList) addeMDevice;
  AddeMarketAlert(this.addeMDevice);

  @override
  _AddeMarketAlertState createState() => _AddeMarketAlertState();
}

class _AddeMarketAlertState extends State<AddeMarketAlert> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
              labelText: hint,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black26,
                ),
              )),
          controller: controller,
        ),
      );
    }

    var nameController = TextEditingController();
    var descriptionController = TextEditingController();
    var featureController = TextEditingController();
    var purchaseController = TextEditingController();

    return Container(
        padding: EdgeInsets.all(8),
        height: 400,
        width: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Add New Device to E-Market',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green,
                ),
              ),
              buildTextField('Device Name', nameController),
              buildTextField('Description', descriptionController),
              buildTextField('Selling Price', purchaseController),
              buildTextField('Device Features', featureController),
              ElevatedButton(
                  onPressed: () {
                    final eMdevice = emarketList(
                        nameController.text,
                        descriptionController.text,
                        purchaseController.text,
                        featureController.text);
                    widget.addeMDevice(eMdevice);

                    Navigator.of(context).pop();
                  },
                  child: Text('Add Device'))
            ],
          ),
        ));
  }
}
