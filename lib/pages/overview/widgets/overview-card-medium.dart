import 'package:flutter/material.dart';
import 'package:flutter_app/pages/overview/widgets/info-card.dart';

class OverviewMediumCardWidget extends StatefulWidget {
  final List<dynamic>? data;
  OverviewMediumCardWidget({this.data});
  @override
  _OverviewMediumCardWidgetState createState() => _OverviewMediumCardWidgetState();
}

class _OverviewMediumCardWidgetState extends State<OverviewMediumCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InfoCard(
              title: widget.data![0]['title'],
              value: widget.data![0]['value'],
              topColor: widget.data![0]['color'],
              onTap: widget.data![0]['onTap'],
              isActive: widget.data![0]['isActive'],
            ),
            InfoCard(
              title: widget.data![1]['title'],
              value: widget.data![1]['value'],
              topColor: widget.data![1]['color'],
              onTap: widget.data![1]['onTap'],
              isActive: widget.data![1]['isActive'],
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.width/80),
        Row(
          children: [
            InfoCard(
              title: widget.data![2]['title'],
              value: widget.data![2]['value'],
              topColor: widget.data![2]['color'],
              onTap: widget.data![2]['onTap'],
              isActive: widget.data![2]['isActive'],
            ),
            InfoCard(
              title: widget.data![3]['title'],
              value: widget.data![3]['value'],
              topColor: widget.data![3]['color'],
              onTap: widget.data![3]['onTap'],
              isActive: widget.data![3]['isActive'],
            )
          ],
        ),
      ],
    );
  }
}
