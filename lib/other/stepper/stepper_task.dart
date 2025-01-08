import 'package:flutter/material.dart';

class StepperTask extends StatefulWidget {
  const StepperTask({super.key});

  @override
  State<StepperTask> createState() => _StepperTaskState();
}

class _StepperTaskState extends State<StepperTask> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper test"),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Stepper(
                type: StepperType.vertical,
                currentStep: currentIndex,
                onStepTapped: (int value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                steps:  [
                  Step(
                    isActive: currentIndex == 0,
                    title:  const Text("First"),
                    content: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                      child: const Icon(Icons.lock_clock),
                    ),
                    label: const Text("James"),
                    subtitle: const Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                  const Step(
                      title:  Text("First"),
                      content: Icon(Icons.lock_clock),
                      label: Text("James"),
                      subtitle: Text("Jade")
                  ),
                ]
              )
              // Stepper(
              //   elevation: 0,
              //   currentStep: value,
              //   physics: const ClampingScrollPhysics(),
              //   controlsBuilder: (context, details) => const Row(children: []),
              //   stepIconMargin: const EdgeInsets.all(0),
              //   connectorColor: WidgetStateProperty.all<Color>(Colors.black),
              //   connectorThickness: 1,
              //   stepIconBuilder: (stepIndex, stepState) {
              //     if (stepIndex == value) {
              //       return const CircleAvatar(
              //         backgroundColor: Colors.blue,
              //         child: Text(''),
              //       );
              //     } else if (stepIndex < value) {
              //       return const CircleAvatar(
              //         backgroundColor: Colors.green,
              //         child: Icon(
              //           Icons.check,
              //           size: 15,
              //           color: Colors.white,
              //         ),
              //       );
              //     } else {
              //       return const CircleAvatar(
              //         backgroundColor: Colors.black,
              //         child: Icon(Icons.lock)
              //       );
              //     }
              //   },
              //   onStepTapped: (int newVal) {
              //     setState(() {
              //       value = newVal;
              //     });
              //   },
              //   steps: const [
              //     Step(title: Text('Step1'), content: Text('Step Content 1')),
              //     Step(title: Text('Step2'), content: Text('Step Content 1')),
              //     Step(title: Text('Step3'), content: Text('Step Content 1'))
              //   ],
              // )
            ],
          )
      )
    );
  }
}
