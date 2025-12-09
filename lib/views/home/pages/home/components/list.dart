part of '../view.dart';

class _List extends StatefulWidget {
  final bool isTopRated;

  const _List({super.key, this.isTopRated = false});

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  List<ProductModel>? listProdect;

  Future<void> getData() async {
    final resp = await Dio().get(
      'https://cosmatics-302b5-default-rtdb.europe-west1.firebasedatabase.app/products/${widget.isTopRated ? 'most_ordered.json' : 'top_rated.json'}',
    );

    listProdect = ProductList.jsonData(resp.data).list;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.isTopRated ? 'Most ordered Products' : 'Top rated products',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xff434C6D),
            ),
          ),
        ),
        SizedBox(height: 14.h),
        listProdect == null
            ? Center(child: CircularProgressIndicator())
            : GridView.builder(
                itemCount: listProdect!.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 12,
                  childAspectRatio: 176 / 237,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                ),

                itemBuilder: (context, index) =>
                    _Items(Product: listProdect![index]),
              ),
      ],
    );
  }
}

class _Items extends StatelessWidget {
  final ProductModel? Product;

  const _Items({super.key, this.Product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xffD9D9D9),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.r,
            color: Color(0xff000000).withValues(alpha: .25),
            offset: Offset(0, 1),
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Product!.image == null && Product!.image.isNotEmpty
                    ? Center(child: CircularProgressIndicator())
                    : Container(
                        height: 150.h,
                        width: double.infinity,
                        color: Colors.grey[300],
                        child: Product!.image.isNotEmpty
                            ? AppImage(
                                fit: BoxFit.cover,
                                width: double.infinity,
                                path: Product!.image,
                              )
                            : Shimmer.fromColors(
                                baseColor: Colors.red,
                                highlightColor: Colors.yellow,
                                child: Center(
                                  child: Text(
                                    '404',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsetsDirectional.only(top: 6, start: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 35.h,
                    width: 35.w,

                    child: Center(
                      child: AppImage(
                        path: 'car_categories.svg',
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 11.h),
            Expanded(
              child: Text(
                Product!.titel,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 11.h),
            Expanded(
              child: Text(
                '${Product!.price}',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
      ),
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
  late final num id, price;
  late final String image;
  late String titel;

  ProductModel.json(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    price = json['price'] ?? 0;
    image = json['image'] ?? '';

    titel = json['title'] ?? json['tite'] ?? '';
  }
}
