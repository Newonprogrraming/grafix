import 'package:flutter/material.dart';
import 'package:grafix/constans.dart';

var nowDate = DateTime.now();

var sortedtype = nowDate.month.toString();

class DropDownMount extends StatefulWidget {
  const DropDownMount({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownMount> createState() => _DropDownMountState();
}

class _DropDownMountState extends State<DropDownMount> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 200,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            isExpanded: true,
            dropdownColor: kRedColor,
            value: sortedtype,
            items: const [
              DropdownMenuItem(
                value: '1',
                child: Text(
                  'ЯНВАРЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '2',
                child: Text(
                  'ФЕВРАЛЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '3',
                child: Text(
                  'МАРТ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '4',
                child: Text(
                  'АПРЕЛЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '5',
                child: Text(
                  'МАЙ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '6',
                child: Text(
                  'ИЮНЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '7',
                child: Text(
                  'ИЮЛЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '8',
                child: Text(
                  'АВГУСТ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '9',
                child: Text(
                  'СЕНТЯБРЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '10',
                child: Text(
                  'ОКТЯБРЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '11',
                child: Text(
                  'НОЯБРЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
              DropdownMenuItem(
                value: '12',
                child: Text(
                  'ДЕКАБРЬ',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: kMontserratTextStyle,
                ),
              ),
            ],
            onChanged: (v) {
              setState(() {
                sortedtype = v!;
                // ignore: avoid_print
                print(sortedtype);
              });
            },
          ),
        ),
      ),
    );
  }
}
