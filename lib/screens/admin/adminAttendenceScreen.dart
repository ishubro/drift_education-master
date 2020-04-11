import 'package:drift_education/widgets/CustomFlatButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:drift_education/model/attendenceModel.dart';
import 'package:drift_education/controller/attendencedata.dart';

class AdminAttendenceScreen extends StatefulWidget {
  @override
  _AdminAttendenceScreenState createState() => _AdminAttendenceScreenState();
}

class _AdminAttendenceScreenState extends State<AdminAttendenceScreen> {
  CalendarController _calendarController;
  var _classItem = ['Class 8', 'Class 9', 'Class 10'];
  var _batchItem = ['Batch1', 'Batch 2', 'Batch 3'];
  var _currentClassValueSelected;
  var _currentBatchValueSelected;
  var studentList = ["Ram", "Shym", "Ravan"];

  List<AttendenceModel> attendenceTiles = List<AttendenceModel>();

  @override
  void initState() {
    // TODO: implement initState
    _calendarController = CalendarController();
    attendenceTiles = getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Attendence'),
      ),
      body: Column(
        children: <Widget>[
          TableCalendar(
            initialCalendarFormat: CalendarFormat.week,
            calendarController: _calendarController,
          ),
          Text('Select Class'),
          DropdownButton<String>(
              items: _classItem.map((String dropDownStringItems) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItems,
                  child: Text(
                    dropDownStringItems,
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentClassValueSelected = newValueSelected;
                });
              },
              value: _currentClassValueSelected),
          Text('Select Batch'),
          DropdownButton<String>(
              items: _batchItem.map((String dropDownStringItems) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItems,
                  child: Text(
                    dropDownStringItems,
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentBatchValueSelected = newValueSelected;
                });
              },
              value: _currentBatchValueSelected),

          //Check box list tiles

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Name of the Student"),
                        Text('Mark Present or Absent')
                      ],
                    ),
                  ),
                  Container(
                    height: 300.0,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: attendenceTiles.length,
                        itemBuilder: (context, index) {
                          return AttendenceTiles(
                            stuName: attendenceTiles[index].name,
                            isChecked: attendenceTiles[index].isCheck,
                          );
                        }),
                  ),
                  CustomFlatButton(
                    textName: "Submit",
                    onPress: () {
                      print("go to next page");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AttendenceTiles extends StatefulWidget {
  String stuName;
  bool isChecked;

  AttendenceTiles({this.stuName, this.isChecked});

  @override
  _AttendenceTilesState createState() => _AttendenceTilesState();
}

class _AttendenceTilesState extends State<AttendenceTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18.0, 0, 18.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.stuName,
            style: TextStyle(fontSize: 18),
          ),
          Checkbox(
              value: widget.isChecked,
              onChanged: (bool value) {
                setState(() {
                  widget.isChecked = value;
                });
              })
        ],
      ),
    );
  }
}
