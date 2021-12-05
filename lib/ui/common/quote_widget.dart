import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoutsera/ui/styleguide/theme_text.dart';


class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
   final String Quote,Author;

  const QuoteWidget({Key key, @required this.backgroundColor, @required this.Quote, @required this.Author}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor,
        width: ScreenUtil.screenWidthDp,
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(48),horizontal: ScreenUtil().setWidth(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
              'assets/left-quote.png',
              color: Colors.white.withOpacity(0.4),
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
          ),
          Expanded(child:
            Center(child:
              Text(
                Quote,style: ThemeText.headline,
              ),
            ),
          ),
          Expanded(child: Center(
              child:Text(
                Author,style: ThemeText.subhead,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

