class ProductModel {
  String? name = "";
  String? info = "";
  String? img = "";
  String? site = "";

  static ProductModel fromMap(Map<String, dynamic> map) {
    ProductModel ridesBean = ProductModel();
    ridesBean.name = map['name'];
    ridesBean.info = map['info'];
    ridesBean.img = map['img'];
    ridesBean.site = map['site'];
    return ridesBean;
  }

  Map toJson() => {
    "name": name,
    "info": info,
    "img": img,
    "site": site,
  };
}