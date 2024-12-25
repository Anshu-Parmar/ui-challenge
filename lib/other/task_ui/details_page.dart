import 'package:flutter/material.dart';

class DetailsPageUi extends StatefulWidget {
  const DetailsPageUi({super.key});

  @override
  State<DetailsPageUi> createState() => _DetailsPageUiState();
}

class _DetailsPageUiState extends State<DetailsPageUi> {
  late final TextEditingController _nameController;
  late final TextEditingController _dobController;
  late final TextEditingController _genderController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _dobController = TextEditingController();
    _genderController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dobController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/other/bkg.jpg'
            )
          )
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              const Text(
                "Tell about yourself",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Help us tailor your experience",
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              TextField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Full Name",
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60.withValues(alpha: 0.3)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  fillColor: Colors.white60.withValues(alpha: 0.3),
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: _dobController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Date Of Birth",
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60.withValues(alpha: 0.3)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  fillColor: Colors.white60.withValues(alpha: 0.3),
                  prefixIcon: const Icon(Icons.calendar_month, color: Colors.green,),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 50,
                    maxWidth: 100,
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              SizedBox(
                width: double.maxFinite,
                child: DropdownMenu<String>(
                  expandedInsets: EdgeInsets.zero,
                  alignmentOffset: Offset.zero,
                  controller: _genderController,
                  initialSelection: null,
                  hintText: "Select gender",
                  inputDecorationTheme: InputDecorationTheme(
                    filled: true,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60.withValues(alpha: 0.3)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white60.withValues(alpha: 0.3),
                    focusColor: Colors.white60.withValues(alpha: 0.3),
                  ),
                  menuStyle: MenuStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.white60.withValues(alpha: 0.3)),
                  ),
                  dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: "Male", label: "Male", style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white60.withValues(alpha: 0.3),

                    )),
                    DropdownMenuEntry(value: "Female", label: "Female", style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white60.withValues(alpha: 0.3),
                    )),
                    DropdownMenuEntry(value: "Other", label: "Other", style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white60.withValues(alpha: 0.3),
                      enabledMouseCursor: MouseCursor.defer
                    )),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

returnApp () {
  return ;
}