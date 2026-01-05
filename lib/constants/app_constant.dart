import '../constants/app_image.dart';

class Screens {
  static const String home = 'home';
  static const String detail = 'detail';
  static const String map = 'map';
  static const String tabHome = 'tab_home';
  static const String tabSearch = 'tab_search';
  static const String tabLike = 'tab_like';
  static const String tabUser = 'tab_user';
}

class CategoryItem {
  final int id;
  final String name;
  final String icon; // asset path

  const CategoryItem({
    required this.id,
    required this.name,
    required this.icon,
  });
}

class MenuItem {
  final int menuId;
  final int categoryId;
  final String name;
  final String photo; // asset path
  final String description;
  final int calories;
  final double price;
  final String duration;
  final int star;

  const MenuItem({
    required this.menuId,
    required this.categoryId,
    required this.name,
    required this.photo,
    required this.description,
    required this.calories,
    required this.price,
    required this.duration,
    required this.star,
  });
}

class AppData {
  static const List<CategoryItem> categories = [
    CategoryItem(id: 1, name: 'Rice', icon: AppIcons.riceBowl),
    CategoryItem(id: 2, name: 'Noodles', icon: AppIcons.noodle),
    CategoryItem(id: 3, name: 'Hot Dogs', icon: AppIcons.hotdog),
    CategoryItem(id: 4, name: 'Salads', icon: AppIcons.salad),
    CategoryItem(id: 5, name: 'Burgers', icon: AppIcons.hamburger),
    CategoryItem(id: 6, name: 'Pizza', icon: AppIcons.pizza),
    CategoryItem(id: 7, name: 'Snacks', icon: AppIcons.fries),
    CategoryItem(id: 8, name: 'Sushi', icon: AppIcons.sushi),
    // CategoryItem(
    //   id: 9,
    //   name: 'Desserts',
    //   icon: AppIcons.donut,
    // ), thiếu donut hình
    CategoryItem(id: 10, name: 'Drinks', icon: AppIcons.drink),
  ];

  static const List<MenuItem> menus = [
    MenuItem(
      menuId: 4,
      categoryId: 6,
      name: 'Hawaiian Pizza',
      photo: AppImages.hawaiianPizza,
      description: 'Canadian bacon, homemade pizza crust, pizza sauce',
      calories: 250,
      price: 15,
      duration: '35 - 40 min',
      star: 3,
    ),
    MenuItem(
      menuId: 5,
      categoryId: 6,
      name: 'Tomato & Basil Pizza',
      photo: AppImages.pizza,
      description: 'Fresh tomatoes, aromatic basil pesto and melted bocconcini',
      calories: 250,
      price: 20,
      duration: '15 - 20 min',
      star: 5,
    ),
    MenuItem(
      menuId: 6,
      categoryId: 2,
      name: 'Tomato Pasta',
      photo: AppImages.tomatoPasta,
      description: 'Pasta with fresh tomatoes',
      calories: 100,
      price: 10,
      duration: '5 - 10 min',
      star: 1,
    ),
    MenuItem(
      menuId: 7,
      categoryId: 4,
      name: 'Mediterranean Chopped Salad',
      photo: AppImages.salad,
      description: 'Finely chopped lettuce, tomatoes, cucumbers',
      calories: 100,
      price: 10,
      duration: '35 - 40 min',
      star: 2,
    ),
    MenuItem(
      menuId: 8,
      categoryId: 3,
      name: 'Chicago Style Hot Dog',
      photo: AppImages.chicagoHotDog,
      description: 'Fresh tomatoes, all beef hot dogs',
      calories: 100,
      price: 20,
      duration: '35 - 40 min',
      star: 5,
    ),
    MenuItem(
      menuId: 9,
      categoryId: 8,
      name: 'Sushi sets',
      photo: AppImages.sushi,
      description: 'Fresh salmon, sushi rice, fresh juicy avocado',
      calories: 100,
      price: 50,
      duration: '35 - 40 min',
      star: 4,
    ),
    MenuItem(
      menuId: 10,
      categoryId: 2,
      name: 'Kolo Mee',
      photo: AppImages.koloMee,
      description: 'Noodles with char siu',
      calories: 200,
      price: 5,
      duration: '35 - 40 min',
      star: 5,
    ),
    MenuItem(
      menuId: 11,
      categoryId: 2,
      name: 'Sarawak Laksa',
      photo: AppImages.sarawakLaksa,
      description: 'Vermicelli noodles, cooked prawns',
      calories: 300,
      price: 8,
      duration: '35 - 40 min',
      star: 5,
    ),
    MenuItem(
      menuId: 12,
      categoryId: 1,
      name: 'Nasi Lemak',
      photo: AppImages.nasiLemak,
      description: 'A traditional Malay rice dish',
      calories: 300,
      price: 8,
      duration: '35 - 40 min',
      star: 2,
    ),
    MenuItem(
      menuId: 13,
      categoryId: 1,
      name: 'Nasi Briyani with Mutton',
      photo: AppImages.nasiBriyaniMutton,
      description: 'A traditional Indian rice dish with mutton',
      calories: 300,
      price: 8,
      duration: '35 - 40 min',
      star: 2,
    ),
    MenuItem(
      menuId: 14,
      categoryId: 10,
      name: 'Teh C Peng',
      photo: AppImages.tehCPeng,
      description: 'Three Layer Teh C Peng',
      calories: 100,
      price: 2,
      duration: '35 - 40 min',
      star: 5,
    ),
    MenuItem(
      menuId: 15,
      categoryId: 9,
      name: 'ABC Ice Kacang',
      photo: AppImages.iceKacang,
      description: 'Shaved Ice with red beans',
      calories: 100,
      price: 3,
      duration: '35 - 40 min',
      star: 2,
    ),
    MenuItem(
      menuId: 16,
      categoryId: 9,
      name: 'Kek Lapis',
      photo: AppImages.kekLapis,
      description: 'Layer cakes',
      calories: 300,
      price: 20,
      duration: '35 - 40 min',
      star: 4,
    ),
  ];
}
