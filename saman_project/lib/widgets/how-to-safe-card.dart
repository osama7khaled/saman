import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class HowToSafeCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(343),
      width: double.infinity,
      margin: EdgeInsets.only(
        right: SizeConfig.scaleWidth(16),
        left: SizeConfig.scaleWidth(16),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(20),

          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ]
      ),
      child: Stack(
        children: [
          Container(
            width: SizeConfig.scaleWidth(343),
            height: SizeConfig.scaleHeight(154),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  SizeConfig.scaleHeight(20),
                ),
                topLeft: Radius.circular(
                  SizeConfig.scaleHeight(20),
                ),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,

                image: AssetImage('images/carr.jpg'),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.scaleHeight(7),
            left: SizeConfig.scaleWidth(12),
            right: SizeConfig.scaleWidth(12),
            child: Container(
              height: SizeConfig.scaleHeight(148),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    height: SizeConfig.scaleHeight(21),
                    child: Text(
                      'كيف تحافظ على سيارتك',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.scaleTextFont(16),
                          fontFamily: 'Bahij'),
                    ),
                  ),

                  Container(
                    height: SizeConfig.scaleHeight(71),
                    margin: EdgeInsets.only(top: SizeConfig.scaleHeight(10)),

                    child: Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.scaleTextFont(12),
                          fontFamily: 'Bahij'),
                    ),
                  ),

                  Container(
                    height: SizeConfig.scaleHeight(44),
                    margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.scaleWidth(92),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('متابعة القراءة',style: TextStyle(
                          fontSize: SizeConfig.scaleTextFont(16),
                          fontFamily: 'Cairo'
                      ),),
                      style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          minimumSize: Size(
                            SizeConfig.scaleWidth(159),
                            SizeConfig.scaleHeight(44),
                          ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(12))
                        )
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}