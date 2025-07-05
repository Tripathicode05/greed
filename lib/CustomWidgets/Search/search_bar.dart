import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;

  const SearchBarWidget({super.key, this.controller, this.onChanged, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 15, right: 15),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: (Colors.grey[300] != null)?   
                  Colors.grey[300]!.withAlpha((0.2 * 255).toInt())
                  : Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey[600], size: 20),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                focusNode: focusNode,
                showCursor: focusNode?.hasFocus ?? false,
                controller: controller,
                onChanged: onChanged,
                style: const TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
                decoration: const InputDecoration(
                  isCollapsed: true,
                  border: InputBorder.none,
                  hintText: 'Search just like jethalal',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
