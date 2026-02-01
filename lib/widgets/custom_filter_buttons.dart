import 'package:flutter/material.dart';

class CustomFilterButtons extends StatelessWidget {
  const CustomFilterButtons({
    super.key,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  final String selectedFilter;
  final Function(String) onFilterChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _FilterButton(
            text: 'All',
            isSelected: selectedFilter == 'all',
            onTap: () => onFilterChanged('all'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _FilterButton(
            text: 'Todo',
            isSelected: selectedFilter == 'todo',
            onTap: () => onFilterChanged('todo'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _FilterButton(
            text: 'Complete',
            isSelected: selectedFilter == 'complete',
            onTap: () => onFilterChanged('complete'),
          ),
        ),
      ],
    );
  }
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff673ab7) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xff673ab7), width: 2),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xff673ab7),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
