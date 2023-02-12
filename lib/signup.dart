// ignore_for_file: unused_import

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:gotarent/signup.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const S_page();
  }
}

// ignore: camel_case_types
class S_page extends StatefulWidget {
  const S_page({super.key});

  @override
  State<S_page> createState() => _S_pageState();
}

// ignore: camel_case_types
class _S_pageState extends State<S_page> {
  bool hide = true;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/signupimg (2).png",
                    //alignment: Alignment.topRight,

                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          hintText: "Enter Username",
                          labelText: "Name",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color.fromARGB(255, 45, 130, 195),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color.fromARGB(255, 92, 225, 230),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          //  icon: Icon(Icons.),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Username Cannot be Empty";
                          }
                          null;
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),

                          hintText: "+91 9733814168",
                          labelText: "Phone No",

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color.fromARGB(255, 45, 130, 195),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color.fromARGB(255, 92, 225, 230),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          //
                          // icon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Number Cannot be Empty";
                          }
                          null;
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: hide,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (hide) {
                                    hide = false;
                                  } else {
                                    hide = true;
                                  }
                                });
                              },
                              icon: hide
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                          hintText: "Enter Password",
                          labelText: "Password",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color.fromARGB(255, 45, 130, 195),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color.fromARGB(255, 92, 225, 230),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          //       icon: Icon(Icons.lock),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password Cannot be Empty";
                          } else if (value.length < 6) {
                            return "Password must contain atleast 6 letters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (this.value == false) {
                                    this.value = true;
                                  } else {
                                    this.value = false;
                                  }
                                });
                              }),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("By this you accept all"),
                          TextButton(
                            child: const Text("Terms & Condition"),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text("Terms & Condition "),
                                  content:
                                    SingleChildScrollView(
                                      child: Column(
                                        children: const [
                                           SizedBox(
                                            height: 20,
                                          ),
                                           Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              """Terms and Conditions for Employees and Founders of "GoRent" Company""",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                           Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("""

  Introduction: These Terms and Conditions (the "Agreement") governs the use of the "GoRent" room rental system (the "Service") offered by GoRent Company (the "Company"). By accessing or using the Service, you agree to be bound by the terms of this Agreement. If you do not agree to these terms, you may not use the Service.
  
  Service Description: The Service is an online platform that allows users to rent rooms for a specified period of time. The Service provides users with information about available rooms, pricing, and the option to book a room online. The Company does not own or operate any of the rooms listed on the Service and is not responsible for the condition or suitability of the rooms.
  
  User Accounts: To use the Service, you must create an account. You are responsible for maintaining the confidentiality of your account information and password and for restricting access to your account. You agree to accept responsibility for all activities that occur under your account. The Company reserves the right to terminate your account at any time for any reason.
  
  Employee Responsibilities: Employees of the Company are expected to provide accurate and up-to-date information about the rooms listed on the Service. Employees must also respond promptly to any customer inquiries or complaints and provide exceptional customer service. Employees are prohibited from engaging in any illegal or unethical activities while using the Service.
  
  Founder Responsibilities: The founders of the Company are responsible for the overall management and operation of the Service. They must ensure that the Service is functioning properly and that all employees are performing their duties in accordance with the terms of this Agreement. The founders are also responsible for ensuring that the Service is in compliance with all applicable laws and regulations.
  
  Proprietary Rights: The Service and its content, including but not limited to text, software, scripts, graphics, photos, sounds, music, videos, interactive features, and the like (collectively, "Materials"), are protected by intellectual property laws, including patent, trademark, trade secret, and copyright laws. The Materials are the property of the Company or its licensors and are protected by copyright and other intellectual property laws. You may not use the Materials for any commercial purpose without the express written consent of the Company.
  
  Disclaimer of Warranties: The Service is provided "as is" and the Company makes no representations or warranties of any kind, express or implied, as to the operation of the Service or the information, content, materials, or products included on the Service. The Company does not warrant that the Service will be uninterrupted or error-free, and the Company will not be liable for any interruptions or errors.
  
  Limitation of Liability: The Company will not be liable for any damages of any kind arising from the use of the Service, including but not limited to direct, indirect, incidental, punitive, and consequential damages.
  
  Indemnification: You agree to indemnify, defend, and hold harmless the Company, its affiliates, licensors, and service providers, and its and their respective officers, directors, employees, contractors, agents, licensors, suppliers, successors, and assigns from and against any claims, liabilities, damages, judgments, awards, losses, costs, expenses, or fees (including reasonable attorneys' fees) arising out of your use of the Service, your violation of this Agreement, or your violation of any rights of another.
  
  Dispute Resolution: Any dispute arising out of or relating to this Agreement will be resolved through binding arbitration. The arbitration will be conducted under the rules of the American Arbitration Association
  
  """),
                                          ),
                                           Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              """Terms and Conditions for Users of the "GoRent" App and Website""",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                           Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("""


Introduction: These Terms and Conditions (the "Agreement") governs your use of the "GoRent" room rental system (the "Service"), including the GoRent app and website (collectively, the "Platform"). By accessing or using the Platform, you agree to be bound by the terms of this Agreement. If you do not agree to these terms, you may not use the Platform.

Service Description: The Service is an online platform that allows you to rent rooms for a specified period of time. The Platform provides you with information about available rooms, pricing, and the option to book a room online. The Company does not own or operate any of the rooms listed on the Platform and is not responsible for the condition or suitability of the rooms.

User Account: To use the Service, you must create an account. You are responsible for maintaining the confidentiality of your account information and password and for restricting access to your account. You agree to accept responsibility for all activities that occur under your account. The Company reserves the right to terminate your account at any time for any reason.

User Responsibilities: You are responsible for reviewing the information provided about the rooms listed on the Platform to ensure that it is accurate and up-to-date. You must also provide accurate and complete information when making a reservation. You are responsible for paying all fees associated with your reservation, including any taxes and fees required by the room owner or operator. You must comply with all laws, rules, and regulations applicable to your use of the Platform and the Service.

Proprietary Rights: The Platform and its content, including but not limited to text, software, scripts, graphics, photos, sounds, music, videos, interactive features, and the like (collectively, "Materials"), are protected by intellectual property laws, including patent, trademark, trade secret, and copyright laws. The Materials are the property of the Company or its licensors and are protected by copyright and other intellectual property laws. You may not use the Materials for any commercial purpose without the express written consent of the Company.

Disclaimer of Warranties: The Service is provided "as is" and the Company makes no representations or warranties of any kind, express or implied, as to the operation of the Service or the information, content, materials, or products included on the Platform. The Company does not warrant that the Service will be uninterrupted or error-free, and the Company will not be liable for any interruptions or errors.

Limitation of Liability: The Company will not be liable for any damages of any kind arising from your use of the Service, including but not limited to direct, indirect, incidental, punitive, and consequential damages.

Indemnification: You agree to indemnify, defend, and hold harmless the Company, its affiliates, licensors, and service providers, and its and their respective officers, directors, employees, contractors, agents, licensors, suppliers, successors, and assigns from and against any claims, liabilities, damages, judgments, awards, losses, costs, expenses, or fees (including reasonable attorneys' fees) arising out of your use of the Platform, your violation of this Agreement, or your violation of any rights of another.

Dispute Resolution: Any dispute arising out of or relating to this Agreement will be resolved through binding arbitration. The arbitration will be conducted under the rules of the American Arbitration Association.

Changes to the Agreement: The Company reserves the right to modify these terms at any time. If the Company makes a material change to this Agreement.

"""),
                                          ),
                                           SizedBox(
                                            height: 20,
                                          ),
                                         ],
                                      ),
                                  ),
                                  actions: <Widget>[
                                    // FlatButton is deprecated and should not be used
                                    // Instead use TextButton

                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: const Text("okay"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 92, 225, 230),
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 140,
                          ),
                        ),
                        onPressed: () {},
                        //Row(children: [const Text('SignUp')],)
                        child:
                            const Text('Signup', style: TextStyle(fontSize: 12)

                                // ),
                                ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Already Registered? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Log In Here',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}

