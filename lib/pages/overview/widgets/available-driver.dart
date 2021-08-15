import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/widgets/CustomText.dart';


class AvailableDriverDataTable extends StatelessWidget {

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
                text: 'Available Drivers',
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
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7, (index) => DataRow(
                  cells: [
                    DataCell(CustomText(text: 'John Markus',)),
                    DataCell(CustomText(text: 'Aachen, Germany',)),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star,color: Colors.deepOrange,size: 18,),
                        SizedBox(width: 4,),
                        CustomText(text: '4.$index')
                      ],
                    )),
                    DataCell(Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: active,width: 0.5),
                        color: light,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                      child: CustomText(
                        text: 'Available Delivery',
                        color: active.withOpacity(0.7),
                        weight: FontWeight.bold,
                      ),

                    )),
                  ])
              )
          ),
        ],
      ),
    );
  }
}
