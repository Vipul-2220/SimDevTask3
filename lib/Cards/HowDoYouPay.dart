import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HowDoYouPay extends StatefulWidget {
  const HowDoYouPay({Key? key}) : super(key: key);

  @override
  _HowDoYouPayState createState() => _HowDoYouPayState();
}

class _HowDoYouPayState extends State<HowDoYouPay> {
  bool is_Checked = false;
  bool cash = false;
  bool credit = false;
  bool UPI = false;
  bool EBT = false;
  bool MP = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30),
              child: Text(
                'How do you pay?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff363636),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Price of ticket',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Rs',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 193,
                      child: TextField(
                        cursorHeight: 25.0,
                        decoration: InputDecoration(
                          suffixIconConstraints: BoxConstraints(
                            maxHeight: 40,
                          ),
                          focusColor: Color(0xff7F71D9),
                          hintText: '40',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 18,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff7F71D9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Checkbox(
                        activeColor: Color(0xff7F71D9),
                        side: BorderSide(
                          color: Color(0xff7F71D9),
                          width: 1.5,
                        ),
                        value: is_Checked,
                        onChanged: (bool? value) {
                          setState(() {
                            is_Checked = value!;
                          });
                        }),
                  ),
                  Text(
                    'Free',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Add fee distribution',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 30,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF0F0F0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: SvgPicture.asset('icons/tag.svg',
                              height: 20,
                            ),
                          ),
                          Text('Coupon Code',
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Payment Methods',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: Color(0xff7F71D9),
                      side: BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: cash,
                      onChanged: (bool? value) {
                        setState(() {
                          cash = value!;
                          credit = UPI = EBT = MP = false;
                        });
                      }),
                  Text(
                    'Cash',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Checkbox(
                      activeColor: Color(0xff7F71D9),
                      side: BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: credit,
                      onChanged: (bool? value) {
                        setState(() {
                          credit = value!;
                          cash = UPI = EBT = MP = false;
                        });
                      }),
                  Text(
                    'Credit/ Debit',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: Color(0xff7F71D9),
                      side: BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: UPI,
                      onChanged: (bool? value) {
                        setState(() {
                          UPI = value!;
                          credit = cash = EBT = MP = false;
                        });
                      }),
                  Text(
                    'UPI',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 40,),
                  Checkbox(
                      activeColor: Color(0xff7F71D9),
                      side: BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: EBT,
                      onChanged: (bool? value) {
                        setState(() {
                          EBT = value!;
                          credit = UPI = cash = MP = false;
                        });
                      }),
                  Text(
                    'Electronic Bank Transfer',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: Color(0xff7F71D9),
                      side: BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: MP,
                      onChanged: (bool? value) {
                        setState(() {
                          MP = value!;
                          credit = UPI = EBT = cash = false;
                        });
                      }),
                  Text(
                    'Mobile Payments',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Add payment method',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270.0, top: 40),
              child: Container(
                width: 95,
                color: Colors.white,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  onPressed: () {
                    // Navigator.of(context).popAndPushNamed(ThirdScreen.id);
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
