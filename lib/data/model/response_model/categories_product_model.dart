


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
  CategoriesProductModel( 1,'Fast Food', 'assets/images/chicken _dish_image.jpg',categoriesItemListFastFood),
  CategoriesProductModel( 1,'Birani', 'assets/images/chicken _dish_image.jpg',categoriesItemListBirani),
  CategoriesProductModel( 1,'Juice', 'assets/images/chicken _dish_image.jpg',categoriesItemListJuice),
  CategoriesProductModel( 1,'Kachhi', 'assets/images/chicken _dish_image.jpg',categoriesItemListKacchi),
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
  dynamic offerPercentage;
  dynamic discountPrice;
  dynamic stockValue;


  CategoriWiseItemList(
      this.categoriItemId,
      this.categoriItemName,
      this.categoriItemPrice,
      this.productImage,
      this.offerPercentage,
      this.discountPrice,
      this.stockValue
      );
}



List<CategoriWiseItemList> categoriesItemListFastFood =
[
  CategoriWiseItemList( 1,'Beef Barger', 200,
      'https://img.taste.com.au/sKxcBMsu/taste/2016/11/beef-and-bacon-burger-94417-1.jpeg',2,320,20 ),

  CategoriWiseItemList(2, 'Sandwich', 200,
      'https://vaya.in/recipes/wp-content/uploads/2018/06/Bologna-Sandwich.jpg',4,120,3),

  CategoriWiseItemList(3, 'Taco', 200,
      'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/FAM4QZGPWAI6ZCDL353BQPJDH4.jpg&w=1440',10,50,100),

  CategoriWiseItemList(4, 'Pizza', 200,
      'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/06/1200/675/iStock-1222455274.jpg?ve=1&tl=1',50,100,3),

  CategoriWiseItemList(5, 'White Rice', 200,
    'https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg',10,190,2,),

  CategoriWiseItemList(6, 'Chicken', 200,
      'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',50,100,1),

  CategoriWiseItemList(7, 'Fast Food', 200,
      'https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg?w=900',60,90,1),


];


List<CategoriWiseItemList> categoriesItemListBirani =
[
  CategoriWiseItemList( 11,'Beef Barger', 200,
      'https://img.taste.com.au/sKxcBMsu/taste/2016/11/beef-and-bacon-burger-94417-1.jpeg',2,320,20 ),

  CategoriWiseItemList(22, 'Sandwich2', 200,
      'https://vaya.in/recipes/wp-content/uploads/2018/06/Bologna-Sandwich.jpg',4,120,3),

  CategoriWiseItemList(33, 'Taco', 200,
      'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/FAM4QZGPWAI6ZCDL353BQPJDH4.jpg&w=1440',10,50,100),

  CategoriWiseItemList(44, 'Pizza', 200,
      'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/06/1200/675/iStock-1222455274.jpg?ve=1&tl=1',50,100,3),

  CategoriWiseItemList(55, 'White Rice', 200,
    'https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg',10,190,2,),

  CategoriWiseItemList(66, 'Chicken', 200,
      'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',50,100,1),

  CategoriWiseItemList(77, 'Fast Food', 200,
      'https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg?w=900',60,90,1),


];


List<CategoriWiseItemList> categoriesItemListJuice =
[
  CategoriWiseItemList( 111,'Beef Barger', 200,
      'https://img.taste.com.au/sKxcBMsu/taste/2016/11/beef-and-bacon-burger-94417-1.jpeg',2,320,20 ),

  CategoriWiseItemList(222, 'Sandwich2', 200,
      'https://vaya.in/recipes/wp-content/uploads/2018/06/Bologna-Sandwich.jpg',4,120,3),

  CategoriWiseItemList(333, 'Taco', 200,
      'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/FAM4QZGPWAI6ZCDL353BQPJDH4.jpg&w=1440',10,50,100),

  CategoriWiseItemList(444, 'Pizza', 200,
      'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/06/1200/675/iStock-1222455274.jpg?ve=1&tl=1',50,100,3),

  CategoriWiseItemList(555, 'White Rice', 200,
    'https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg',10,190,2,),

  CategoriWiseItemList(666, 'Chicken', 200,
      'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',50,100,1),

  CategoriWiseItemList(777, 'Fast Food', 200,
      'https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg?w=900',60,90,1),


];


List<CategoriWiseItemList> categoriesItemListKacchi=
[
  CategoriWiseItemList( 1,'Beef Barger', 200,
      'https://img.taste.com.au/sKxcBMsu/taste/2016/11/beef-and-bacon-burger-94417-1.jpeg',2,320,20 ),

  CategoriWiseItemList(2, 'Sandwich2', 200,
      'https://vaya.in/recipes/wp-content/uploads/2018/06/Bologna-Sandwich.jpg',4,120,3),

  CategoriWiseItemList(3, 'Taco', 200,
      'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/FAM4QZGPWAI6ZCDL353BQPJDH4.jpg&w=1440',10,50,100),

  CategoriWiseItemList(4, 'Pizza', 200,
      'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/06/1200/675/iStock-1222455274.jpg?ve=1&tl=1',50,100,3),

  CategoriWiseItemList(5, 'White Rice', 200,
    'https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg',10,190,2,),

  CategoriWiseItemList(6, 'Chicken', 200,
      'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',50,100,1),

  CategoriWiseItemList(7, 'Fast Food', 200,
      'https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg?w=900',60,90,1),


];


List<CategoriWiseItemList> categoriesItemList=
[
  CategoriWiseItemList( 1,'Beef Barger', 200,
      'https://img.taste.com.au/sKxcBMsu/taste/2016/11/beef-and-bacon-burger-94417-1.jpeg',2,320,20 ),

  CategoriWiseItemList(2, 'Sandwich2', 200,
      'https://vaya.in/recipes/wp-content/uploads/2018/06/Bologna-Sandwich.jpg',4,120,3),

  CategoriWiseItemList(3, 'Taco', 200,
      'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/FAM4QZGPWAI6ZCDL353BQPJDH4.jpg&w=1440',10,50,100),

  CategoriWiseItemList(4, 'Pizza', 200,
      'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/06/1200/675/iStock-1222455274.jpg?ve=1&tl=1',50,100,3),

  CategoriWiseItemList(5, 'White Rice', 200,
    'https://www.southernliving.com/thmb/gYgRHO3BcxYaaZmtbJ_nFkqtiG8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Cook_Rice_007-71c450b1a0684fb28e729228fc300676.jpg',10,190,2,),

  CategoriWiseItemList(6, 'Chicken', 200,
      'https://img.freepik.com/premium-photo/fried-chicken-with-french-fries-nuggets-meal-junk-food-unhealthy-food_1339-120123.jpg',50,100,1),

  CategoriWiseItemList(7, 'Fast Food', 200,
      'https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg?w=900',60,90,1),


];


