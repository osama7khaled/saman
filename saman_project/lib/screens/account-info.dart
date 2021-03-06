import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/utils/size-config.dart';

class AccountInfo extends StatefulWidget {

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: SizeConfig.scaleHeight(344),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(SizeConfig.scaleHeight(37)),
                    bottomLeft: Radius.circular(SizeConfig.scaleHeight(37))),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    spreadRadius: 0.0,
                    offset: Offset(0, 0), // shadow direction: bottom right
                  )
                ],
                image: DecorationImage(
                  image: AssetImage('images/gh.jpg'),
                  fit: BoxFit.cover
                ),
              ),
              clipBehavior: Clip.antiAlias,
            ),
            Positioned(

              bottom: SizeConfig.scaleHeight(46),
              left: SizeConfig.scaleWidth(16),
              right: SizeConfig.scaleWidth(16),
              child: Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(9),
                    right: SizeConfig.scaleWidth(9),
                top: SizeConfig.scaleHeight(43)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(37),
                  ),
                  border: Border.all(color: kPrimaryColor,width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 6.0,
                      spreadRadius: 1.0,
                      offset: Offset(0, 8), // shadow direction: bottom right
                    )
                  ],
                ),
                height: SizeConfig.scaleHeight(365),

                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(


                          height: SizeConfig.scaleHeight(49),
                          width: SizeConfig.scaleWidth(159),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                            border: Border.all(color: kPrimaryColor ,width: 1),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline,color: kPrimaryColor,),
                              hintText: '?????????? ??????????',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(


                          height: SizeConfig.scaleHeight(49),
                          width: SizeConfig.scaleWidth(159),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                            border: Border.all(color: kPrimaryColor ,width: 1),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline,color: kPrimaryColor,),
                              hintText: '?????????? ????????????',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(


                          height: SizeConfig.scaleHeight(49),
                          width: SizeConfig.scaleWidth(159),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                            border: Border.all(color: kPrimaryColor ,width: 1),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.flag,color: kPrimaryColor,),
                              suffixIcon: Icon(Icons.keyboard_arrow_down,color: kPrimaryColor,),
                              hintText: '970',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(


                          height: SizeConfig.scaleHeight(49),
                          width: SizeConfig.scaleWidth(159),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                            border: Border.all(color: kPrimaryColor ,width: 1),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.call_outlined,color: kPrimaryColor,),
                              hintText: '?????? ????????????',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                SizedBox(
                  height: SizeConfig.scaleHeight(18),
                ),
                    Container(
                      height: SizeConfig.scaleHeight(49),
                      width: SizeConfig.scaleWidth(325),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                        border: Border.all(color: kPrimaryColor ,width: 1),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,color: kPrimaryColor,),
                          hintText: '???????????? ????????????????????',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(18),
                    ),
                    Container(
                      height: SizeConfig.scaleHeight(49),
                      width: SizeConfig.scaleWidth(325),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(24),),
                        border: Border.all(color: kPrimaryColor ,width: 1),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search ,color: kPrimaryColor,),
                          hintText: '????????????',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(18),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.scaleWidth(80)),
                      width: double.infinity,
                      height: SizeConfig.scaleHeight(40),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          '??????',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: SizeConfig.scaleTextFont(20)),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.scaleHeight(290),
              left: SizeConfig.scaleWidth(22),
              child: Stack(
                  children:[
                    CircleAvatar(
                      radius: SizeConfig.scaleHeight(50),
                      backgroundImage: AssetImage('images/hhr.jpg'),
                    ),
                    Positioned(
                      bottom: SizeConfig.scaleHeight(15),
                      right: SizeConfig.scaleWidth(1),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,radius: SizeConfig.scaleHeight(8),
                      ),
                    )
                  ]
              ),
            ),
            Positioned(
              top: SizeConfig.scaleHeight(315),
              left: SizeConfig.scaleWidth(121),
              child: Text('Mohammed Jebreel',
                  style: TextStyle(
                      fontSize: SizeConfig.scaleTextFont(20),
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
