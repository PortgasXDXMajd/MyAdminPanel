import 'package:flutter/material.dart';
import 'package:flutter_app/pages/overview/widgets/info-card.dart';

class OverViewLargeCardWidget extends StatefulWidget {
  final List<dynamic>? data;
  OverViewLargeCardWidget({this.data});

  @override
  _OverViewLargeCardWidgetState createState() => _OverViewLargeCardWidgetState();
}

class _OverViewLargeCardWidgetState extends State<OverViewLargeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.data!.map((info) => InfoCard(
        title: info['title'],
        value: info['value'],
        topColor: info['color'],
        onTap: info['onTap'],
        isActive: info['isActive'],
      )).toList(),
    );
  }
}
