import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_waste_project/model/DevicesList.dart';

class AddDeviceAlert extends StatefulWidget {
  final Function(DevicesList) addDevice;
  AddDeviceAlert(this.addDevice);

  @override
  _AddDeviceDialogState createState() => _AddDeviceDialogState();
}

class _AddDeviceDialogState extends State<AddDeviceAlert> {
  // const AddDeviceAlert({Key? key}) : super(key: key);
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
    var serialNoController = TextEditingController();
    var datePurchaseController = TextEditingController();

    return Container(
        padding: EdgeInsets.all(8),
        height: 400,
        width: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Add New Device',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green,
                ),
              ),
              buildTextField('Device Name', nameController),
              buildTextField('Device Serial No', serialNoController),
              buildTextField('Date Purchase', datePurchaseController),
              ElevatedButton(
                  onPressed: () {
                    final device = DevicesList(nameController.text,
                        serialNoController.text, datePurchaseController.text);
                    widget.addDevice(device);

                    Navigator.of(context).pop();
                  },
                  child: Text('Add Device'))
            ],
          ),
        ));
  }
}
