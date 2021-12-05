import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:qoutsera/ui/common/quote_widget.dart';
import 'package:random_color/random_color.dart';


class QuoteScreen extends StatelessWidget {

  final Firestore firestore = Firestore();
  final RandomColor randomColor = RandomColor();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 350,height: 660);
    return Scaffold(
      body: StreamBuilder(
        stream:firestore.collection('quotes').snapshots(),
        builder: (context,snapshot) {
          if (!snapshot.hasData) return Center(
            child: CircularProgressIndicator(),
          );
          return PageView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                final document = snapshot.data.documents[index];
                return QuoteWidget(
                  backgroundColor: randomColor.randomColor(
                      colorBrightness: ColorBrightness.dark),
                  Quote: document['Quote'],
                  Author: document['Author'],
                );
              }
          );
        }
    )
    );
    }

  }





