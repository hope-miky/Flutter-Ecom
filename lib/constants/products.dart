var productlist = [
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2015/02/09/14/56/table-629772_1280.jpg",
    name: "Chair",
    price: 843,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_1280.jpg",
    name: "Sofa",
    price: 3245,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2015/04/20/06/46/office-730681_1280.jpg",
    name: "Table",
    price: 1254,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2016/01/02/04/59/coffee-1117933_1280.jpg",
    name: "Coffee Cup",
    price: 154,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2016/06/08/10/35/laptop-1443559_1280.jpg",
    name: "HP Laptop",
    price: 25400,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2015/06/21/05/41/game-816407_1280.jpg",
    name: "Game Pad",
    price: 403,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2020/01/16/06/24/audio-4769730_1280.jpg",
    name: "Headphone",
    price: 673,
  ),
  new Product(
    category: "Home Appliance",
    imagepath:
        "https://cdn.pixabay.com/photo/2016/11/19/11/34/bottle-1838772_1280.jpg",
    name: "Water Bottle",
    price: 673,
  ),
];

class Product {
  final String name;
  final String category;
  final String? imagepath;
  final int price;
  bool liked;

  Product(
      {this.category = "Un categorized",
      this.imagepath,
      this.name = "",
      this.liked = false,
      this.price = 0});
}
