part of '../view.dart';

class _ListProduct extends StatefulWidget {
  const _ListProduct({super.key});

  @override
  State<_ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<_ListProduct> {
  List<ProductModel>? categories;

  Future<void> getData() async {
    final resp = await Dio().get(
      'https://cosmatics-302b5-default-rtdb.europe-west1.firebasedatabase.app/categories.json',
    );
     categories = ProductList.jsonData(resp.data).list;
     print(categories!.length);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return categories == null
        ? Center(child: CircularProgressIndicator())
        : Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  _Item(categories: categories![index]),

              separatorBuilder: (context, index) => Divider(),

              itemCount: categories!.length,
            ),
          );
  }
}

class _Item extends StatelessWidget {
  final ProductModel categories;

  const _Item({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImage(path: categories.image, height: 70.h, width: 70.w),
        SizedBox(width: 12.w),
        Text(
          categories.name,
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

class ProductList {
  late final List<ProductModel> list;

  ProductList.jsonData(List<dynamic> jsonData) {
    list = jsonData.map((e) => ProductModel.json(e)).toList();
  }
}

class ProductModel {
  late final num id;
  late final String image;
  late final String name;

  ProductModel.json(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    image = json['image'] ?? '';
    name = json['name'] ?? '';
  }
}
