import 'package:flutter/material.dart';

class CommonDropdownWidget extends StatelessWidget {
  const CommonDropdownWidget({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
  });

  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      items: items,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
      isExpanded: true,
    );
  }
}
