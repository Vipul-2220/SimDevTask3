import 'package:flutter/material.dart';

class CustomURL extends StatefulWidget {
  const CustomURL({Key? key}) : super(key: key);

  @override
  _CustomURLState createState() => _CustomURLState();
}

class _CustomURLState extends State<CustomURL> {
  bool is_checked = false;
  String hintText = 'hhtps/ xyz.com';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 130,
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Custom URL',
              style: TextStyle(
                color: Color(0xff666666),
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
            ),
            TextField(
              cursorHeight: 25.0,
              onChanged: (value){
                setState(() {
                  hintText = value;
                });
              },
              decoration: InputDecoration(
                focusColor: Color(0xff7F71D9),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff7F71D9),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Color(0xff7F71D9),
                    side: BorderSide(
                      color: Color(0xff7F71D9),
                      width: 2,
                    ),
                    value: is_checked,
                    onChanged: (bool? value) {
                      setState(() {
                        is_checked = value!;
                      });
                    }),
                Text(
                  'Save URL for other events',
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 80,
                child: Center(
                  child: GestureDetector(
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff666666),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffF0F0F0),
                  ),
                  child: Center(
                    child: GestureDetector(
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7F71D9),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
