import 'package:flutter/material.dart';

class TabToggleButtons extends StatefulWidget {
  const TabToggleButtons({super.key});

  @override
  State<TabToggleButtons> createState() => _TabToggleButtonsState();
}

class _TabToggleButtonsState extends State<TabToggleButtons> {
  int selectedIndex = 0;
  final List<String> tabs = ["All", "Groups", "Podcasts"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          tabs.asMap().entries.map((entry) {
            int index = entry.key;
            String label = entry.value;

            final isSelected = selectedIndex == index;

            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => setState(() => selectedIndex = index),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.green : Colors.transparent,
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 14,
                      color: isSelected ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
