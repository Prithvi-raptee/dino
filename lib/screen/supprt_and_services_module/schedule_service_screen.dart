import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/supprt_and_services_module/schedule_service_slot_screen.dart';
import 'package:dino/screen/supprt_and_services_module/service_booked_confirmation_screen.dart';
import 'package:dino/screen/supprt_and_services_module/service_booking_confirmation_details_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constant/directory.dart';

class ScheduleServiceScreen extends StatefulWidget {
  const ScheduleServiceScreen({super.key});

  @override
  State<ScheduleServiceScreen> createState() => _ScheduleServiceScreenState();
}

class _ScheduleServiceScreenState extends State<ScheduleServiceScreen> {
  int _currentStep = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Color selectedColor = Clr.teal2;
  String selectedService = "general";
  String selectedSeverity = "minor";
  String selectedMovable = "movable";
  String selectedServiceMode = "self";

  String finalStepDetails = '';

  static const List<String> stateList = <String>[
    'State1',
    'State2',
    'State3',
    'State4'
  ];
  final List<String> cityList = [
    'City1',
    'City2',
    'City3',
    'City4',
    'City5',
    'City6',
    'City7',
    'City8',
  ];
  final List<String> pincodeList = [
    'PinCode1',
    'PinCode2',
    'PinCode3',
    'PinCode4',
    'PinCode5',
    'PinCode6',
    'PinCode7',
    'PinCode8',
  ];
  final List<String> dealerList = [
    'Dealer1',
    'Dealer2',
    'Dealer3',
    'Dealer4',
    'Dealer5',
    'Dealer6',
    'Dealer7',
    'Dealer8',
  ];
  String? selectedState;
  String? selectedCity;
  String? selectedPincode;

  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  String? selectedDealer;

  onStepTapped(int value) {
    setState(() {
      _currentStep = value;
    });
  }

  Widget controlsBuilder(context, details) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Clr.teal2),
            onPressed: details.onStepContinue,
            child:
                _currentStep == 5 ? const Text("Submit") : const Text("Next"),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Clr.black1),
              onPressed: details.onStepCancel,
              child: const Text("Back")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBarToHome(context, "Support and Services"),
      body: SafeArea(
        child: Theme(
          data: ThemeData(
            canvasColor: Colors.black87,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Colors.white60,
                  background: Clr.teal2,
                  secondary: Colors.white10,
                ),
          ),
          child: Stepper(
            physics: const PageScrollPhysics(),
            margin: const EdgeInsets.only(left: 45),
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep == 5) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    elevation: 24.0,
                    backgroundColor: Clr.black,
                    title: const Text("SUBMIT?"),
                    content: const Text("Are you sure you want to submit?"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceBookingConformationScreen(),
                          ),
                        ),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              } else if (_currentStep < 5) {
                if (_currentStep == 0) {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      _currentStep += 1;
                    });
                  }
                } else {
                  setState(() {
                    _currentStep += 1;
                  });
                }
              } else {
                // Navigate to ServiceBookingConfirmationDetailsScreen() when Done is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ServiceBookingConformationScreen(),
                  ),
                );
              }
            },
            onStepCancel: _currentStep == 0
                ? null
                : () {
                    setState(() {
                      _currentStep -= 1;
                    });
                  },
            onStepTapped: onStepTapped,
            controlsBuilder: controlsBuilder,
            steps: [
              Step(
                title: const Text('Select type of services'),
                content: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedService = "general";
                                });
                              },
                              child: Container(
                                height: 150,
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: selectedService == "general"
                                        ? selectedColor
                                        : Clr.grey1),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "General Service",
                                        style: Style.fadeTextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Clr.white1),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Periodic services so that we take care of your bike",
                                        style: Style.fadeTextStyle(
                                            color: Clr.white1, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedService = "specific";
                                });
                              },
                              child: Container(
                                height: 150,
                                margin: const EdgeInsets.all(3),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: selectedService == "specific"
                                        ? selectedColor
                                        : Clr.grey1),
                                child: SingleChildScrollView(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Specific Issue",
                                          style: Style.fadeTextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Clr.white1),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "For any specific issue in your motorcycle",
                                          style: Style.fadeTextStyle(
                                              color: Clr.white1, fontSize: 10),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedService = "accident";
                                });
                              },
                              child: Container(
                                height: 150,
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: selectedService == "accident"
                                        ? selectedColor
                                        : Clr.grey1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Accident Service",
                                        style: Style.fadeTextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Clr.white1),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Accidental Damage",
                                        style: Style.fadeTextStyle(
                                            color: Clr.white1, fontSize: 10),
                                      )
                                    ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                title: const Text('What is the severity of the issue?'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedSeverity = "minor";
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedSeverity == "minor"
                                      ? selectedColor
                                      : Clr.grey1),
                              child: Text(
                                "Minor",
                                style: Style.fadeTextStyle(
                                    fontSize: 10, color: Clr.white1),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              selectedSeverity = "major";
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedSeverity == "major"
                                      ? selectedColor
                                      : Clr.grey1),
                              child: Text(
                                "Major",
                                style: Style.fadeTextStyle(
                                    fontSize: 10, color: Clr.white1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Step(
                title: const Text('What is the issue?'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        color: Clr.grey1,
                        // height: 200,
                        child: TextFormField(
                          scrollPadding: const EdgeInsets.all(0),
                          enabled: true,
                          minLines: 5,
                          maxLines: 10,
                          decoration: const InputDecoration(
                            hintText: "Describe your issue..",
                            border: InputBorder.none,
                          ),
                        ))
                  ],
                ),
              ),
              Step(
                title: const Text('Select mode of service:'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedServiceMode = "self";
                              });
                            },
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedServiceMode == "self"
                                      ? selectedColor
                                      : Clr.grey1),
                              child: Text(
                                "Self drop",
                                style: Style.fadeTextStyle(
                                    fontSize: 10, color: Clr.white1),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              selectedServiceMode = "pickup";
                              setState(() {});
                            },
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedServiceMode == "pickup"
                                      ? selectedColor
                                      : Clr.grey1),
                              child: Text(
                                "Pick up and drop",
                                style: Style.fadeTextStyle(
                                    fontSize: 10, color: Clr.white1),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              selectedServiceMode = "onsite";
                              setState(() {});
                            },
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedServiceMode == "onsite"
                                      ? selectedColor
                                      : Clr.grey1),
                              child: Text(
                                "On site service",
                                style: Style.fadeTextStyle(
                                    fontSize: 10, color: Clr.white1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Step(
                title: const Text('Select Location'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            "State",
                            style: Style.fadeTextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Select State',
                                    style:
                                        Style.fadeTextStyle(color: Clr.white1),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: stateList
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: Style.fadeTextStyle(
                                          color: Clr.white1,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedState,
                            onChanged: (String? value) {
                              setState(() {
                                selectedState = value;
                              });
                            },
                            buttonStyleData: ButtonStyleData(
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color: Clr.grey,
                                ),
                              ),
                              elevation: 2,
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down_outlined,
                              ),
                              iconSize: 14,
                              iconEnabledColor: Colors.white,
                              iconDisabledColor: Colors.grey,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                // color: Colors.redAccent,
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  "City",
                                  style: Style.fadeTextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  hint: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Select City',
                                          style: Style.fadeTextStyle(
                                              color: Clr.white1),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: cityList
                                      .map((String item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: Style.fadeTextStyle(
                                                color: Clr.white1,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedCity,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedCity = value;
                                    });
                                  },
                                  buttonStyleData: ButtonStyleData(
                                    padding: const EdgeInsets.only(
                                        left: 14, right: 14),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0.5,
                                        color: Clr.grey,
                                      ),
                                    ),
                                    elevation: 2,
                                  ),
                                  iconStyleData: const IconStyleData(
                                    icon: Icon(
                                      Icons.arrow_drop_down_outlined,
                                    ),
                                    iconSize: 14,
                                    iconEnabledColor: Colors.white,
                                    iconDisabledColor: Colors.grey,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    maxHeight: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      // color: Colors.redAccent,
                                    ),
                                    offset: const Offset(-20, 0),
                                    scrollbarTheme: ScrollbarThemeData(
                                      radius: const Radius.circular(40),
                                      thickness:
                                          MaterialStateProperty.all<double>(6),
                                      thumbVisibility:
                                          MaterialStateProperty.all<bool>(true),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 14, right: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  "Pincode",
                                  style: Style.fadeTextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  hint: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Select Pincode',
                                          style: Style.fadeTextStyle(
                                              color: Clr.white1),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: pincodeList
                                      .map((String item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: Style.fadeTextStyle(
                                                color: Clr.white1,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedPincode,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedPincode = value;
                                    });
                                  },
                                  buttonStyleData: ButtonStyleData(
                                    padding: const EdgeInsets.only(
                                        left: 14, right: 14),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0.5,
                                        color: Clr.grey,
                                      ),
                                    ),
                                    elevation: 2,
                                  ),
                                  iconStyleData: const IconStyleData(
                                    icon: Icon(
                                      Icons.arrow_drop_down_outlined,
                                    ),
                                    iconSize: 14,
                                    iconEnabledColor: Colors.white,
                                    iconDisabledColor: Colors.grey,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    maxHeight: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      // color: Colors.redAccent,
                                    ),
                                    offset: const Offset(-20, 0),
                                    scrollbarTheme: ScrollbarThemeData(
                                      radius: const Radius.circular(40),
                                      thickness:
                                          MaterialStateProperty.all<double>(6),
                                      thumbVisibility:
                                          MaterialStateProperty.all<bool>(true),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 14, right: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Step(
                title: const Text('Step 6: Final Step'),
                content: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Date",
                              style: Style.fadeTextStyle(
                                fontSize: 16,
                                fontFamily: AppFont.avenir,
                                fontWeight: FontWeight.bold,
                                color: Clr.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () async {
                                  // Show date picker
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now()
                                        .add(const Duration(days: 30)),
                                  );

                                  // Update selected date
                                  if (pickedDate != null &&
                                      pickedDate != selectedDate) {
                                    setState(() {
                                      selectedDate = pickedDate;
                                    });
                                  }
                                },
                                child: Text(
                                  selectedDate != null
                                      ? "Selected Date: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}"
                                      : "Select Date",
                                  style: Style.fadeTextStyle(
                                    fontSize: 14,
                                    fontFamily: AppFont.avenir,
                                    color: Clr.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Time",
                              style: Style.fadeTextStyle(
                                fontSize: 16,
                                fontFamily: AppFont.avenir,
                                fontWeight: FontWeight.bold,
                                color: Clr.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () async {
                                  // Show time picker
                                  TimeOfDay? pickedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  );

                                  // Update selected time
                                  if (pickedTime != null &&
                                      pickedTime != selectedTime) {
                                    setState(() {
                                      selectedTime = pickedTime;
                                    });
                                  }
                                },
                                child: Text(
                                  selectedTime != null
                                      ? "Selected Time: ${selectedTime?.format(context)}"
                                      : "Select Time",
                                  style: Style.fadeTextStyle(
                                    fontSize: 14,
                                    fontFamily: AppFont.avenir,
                                    color: Clr.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
