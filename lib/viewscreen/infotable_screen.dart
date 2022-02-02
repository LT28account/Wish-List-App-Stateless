//***************************************************************************************
//    Title: DataTable class
//    Author: Various Authors for source code
//    Date: 2021
//    Availability: https://api.flutter.dev/flutter/material/DataTable-class.html
//***************************************************************************************/
import 'package:flutter/material.dart';
import 'package:cwa1/viewscreen/view/view_util.dart';

class InfoTableScreen extends StatelessWidget {
  const InfoTableScreen({Key? key}) : super(key: key);

  static const routeName = '/InfoTableScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List Information'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Product Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
            label: Text(
              'Cost',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
            label: Text(
              'To',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('All-Clad Set')),
              DataCell(Text('799.95')),
              DataCell(Text('Isabel')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Brooklinen Down Conforter')),
              DataCell(Text('143.10')),
              DataCell(Text('Avery')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Dyson Outsize Absolute+')),
              DataCell(Text('899.99')),
              DataCell(Text('Asa')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Brooklinen Classic Hardcore Sheet Bundle')),
              DataCell(Text('198')),
              DataCell(Text('Quinton')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Theragun mini')),
              DataCell(Text('199')),
              DataCell(Text('Yevone')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Cartier Ballon Bleu de Cartier Watch')),
              DataCell(Text('11160')),
              DataCell(Text('Oliver')),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context: context, message: 'Add New Item to List');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
