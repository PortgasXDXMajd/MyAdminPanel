import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/widgets/CustomText.dart';


class ClientsDataTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomText(
                text: 'Clients Info',
                color: lightGrey,
                weight: FontWeight.bold,
                size: 16,
              )
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text('Id'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Name'),
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Actions'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7, (index) => DataRow(
                  cells: [
                    DataCell(CustomText(text: '$index',)),
                    DataCell(CustomText(text: 'Mohamed Ba Omar',)),
                    DataCell(CustomText(text: 'Aachen, Germany',)),
                    DataCell(
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.edit,color:  lightGrey),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.delete,color: Colors.red),
                          ),
                        ],
                      )
                    ),
                  ])
              )
          ),
        ],
      ),
    );
  }
}
