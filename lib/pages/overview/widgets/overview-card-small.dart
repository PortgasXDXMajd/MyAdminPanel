import 'package:flutter/material.dart';
import 'package:flutter_app/pages/overview/widgets/info-card.dart';

class OverViewSmallCardWidget extends StatefulWidget {

  final List<dynamic>? data;
  OverViewSmallCardWidget({this.data});


  @override
  _OverViewSmallCardWidgetState createState() => _OverViewSmallCardWidgetState();
}

class _OverViewSmallCardWidgetState extends State<OverViewSmallCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
