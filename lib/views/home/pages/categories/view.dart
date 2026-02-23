import 'package:cosmetics/views/home/pages/categories/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../categories/model.dart';
import '../../../../core/components/app_image.dart';
import '../../../../core/components/app_input.dart';




class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final collection = CollectionCategories();
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await collection.getData();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xff434C6D),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            AppInput(label: 'Search', path: 'search.svg', isBorder: 25),
            SizedBox(height: 12.h),
            collection.list == null
                ? Expanded(child: Center(child: CircularProgressIndicator()))
                : Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          _Item(model: collection.list![index]),

                      separatorBuilder: (context, index) => Divider(),

                      itemCount: collection.list!.length,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final Model model;

  const _Item({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImage(path: model.image, height: 70.h, width: 70.w),
        SizedBox(width: 12.w),
        Text(
          model.name,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff434C6D),
            fontFamily: 'Montserrat',
          ),
        ),

        Expanded(child: SizedBox(width: 290.w)),
        GestureDetector(
          onTap: () {},
          child: AppImage(path: 'arrow_right.png', height: 70.h, width: 70.w),
        ),
      ],
    );
  }
}
