
class ListItem {
  late final List<Model> list;

  ListItem.fromJson(List<dynamic> json) {
    list = json.map((e) => Model.fromJson(e)).toList();
  }
}

class Model {
  late final int id;
  late final String name;
  late final String description;
  late final num price;
  late final num stock;
  late final String imageUrl;

  Model.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
    description = json['description'] ?? '';
    price = json['price'] ?? 0;
    stock = json['stock'] ?? 0;
    imageUrl = json['imageUrl'] ?? '';
  }
}