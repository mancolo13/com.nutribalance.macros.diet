import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final meals = [
      {'meal': 'Breakfast', 'items': 'Oatmeal, Banana, Whey Protein', 'cal': '520 kcal'},
      {'meal': 'Lunch', 'items': 'Grilled Salmon, Quinoa, Asparagus', 'cal': '740 kcal'},
      {'meal': 'Snack', 'items': 'Greek Yogurt & Walnuts', 'cal': '280 kcal'},
      {'meal': 'Dinner', 'items': 'Chicken Breast & Sweet Potato', 'cal': '610 kcal'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Diary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: (context, i) {
          final m = meals[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(m['meal'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                      const SizedBox(height: 4),
                      Text(m['items'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                    ],
                  ),
                ),
                Text(m['cal'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primary, fontSize: 15)),
              ],
            ),
          );
        },
      ),
    );
  }
}
