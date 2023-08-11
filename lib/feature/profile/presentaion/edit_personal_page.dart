import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../global_widget/custom_button.dart';
import '../../../utils/Api/api_calling/api_provider.dart';
import '../model/profile_model.dart';
import 'package:http/http.dart' as http;

class EditPersonalDetails extends StatefulWidget {
  const EditPersonalDetails({super.key});

  @override
  State<EditPersonalDetails> createState() => _EditPersonalDetails();
}

class _EditPersonalDetails extends State<EditPersonalDetails> {
  Future<void> updateProfile() async {
    final url = Uri.parse(
        'https://excellis.co.in/420-society-world/api/v1/customer/profile-update');
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      'name': profileModel.date?.name ?? "",
      'email': profileModel.date?.email ?? "",
      'phone': profileModel.date?.phone ?? "",
      'address': profileModel.date?.homeAddress ?? "",
      'dob': profileModel.date?.dob ?? "",
    });

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('Profile updated successfully');
        }
      } else {
        if (kDebugMode) {
          print('Failed to update profile');
        }
      }
    } catch (error) {
      if (kDebugMode) {
        print('An error occurred: $error');
      }
    }
  }


  List<ButtonData> buttons = [
    ButtonData(label: ' Home', icon: Icons.home_filled),
    ButtonData(label: ' Work', icon: Icons.work),
    ButtonData(label: ' Friends & Families', icon: Icons.person),
    ButtonData(label: ' Others', icon: Icons.edit_location),
  ];
  int selectedIndex = 0;
  ApiProvider apiProvider = ApiProvider();
  ProfileModel profileModel = ProfileModel();

  void profileData() async {
    var resData = await apiProvider.getProfile();
    log(resData.date!.toString());
    setState(() {
      profileModel = resData;
    });
  }

  @override
  void initState() {
    super.initState();
    profileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Edit Personal Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: profileModel.date != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, top: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 209, 209)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText:
                                  profileModel.date?.name?.split(' ')[0] ?? "",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText:
                                  profileModel.date?.name?.split(' ')[1] ?? "",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText: profileModel.date!.phone ?? " ",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText: profileModel.date!.email ?? " ",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText: profileModel.date?.homeAddress
                                      ?.split(' ')[0].replaceAll(',', '') ??
                                  "",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText: profileModel.date?.homeAddress
                                      ?.split(' ')[1].replaceAll(',', '') ??
                                  "",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 20.0,
                                right: 20.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffAAAAAA),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                              hintText: profileModel.date!.pincode ?? " ",
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, top: 0),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 209, 209)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Save As',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 10,
                          runSpacing: 5,
                          children: List.generate(buttons.length, (index) {
                            return SizedBox(
                              child: index == selectedIndex
                                  ? ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff00C8B8),
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(buttons[index].icon),
                                            Text(buttons[index].label),
                                          ]),
                                    )
                                  : OutlinedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              buttons[index].icon,
                                              size: 14,
                                            ),
                                            Text(
                                              buttons[index].label,
                                              style:
                                                  const TextStyle(fontSize: 14),
                                            ),
                                          ]),
                                    ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomElevatedButton(
                          onTap: () {
                            if (kDebugMode) {
                              print("updating profile");
                            }
                          },
                          title: 'Save > ',
                          color: const Color(0xff00C8B8),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                ],
              )
            : const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
      ),
    );
  }
}

class ButtonData {
  final String label;
  final IconData icon;
  ButtonData({required this.label, required this.icon});
}
