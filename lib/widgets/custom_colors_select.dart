import 'package:flutter/material.dart';

class CustomColorsSelect extends StatelessWidget {
  const CustomColorsSelect({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onColorSelected,
  });

  final List<Color> colors;
  final Color selectedColor;
  final ValueChanged<Color> onColorSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) {
        final isSelected = color == selectedColor;

        return GestureDetector(
          onTap: () => onColorSelected(color),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Stack(
              children: [
                Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                ),
                if (isSelected)
                  const Icon(Icons.check, color: Color.fromARGB(255, 0, 0, 0)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
