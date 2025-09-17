import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final PhoneNumber initialNumber = PhoneNumber(
    isoCode: 'NG',
  ); // Default to Nigeria 🇳🇬

  PhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        width: 295.21,
        decoration: BoxDecoration(
          color: const Color(0xFF3A4E2E), // dark green background
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
            debugPrint(number.phoneNumber);
          },
          selectorConfig: const SelectorConfig(
            selectorType:
                PhoneInputSelectorType.DROPDOWN, // dropdown for country
            setSelectorButtonAsPrefixIcon: true,
            showFlags: true,
          ),
          textStyle: const TextStyle(color: Colors.white),
          selectorTextStyle: const TextStyle(color: Colors.white),
          initialValue: initialNumber,
          textFieldController: controller,
          inputDecoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Mobile number",
            hintStyle: TextStyle(color: Colors.white54),
          ),
          formatInput: false,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
