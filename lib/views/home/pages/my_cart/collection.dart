import '../../../../core/logic/dio_helper.dart';
import 'model.dart';

class CollectionMyCart{

  List<Model>? data;

  Future<void> getData() async {
    final resp = await DioHelper.getData(pass: '/api/Products');

    data = ListItem.fromJson(resp.data!['list']).list;

  }


}