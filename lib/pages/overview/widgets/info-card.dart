import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/helpers/responsiveness.dart';
import 'package:flutter_app/widgets/CustomText.dart';

class InfoCard extends StatefulWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function? onTap;
  InfoCard({this.title='',this.value='',this.isActive = false,this.topColor=Colors.black,this.onTap});
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    if(!ResponsiveWidget.isSmallScreen(context)){
      return LargeInfoCard(
        title: widget.title,
        value: widget.value,
        topColor: widget.topColor,
        onTap: widget.onTap,
      );
    }else{
      return SmallInfoCard(
        title: widget.title,
        value: widget.value,
        topColor: widget.topColor,
        onTap: widget.onTap,
      );
    }
  }
}


class LargeInfoCard extends StatefulWidget {
  final String title;
  final String value;
  final Color topColor;
  final Function? onTap;
  LargeInfoCard({this.title='',this.value='',this.topColor=Colors.black,this.onTap});
  @override
  _LargeInfoCardState createState() => _LargeInfoCardState();
}

class _LargeInfoCardState extends State<LargeInfoCard> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          if(widget.onTap != null){
            widget.onTap!();
          }
        },
        onHover: (isHovering){
          if(isHovering){
            setState(() {
              isActive = true;
            });
          }else{
            setState(() {
              isActive = false;
            });
          }

        },
        child: Container(
          height: 136,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              /*BoxShadow(
                offset: Offset(0,6),
                color: isActive? lightGrey.withOpacity(0.3): lightGrey.withOpacity(0.1),
                blurRadius: 5
              )*/
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: widget.topColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        height: 10,

                      )
                  )
                ],
              ),
              Expanded(child: Container()),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${widget.title}\n',
                        style: TextStyle(fontSize: 16,color: isActive? active:lightGrey)
                    ),
                    TextSpan(
                        text: '${widget.value}',
                        style: TextStyle(fontSize: 40,color: isActive? active:dark)
                    ),

                  ]
                ),
              ),
              Expanded(child: Container()),



            ],
          ),

        ),
      ),
    );
  }
}



class SmallInfoCard extends StatefulWidget {
  final String title;
  final String value;
  final Color topColor;
  final Function? onTap;
  SmallInfoCard({this.title='',this.value='',this.topColor=Colors.black,this.onTap});
  @override
  _SmallInfoCardState createState() => _SmallInfoCardState();
}

class _SmallInfoCardState extends State<SmallInfoCard> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(widget.onTap != null){
          widget.onTap!();
        }
      },
      onHover: (isHovering){
        if(isHovering){
          setState(() {
            isActive = true;
          });
        }else{
          setState(() {
            isActive = false;
          });
        }

      },
      child: Container(
        height: 80,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,6),
                color: lightGrey.withOpacity(0.1),
                blurRadius: 12
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            CustomText(text: widget.title,size: 16,color: isActive? active:lightGrey,),
            Expanded(child: Container()),
            CustomText(text: widget.value,size: 40,color: isActive? active:dark),
          ],
        ),
      ),
    );
  }
}