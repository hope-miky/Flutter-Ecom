import 'package:addisecom/constants/categories.dart';
import 'package:addisecom/constants/suppliers.dart';
import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/models/product_model.dart';

var baseurl = "http://104.248.3.235:3000/";
var imageurl =
    "https://cdn.pixabay.com/photo/2017/02/16/13/42/box-2071537_1280.png";

var sampleProducts = [
  new Product(
      id: 1,
      price: 200,
      name: "APPLE iMac",
      description: "APPLE iMac 21.5 \"i5 8GB SSD 256GB macOS Silver",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_1280.jpg'
      ],
      categoryId: 6,
      category: sampleCategories[5],
      supplier: suppliers[0],
      supplierId: 1),
  new Product(
      id: 2,
      price: 200,
      name: "somthing name",
      description: "description",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg'
      ],
      categoryId: 1,
      category: sampleCategories[0],
      supplier: suppliers[1],
      supplierId: 2),
  new Product(
      id: 3,
      price: 200000,
      name: "Fully furnished House",
      description:
          "Quiet, charming, cul de sac home located in the wooded community of Longacre Woods. Interior space allows lots of light through large living room windows and a sliding glass door leading to an outdoor deck.",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg'
      ],
      categoryId: 7,
      category: sampleCategories[6],
      supplier: suppliers[2],
      supplierId: 3),
  new Product(
      id: 4,
      price: 200,
      name: "Iphone XS",
      description: "IPHONE XS 256GB - CHOICE OF COLORS - A + class",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2015/02/05/08/12/stock-624712_1280.jpg'
      ],
      categoryId: 8,
      category: sampleCategories[7],
      supplier: suppliers[3],
      supplierId: 4),
  new Product(
      id: 4,
      price: 200,
      name: "Sofa",
      description:
          "Fashion Velvet corner sofa bed for 3 people 252 cm pink right",
      stock: 200,
      images: [
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/posters-in-cozy-apartment-interior-royalty-free-image-943910360-1534189931.jpg?resize=980:*'
      ],
      categoryId: 9,
      category: sampleCategories[8],
      supplier: suppliers[3],
      supplierId: 4),
  new Product(
      id: 4,
      price: 200,
      name: "BM Bed",
      description:
          "BM Wood Furniture™ Sheesham Wood King Size Wooden Storage Bed Daimond Design Bed Natural Honey Finish : Amazon.in",
      stock: 200,
      images: ['https://m.media-amazon.com/images/I/61VjnFn9sEL._SX679_.jpg'],
      categoryId: 9,
      category: sampleCategories[8],
      supplier: suppliers[3],
      supplierId: 4),
  new Product(
      id: 4,
      price: 200,
      name: "Sample Pants",
      description:
          "BM Wood Furniture™ Sheesham Wood King Size Wooden Storage Bed Daimond Design Bed Natural Honey Finish : Amazon.in",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2017/04/05/01/12/traveler-2203666_1280.jpg'
      ],
      categoryId: 2,
      category: sampleCategories[1],
      supplier: suppliers[2],
      supplierId: 3),
  new Product(
      id: 4,
      price: 200,
      name: "Sample Shirts",
      description:
          "BM Wood Furniture™ Sheesham Wood King Size Wooden Storage Bed Daimond Design Bed Natural Honey Finish : Amazon.in",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2018/05/15/15/00/man-3403180_1280.jpg'
      ],
      categoryId: 2,
      category: sampleCategories[1],
      supplier: suppliers[1],
      supplierId: 2),
];
