
class ProductList {
  late final List<Model> list;

  ProductList.jsonData(List<dynamic> jsonData) {
    list = jsonData.map((e) => Model.json(e)).toList();
  }
}




class Model {
  late final num id;
  late final String name;
  late final String image;

  Model.json(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['title'] ?? '';
    image = json['imageUrl'] ?? '';
  }
}
