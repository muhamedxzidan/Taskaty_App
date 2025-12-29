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
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
                border: isSelected
                    ? Border.all(color: const Color(0xffffffff), width: 5)
                    : null,
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: color.withValues(alpha: 0.4),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : null,
              ),
              child: isSelected
                  ? const Center(
                      child: Icon(
                        Icons.check,
                        color: Color(0xffffffff),
                        size: 15,
                      ),
                    )
                  : null,
            ),
          ),
        );
      }).toList(),
    );
  }
}
