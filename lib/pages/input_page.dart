import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grafix/constans.dart';
import 'package:grafix/widget/calendar_day.dart';
import 'package:grafix/widget/calendar_month.dart';
import 'package:grafix/widget/container_text.dart';
import 'package:grafix/widget/diaolod_widget.dart';
import 'package:grafix/widget/list_card_widget.dart';
import 'package:grafix/widget/reusable_card.dart';
import 'package:grafix/widget/reusable_card_list.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _InputPageState extends State<InputPage> {
  ///Переменная [_datework] хранит информацию о дате когда была совершена работа
  ///Переменная [_scorework] хранит информацию о времени, сколько проработал человек
  ///Переменная [informationList] переменная которая хранит список [дата,часы]
  String _datework = '';
  String _scorework = '';
  List<List> informationList = [];

  @override
  void initState() {
    informationList.addAll([
      ["12.08", 10],
      ["13.08", 12]
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      //AppBar
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'GRAFIX',
            textAlign: TextAlign.center,
            style: kMontserratTextStyle,
          ),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(
              "assets/image/frame.svg",
            ),
          )),
      //Боковая панель, в которой можно выбирать раздел, для перехода.
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                child: Text(
                  "GRAFIX",
                  style: kMontserratTextStyle,
                ),
                decoration: BoxDecoration(
                  color: kRedColor,
                )),
            Text(
              "Ты пидор",
              style: kMontserratTextStyleBlack,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Блок: месяц, название графика
          Expanded(
              flex: 2,
              child: ReusableCard(
                child: Row(
                  children: [
                    const Expanded(
                      child: ContentText(
                          child: DropDownMount(),
                          margin: EdgeInsets.only(left: 15)),
                    ),
                    Expanded(
                      child: ContentText(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'ГРАФИК 123166786',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: kMontserratTextStyle,
                          ),
                        ),
                        margin: EdgeInsets.zero,
                      ),
                    )
                  ],
                ),
              )),
          //Лист с информацией Дата (день, месяц), Часы
          Expanded(
              flex: 18,
              child: ReusableCardList(
                  child: ListView.builder(
                      padding:
                          const EdgeInsets.only(top: 10, right: 5, left: 5),
                      itemCount: informationList.length,
                      itemBuilder: (BuildContext context, int index) {
                        ///Виджет листа заполнения
                        return ListCardWidget(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      informationList[index][0],
                                      textAlign: TextAlign.center,
                                      style: kMontserratTextStyleBlack,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   width: 20,
                                  // ),
                                  Expanded(
                                    child: Text(
                                      informationList[index][1].toString() +
                                          ' часов',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: kMontserratTextStyleBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }))),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kRedColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: kRedColor)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'ДОБАВИТЬ',
                      style: kMontserratTextStyle,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                //Фунуция добавления записей в бд
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return DialogWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Добавить запись",
                                  style: kMontserratTextStyleBlack,
                                ),
                                CalendarDayWidget(),
                                // TextField(
                                //   onChanged: (String value) {
                                //     _datework = value;
                                //   },
                                TextField(
                                  onChanged: (String value) {
                                    _scorework = value;
                                  },
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _datework = selectedDate.day
                                                .toString() +
                                            " " +
                                            listOfMonths[selectedDate.month - 1]
                                                .toString();
                                        selectedDate.month;
                                        if (_scorework != '' &&
                                            _datework != '') {
                                          informationList
                                              .add([_datework, _scorework]);
                                        }

                                        _datework = '';
                                        _scorework = '';
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Добавить"))
                              ],
                            ),
                          );
                        });
                  });
                },
              ),
            ),
          )

          // ButtonWidget(
          //   onTap: () {
          //   },
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Text(
          //         'ДОБАВИТЬ',
          //         style: kMontserratTextStyle,
          //       )
          //     ],
          //   ),
          // ))
        ],
      ),
    );
  }
}
