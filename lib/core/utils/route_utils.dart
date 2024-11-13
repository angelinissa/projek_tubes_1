import 'package:get/get.dart';
import 'package:projek_tubes_1/features/home%20screen/home_screen.dart';
import 'package:projek_tubes_1/features/produk%20screen/product_screen.dart';

class RouteUtils {
  static final pages = [
    GetPage(name: '/', page: () => const HomeScreen()),
    GetPage(name: '/product', page: () => const ProductScreen()),
  ];
}
