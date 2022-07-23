import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_waste_project/model/repairModels.dart';

class AddRepairAlert extends StatefulWidget {
  final Function(RepairList) addRepairCompany;
  AddRepairAlert(this.addRepairCompany);
  @override
  _AddRepairDialogState createState() => _AddRepairDialogState();
}

class _AddRepairDialogState extends State<AddRepairAlert> {
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

    var companyNameController = TextEditingController();
    var descriptionController = TextEditingController();
    var addressController = TextEditingController();
    var contactController = TextEditingController();
    var emailController = TextEditingController();
    var websiteController = TextEditingController();

    return Container(
        padding: EdgeInsets.all(8),
        height: 400,
        width: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Add Repair Company',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green,
                ),
              ),
              buildTextField('Company Name', companyNameController),
              buildTextField('Description', descriptionController),
              buildTextField('Address', addressController),
              buildTextField('Contact', contactController),
              buildTextField('Email Address', emailController),
              buildTextField('Website link', websiteController),
              ElevatedButton(
                  onPressed: () {
                    final Repair = RepairList(
                        companyNameController.text,
                        descriptionController.text,
                        addressController.text,
                        contactController.text,
                        emailController.text,
                        websiteController.text);
                    widget.addRepairCompany(Repair);

                    Navigator.of(context).pop();
                  },
                  child: Text('Submit'))
            ],
          ),
        ));
  }
}
