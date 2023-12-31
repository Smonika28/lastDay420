import 'package:flutter/material.dart';
import '../../../global_widget/custom_button.dart';
import '../../checkout/presentation/check_out_screen.dart';

class EditAddressScreen extends StatefulWidget {
  const EditAddressScreen({super.key});

  @override
  State<EditAddressScreen> createState() => _EditAddressScreen();
}

class _EditAddressScreen extends State<EditAddressScreen> {
  List<ButtonData> buttons = [
    ButtonData(label: ' Home', icon: Icons.home_filled),
    ButtonData(label: ' Work', icon: Icons.work),
    ButtonData(label: ' Friends & Families', icon: Icons.person),
    ButtonData(label: ' Others', icon: Icons.edit_location),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Add / Edit Address",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 211, 209, 209).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'Adam',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'smith02@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'House/Flat/Block No.',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'Apartment/Road/Area',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
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
                        hintText: 'Zipcode',
                        hintStyle: TextStyle(
                          color: Colors.grey,
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
                color:
                    const Color.fromARGB(255, 211, 209, 209).withOpacity(0.1),
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
                                    borderRadius: BorderRadius.circular(18.0),
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
                                    borderRadius: BorderRadius.circular(18.0),
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
                                        style: const TextStyle(fontSize: 14),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckoutPage()));
                    },
                    title: 'Save > ',
                    color: const Color(0xff00C8B8),
                  ),
                ],
              ),
            ),
            Container(),
          ],
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
