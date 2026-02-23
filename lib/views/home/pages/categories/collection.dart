import 'package:cosmetics/core/logic/dio_helper.dart';

import 'model.dart';

class CollectionCategories {
  List<Model>? list;

  Future<void> getData() async {
    try {
      final resp = await DioHelper.getData(pass: '/api/Categories');
      print(resp.data);
      list = ProductList.jsonData(resp.data!['list']).list;
    } catch (e) {
      print('.......................................error:$e');
    }
  }
}
