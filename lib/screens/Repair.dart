import 'package:flutter/material.dart';
import 'package:e_waste_project/model/repairModels.dart';
import 'package:e_waste_project/screens/AddRepair.dart';

class RepairPage extends StatefulWidget {
  RepairPage({Key? key}) : super(key: key);

  @override
  _RepairPageState createState() => _RepairPageState();
}

class _RepairPageState extends State<RepairPage> {
  List<RepairList> repairList = [];
  @override
  Widget build(BuildContext context) {
    void addRepairCompany(RepairList company) {
      setState(() {
        repairList.add(company);
      });
    }

    void showDeviceDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: AddRepairAlert(addRepairCompany),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Repair"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_rounded, size: 34),
            onPressed: showDeviceDialog,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  repairList[index].CompanyName,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  repairList[index].Description,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                leading: Icon(Icons.business),
                trailing: Text(
                  repairList[index].Address,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          itemCount: repairList.length,
        ),
      ),
    );
  }
}
