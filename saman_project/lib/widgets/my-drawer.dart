import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/size-config.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/hhr.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Mohammed Jebreel',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: SizeConfig.scaleTextFont(20),


                    ),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ListTile(
                    title: Text(
                      'المدونةً',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(16),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'الاحدث عرضاًً',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(16),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'خطط الاشتراكاتً',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(16),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'اتصل بناً',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(16),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'تسجيل خروجً',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: SizeConfig.scaleTextFont(16),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
