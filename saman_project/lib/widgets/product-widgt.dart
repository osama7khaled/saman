import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(262),
      width: SizeConfig.scaleWidth(208),
      margin: EdgeInsets.only(left: SizeConfig.scaleWidth(11)),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(20)),
        border: Border.all(color: Color(0XFFF45F5B)),
      ),
      child: Stack(
        children: [
          Container(
            width: SizeConfig.scaleWidth(208),
            height: SizeConfig.scaleHeight(139),
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
            top: SizeConfig.scaleHeight(7),
            left: SizeConfig.scaleWidth(6),
            child: CircleAvatar(
              radius: SizeConfig.scaleHeight(15),
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_outline,
                color: kPrimaryColor,
                size: SizeConfig.scaleHeight(12),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.scaleHeight(12),
              left: SizeConfig.scaleHeight(13),
              right: SizeConfig.scaleHeight(13),
              child: Container(
                height: SizeConfig.scaleHeight(110),
                width: SizeConfig.scaleWidth(185),
                // color: Colors.pink,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'سيارة حديثة',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.scaleTextFont(16),
                              fontFamily: 'Cairo'),
                        ),
                        Text(
                          '5000 ريال',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: SizeConfig.scaleTextFont(16),
                              fontFamily: 'Cairo'),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.edit_road_outlined,
                              size: SizeConfig.scaleHeight(17.22),
                            ),
                            Text(
                              '32012',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.scaleTextFont(16),
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_gas_station,
                                color: kPrimaryColor,
                                size: SizeConfig.scaleHeight(17.22)),
                            Text(
                              'Hybrid',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.scaleTextFont(16),
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(19),
                    ),
                    Container(
                      height: SizeConfig.scaleHeight(29),
                      margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.scaleWidth(24.5),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/product-details");
                        },
                        child: Text(
                          'عرض التفاصيل',
                          style: TextStyle(
                              fontSize: SizeConfig.scaleTextFont(14),
                              fontFamily: 'Cairo'),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            minimumSize: Size(
                              SizeConfig.scaleWidth(159),
                              SizeConfig.scaleHeight(29),
                            )),
                      ),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
