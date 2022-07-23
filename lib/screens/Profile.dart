import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_waste_project/model/DevicesList.dart';
import 'package:e_waste_project/screens/AddDevice.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  List<DevicesList> deviceList = [];
  @override
  Widget build(BuildContext context) {
    void addDeviceData(DevicesList device) {
      setState(() {
        deviceList.add(device);
      });
    }

    void showDeviceDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: AddDeviceAlert(addDeviceData),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: showDeviceDialog,
        child: const Icon(Icons.add),
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
                  deviceList[index].Name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  deviceList[index].SerialNo,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                leading: Icon(Icons.computer),
                trailing: Text(
                  deviceList[index].DatePurchased,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          itemCount: deviceList.length,
        ),
      ),
    );
  }
}
