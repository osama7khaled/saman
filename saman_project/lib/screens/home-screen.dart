import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
import 'package:saman_project/widgets/consultation.dart';
import 'package:saman_project/widgets/customera-comments.dart';
import 'package:saman_project/widgets/how-to-safe-card.dart';
import 'package:saman_project/widgets/my-drawer.dart';
import 'package:saman_project/utils/size-config.dart';
import 'package:saman_project/widgets/my-small-button.dart';
import 'package:saman_project/widgets/product-widgt.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          key: _key,
          title: Text(
            'المتجر',
            style: TextStyle(color: Colors.black,fontSize: SizeConfig.scaleTextFont(20) ,fontFamily: 'Cairo'),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (context) => Container(
              height: SizeConfig.scaleHeight(20),
              width: SizeConfig.scaleWidth(20),
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.scaleWidth(10),
                vertical: SizeConfig.scaleHeight(10),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu,
                    color: Colors.white, size: SizeConfig.scaleHeight(20)),
              ),
            ),
          )),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.scaleHeight(336),
              child: Stack(
                children: [
                  Container(
                    height: SizeConfig.scaleHeight(209),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/backgro.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.scaleHeight(35),
                    right: SizeConfig.scaleWidth(45),
                    left: SizeConfig.scaleWidth(45),
                    child: Container(
                      height: SizeConfig.scaleHeight(285),
                      width: SizeConfig.scaleWidth(285),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.scaleHeight(20),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XD9FF8D00), Color(0XD9F45F5B)],
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: SizeConfig.scaleWidth(33.5),
                          left: SizeConfig.scaleWidth(33.5),
                          top: SizeConfig.scaleHeight(19),
                          bottom: SizeConfig.scaleHeight(17),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              MainTetField(
                                titleText: 'نوع السيارة',
                              ),
                              MainTetField(
                                titleText: 'الموديل',
                              ),
                              MainTetField(
                                titleText: 'اللون',
                              ),
                              NewAndUsedButtons(),
                              SizedBox(
                                height: SizeConfig.scaleHeight(14),
                              ),
                              Container(
                                height: SizeConfig.scaleHeight(26),
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Color(0XFF070908),
                                    inactiveTickMarkColor: Colors.white,
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 13.0),
                                    thumbColor: Colors.white,
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 20),
                                    overlayColor: Color(0X29EB1555),
                                  ),
                                  child: RangeSlider(
                                      values: _currentRangeValues,
                                      min: 0,
                                      max: 50000,
                                      divisions: 10,
                                      labels: RangeLabels(
                                        _currentRangeValues.start
                                            .round()
                                            .toString(),
                                        _currentRangeValues.end
                                            .round()
                                            .toString(),
                                      ),
                                      onChanged: (RangeValues values) {
                                        setState(() {
                                          _currentRangeValues = values;
                                        });
                                      }),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.scaleHeight(28.5),
                              ),
                              MySButton(
                                onTap: () {},
                                buttonTitle: 'بحث',
                                buttonColor: Color(0XFF231F1F),
                                buttonHeight: SizeConfig.scaleHeight(27),
                                buttonLeftMargin: SizeConfig.scaleWidth(59),
                                buttonRightMargin: SizeConfig.scaleWidth(59),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.scaleHeight(16)),
              child: Text(
                'افضل العلامات التجارية لدينا',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: SizeConfig.scaleTextFont(20),
                ),
              ),
            ),
            BestMarcas(),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.scaleWidth(16),
                  vertical: SizeConfig.scaleHeight(26)),
              child: Row(
                children: [
                  NewOldButtons(
                    onTap: () {},
                    title: Text(
                      'جديد',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.white,
                          fontSize: SizeConfig.scaleTextFont(16)),
                    ),
                    buttonColor: kPrimaryColor,
                  ),
                  SizedBox(
                    width: SizeConfig.scaleWidth(20),
                  ),
                  NewOldButtons(
                    onTap: () {},
                    title: Text(
                      'مستخدم',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontSize: SizeConfig.scaleTextFont(16)),
                    ),
                    buttonColor: Colors.white,
                  ),
                ],
              ),
            ),
            //product listView
            Container(
              height: SizeConfig.scaleHeight(285),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Container have product
                    return Container(
                        margin:
                            EdgeInsets.only(right: SizeConfig.scaleWidth(16)),
                        child: ProductWidget());
                  }),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(33),
            ),
            //product listView
            Container(
              height: SizeConfig.scaleHeight(285),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin:
                            EdgeInsets.only(right: SizeConfig.scaleWidth(16)),
                        child: ProductWidget());
                  }),
            ),

            Consultation(),

            Container(
                margin:
                    EdgeInsets.symmetric(vertical: SizeConfig.scaleHeight(20)),
                child: Title(
                  title: 'شركاؤنا',
                )),
            Partners(),

            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.scaleHeight(20),
                bottom: SizeConfig.scaleHeight(27),
              ),
              child: Title(
                title: 'تقيمات عملائنا',
              ),
            ),
            //customer Comment
            Container(
              margin: EdgeInsets.only(right: SizeConfig.scaleWidth(16)),
              height: SizeConfig.scaleHeight(194),
              width: double.infinity,
              child: ListView.builder(
                  clipBehavior: Clip.none,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomersComments();
                  }),
            ),
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.scaleHeight(20),
                bottom: SizeConfig.scaleHeight(27),
              ),
              child: Title(
                title: 'أحدث التدوينات',
              ),
            ),

            //stack
            HowToSafeCard(),
            SizedBox(
              height: SizeConfig.scaleHeight(30),
            )
          ],
        ),
      ),
    );
  }
}

class Partners extends StatelessWidget {
  const Partners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
      width: double.infinity,

      height: SizeConfig.scaleHeight(86),

      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.arrow_back_ios,size: SizeConfig.scaleHeight(21),),
          ),
          Container(
            height: SizeConfig.scaleHeight(86),
            width: SizeConfig.scaleWidth(292),
            // color: Colors.greenAccent,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: SizeConfig.scaleWidth(17)),
                    height: SizeConfig.scaleHeight(86),
                    width: SizeConfig.scaleWidth(86),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/logo3.png'),
                    )),
                  );
                }),
          ),

          GestureDetector(
            onTap: () {},
            child: Icon(Icons.arrow_forward_ios,size: SizeConfig.scaleHeight(21)),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String? title;

  const Title({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        '$title',
        style: TextStyle(
            fontSize: SizeConfig.scaleTextFont(18), fontFamily: 'Cairo'),
      ),
    );
  }
}

class NewOldButtons extends StatelessWidget {
  final Color? buttonColor;
  final Text? title;
  final VoidCallback? onTap;

  const NewOldButtons({this.buttonColor, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: title,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(
            SizeConfig.scaleWidth(96),
            SizeConfig.scaleHeight(47),
          ),
          primary: buttonColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(5)))),
    );
  }
}

class BestMarcas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: SizeConfig.scaleWidth(16)),
      height: SizeConfig.scaleHeight(151),
      width: double.infinity,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(left: SizeConfig.scaleWidth(16)),
              height: SizeConfig.scaleHeight(149),
              width: SizeConfig.scaleWidth(149),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.scaleHeight(20)),
                border: Border.all(color: Color(0XFFF45F5B)),
              ),
            );
          }),
    );
  }
}

class NewAndUsedButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(27),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'جديد',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: SizeConfig.scaleTextFont(14)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0XFFFB9211),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      SizeConfig.scaleHeight(7),
                    ),
                    bottomRight: Radius.circular(SizeConfig.scaleHeight(7)),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'مستخدم',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: SizeConfig.scaleTextFont(14)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0XFFF32608),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      SizeConfig.scaleHeight(7),
                    ),
                    bottomLeft: Radius.circular(SizeConfig.scaleHeight(7)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainTetField extends StatelessWidget {
  final String? titleText;
  final TextEditingController? textEditingController;

  const MainTetField({this.titleText, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          SizeConfig.scaleHeight(7),
        ),
      ),
      height: SizeConfig.scaleHeight(27),
      child: TextField(
          // controller: textEditingController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: SizeConfig.scaleHeight(4),
                horizontal: SizeConfig.scaleWidth(17)),
            hintText: titleText,
            hintStyle: TextStyle(
                fontSize: SizeConfig.scaleTextFont(14), fontFamily: 'Cairo'),
            border: InputBorder.none,
          )
          // InputDecoration(
          //   hintText: 'نوع السيارة',
          //   contentPadding: EdgeInsets.all(7),
          //   hintStyle: TextStyle(
          //       fontSize: SizeConfig.scaleTextFont(14)),
          //
          //   counterText: ' ',
          //   filled: true,
          //   fillColor: Colors.blue,
          //   border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10),
          //       borderSide: BorderSide.none),
          //
          //   // enabledBorder:
          //   //     _getBorder(color: Colors.white),
          //   // focusedBorder:
          //   //     _getBorder(color: Colors.white),
          //   // errorBorder:
          //   //     _getBorder(color: Colors.white),
          //   // errorText: 'ds',
          //   errorMaxLines: 1,
          //   // prefixIcon: prefixIcon,
          //   // suffixIcon: suffixIcon,
          // ),
          ),
    );
  }
}

OutlineInputBorder _getBorder({Color color: Colors.grey}) {
  return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: color),
      borderRadius: BorderRadius.circular(15));
}
