import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(400, 883),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  // Header with amount and bank selection
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '\$7,000',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: InkWell(
                                onTap: () {
                                  // Show bank selection
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'Cash Balance',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(Icons.keyboard_arrow_down,
                                        color: Colors.grey),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle payment
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            padding:
                            const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            minimumSize:   
                            const Size(60, 32), // Set width to 60 and height to 32
                          ),
                          child: const Text(
                            'Pay',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 32.h,
                  ),
                  // Input fields
                  const SizedBox(width: 16),
                  const TextField(
                    cursorColor: Colors.green, // Set the cursor color to green
                    decoration: InputDecoration(
                      hintText: 'Name, \$Cashtag, Phone, Email',
                      hintStyle: TextStyle(
                          color: Colors.grey), // Optional, for hint text color
                      border: InputBorder.none, // Remove the border
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text("To", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ),
                      prefixStyle: TextStyle(
                        color: Colors.black, // Prefix text color
                        fontSize: 18, // Prefix text size
                        fontWeight: FontWeight.bold, // Prefix text weight
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 32.h,
                  ),
                  // Input fields
                  TextFormField(
                    style: const TextStyle(
                      height: 0.0,
                      fontSize: 18
                    ),
                    minLines: 1,
                    maxLines: 1,
                    maxLength: 300,
                    cursorColor: Theme.of(context).hintColor,
                    textAlignVertical: TextAlignVertical.center,
                    cursorHeight: 18,
                    decoration: const InputDecoration(
                      hintText: "'Name, \$Cashtag, Phone, Email",
                      prefixIcon: Text(
                        "For",
                        style: TextStyle(
                          height: 5,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  // TextFormField(
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 26,
                  //     // height: 0.0,
                  //   ),
                  //   minLines: 1,
                  //   maxLength: 300,
                  //   cursorColor: Colors.grey,
                  //   textAlignVertical: TextAlignVertical.bottom,
                  //   cursorHeight: 1,
                  //   cursorWidth: 15,
                  //   decoration: InputDecoration(
                  //       contentPadding: EdgeInsets.zero,
                  //       border: InputBorder.none
                  //   ),
                  //
                  //   // cursorColor: Colors.green, // Set the cursor color to green
                  //   // cursorHeight: 1,
                  //   // cursorWidth: 20,
                  //   // textAlignVertical: TextAlignVertical.center,
                  //   // style: TextStyle(
                  //   //   height: 0.0,
                  //   // ),
                  //   //
                  //   // decoration: InputDecoration(
                  //   //   hintText: 'Name, \$Cashtag, Phone, Email',
                  //   //   border: InputBorder.none, // Remove the border
                  //   //   hintStyle: TextStyle(
                  //   //     height: 0.0,
                  //   //   ),
                  //   //   // maintainHintHeight: false,
                  //     prefixIcon: Padding(
                  //       padding: EdgeInsets.only(top: 4),
                  //       child: Text(
                  //         "For",
                  //         style: TextStyle(
                  //           height: 0.0,
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.bold
                  //         ),
                  //       ),
                  //     ),
                  //   //   prefixStyle: TextStyle(
                  //   //     height: 0.0,
                  //   //     color: Colors.black, // Prefix text color
                  //   //     fontSize: 18, // Prefix text size
                  //   //     fontWeight: FontWeight.bold, // Prefix text weight
                  //   //   ),
                  //   // ),
                  // ),

                  // Payment type selector
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal, // Make the row scrollable horizontally
                    child: Row(
                      children: [
                        const Text('Send as'),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF24CE84),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text('Cash'),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text('Gift Card'),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text('Stock'),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text('Stock'),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Suggested contacts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SUGGESTED',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildContactTile(
                        'J',
                        'Jay Z',
                        '\$sc',
                        Colors.brown,
                        isSelected: true,
                      ),
                      _buildContactTile(
                        'D',
                        'Diego',
                        '\$dm',
                        Colors.purple,
                      ),
                      _buildContactTile(
                        'S',
                        'Sandy G.',
                        '\$sandy',
                        Colors.deepOrange,
                      ),
                      _buildContactTile(
                        'J',
                        'Diego Martinez',
                        '\$dm',
                        Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }

    );
  }

  Widget _buildContactTile(
      String initial,
      String name,
      String tag,
      Color avatarColor, {
        bool isSelected = false,
      }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: isSelected,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(width: 12),
          CircleAvatar(
            backgroundColor: avatarColor,
            child: Text(
              initial,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  tag,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.person_outline),
        ],
      ),
    );
  }
}
