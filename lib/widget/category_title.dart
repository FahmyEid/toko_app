import 'package:flutter/material.dart';
import 'package:toko/models/category_model.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: categoryModel.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: AlignmentDirectional.centerStart,
        width: double.infinity,
        height: 70,
        color: categoryModel.color,
        child: Row(
          children: [
            Text(
              categoryModel.text,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(categoryModel.image), fit: BoxFit.fill),
              ),
              height: 65,
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
