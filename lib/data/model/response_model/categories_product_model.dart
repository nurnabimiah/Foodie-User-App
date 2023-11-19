


class CategoriesProductModel{

  dynamic productId;
  dynamic productName;
  dynamic productImage;
  List<CategoriWiseItemList>? categoriwistItemList;


  CategoriesProductModel(
      this.productId, this.productName,  this.productImage,this.categoriwistItemList);
}





List<CategoriesProductModel> categoriesProductModelList=
[
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Birani', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Juice', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Kachhi', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemList),
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemList),




];





class CategoriWiseItemList{
  dynamic categoriItemId;
  dynamic categoriItemName;
  int? categoriItemPrice;
  dynamic productImage;

  CategoriWiseItemList(this.categoriItemId, this.categoriItemName,
      this.categoriItemPrice, this.productImage);
}



List<CategoriWiseItemList> categoriesItemList =
[
  CategoriWiseItemList( 1,'Beef Barger', 200, 'assets/images/chicken _dish_image.jpg'),
  CategoriWiseItemList(2, 'Sandwich', 200, 'assets/images/chicken _dish_image.jpg'),
  CategoriWiseItemList(3, 'Taco', 200, 'assets/images/chicken _dish_image.jpg'),
  CategoriWiseItemList(4, 'Pizza', 200, 'assets/images/chicken _dish_image.jpg'),
  CategoriWiseItemList(5, 'Sada vat', 200, 'assets/images/chicken _dish_image.jpg'),
  CategoriWiseItemList(6, 'Chicken', 200, 'assets/images/chicken _dish_image.jpg'),
  CategoriWiseItemList(7, 'Fast Food', 200, 'assets/images/chicken _dish_image.jpg'),


];
