import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vegan_liverpool/constants/urls.dart';
import 'package:vegan_liverpool/models/restaurant/fullfilmentMethods.dart';
import 'package:vegan_liverpool/models/restaurant/menuItem.dart';
import 'package:vegan_liverpool/models/restaurant/productOptions.dart';
import 'package:vegan_liverpool/models/restaurant/productOptionsCategory.dart';
import 'package:vegan_liverpool/models/restaurant/restaurantItem.dart';
import 'package:vegan_liverpool/redux/actions/demoData.dart';

@lazySingleton
class VegiEatsService {
  final Dio dio;

  VegiEatsService(this.dio) {
    dio.options.baseUrl = UrlConstants.VEGI_EATS_BACKEND;
    dio.options.headers = Map.from({"Content-Type": 'application/json'});
  }

  Future<List<RestaurantItem>> featuredRestaurants(String outCode) async {
    Response response =
        await dio.get('api/v1/vendors?wallet=test&outcode=$outCode');

    List<dynamic> results = response.data['vendors'] as List;

    List<RestaurantItem> restaurants = [];

    results.forEach(
      (element) {
        restaurants.add(
          RestaurantItem(
            restaurantID: element["id"].toString(),
            name: element['name'],
            imageURL: UrlConstants.VEGI_EATS_BACKEND +
                "vendors/download-image/" +
                element['id'].toString(),
            category: "Category",
            costLevel: "Cost Level",
            deliveryTime: "Delivery Time",
            rating: "Rating",
            address: demoAddress, //TODO: Change this
            listOfMenuItems: [],
          ),
        );
      },
    );

    return restaurants;
  }

  Future<List<MenuItem>> getRestaurantMenuItems(String restaurantID) async {
    Response response =
        await dio.get('api/v1/vendors/$restaurantID?wallet=test');

    List<dynamic> results = response.data['vendor']['products'] as List;

    List<MenuItem> menuItems = [];

    results.forEach(
      (element) {
        menuItems.add(
          MenuItem(
            isFeatured: Random().nextBool(),
            menuItemID: element["id"].toString(),
            restaurantID: restaurantID,
            name: element['name'],
            imageURLs: [
              UrlConstants.VEGI_EATS_BACKEND +
                  "products/download-image/" +
                  element['id'].toString()
            ],
            category: "Category",
            price: element['basePrice'],
            description: element['description'],
            extras: {},
            listOfProductOptions: [],
          ),
        );
      },
    );

    return menuItems;
  }

  Future<List<ProductOptionsCategory>> getProductOptions(String itemID) async {
    Response response = await dio
        .get('api/v1/products/get-product-options/$itemID?wallet=test');

    List<dynamic> results = response.data as List;

    List<ProductOptionsCategory> listOfProductOptions = [];

    results.forEach(
      (category) {
        List<ProductOptions> listOfOptions = [];
        category['values'].forEach(
          (option) {
            listOfOptions.add(
              ProductOptions(
                optionID: option['id'],
                name: option['name'],
                description: option['description'],
                price: option['priceModifier'],
                isAvaliable: option['isAvailable'],
              ),
            );
          },
        );

        listOfProductOptions.add(
          ProductOptionsCategory(
            categoryID: category['id'],
            name: category['name'],
            listOfOptions: listOfOptions,
          ),
        );
      },
    );

    return listOfProductOptions;
  }

  Future<int> checkDiscountCode(String discountCode) async {
    Response response = await dio
        .get('api/v1/discounts/check-discount-code/$discountCode?wallet=test');

    Map<dynamic, dynamic> results = response.data['discount'] as Map;

    return results['percentage'];
  }

  Future<FullfilmentMethods> getDeliverySlots(
      {required String vendorID, required String dateRequired}) async {
    Response response = await dio.get(
        'api/v1/vendors/get-fulfilment-slots?vendor=$vendorID&date=2022-03-03');
    //TODO: Change

    FullfilmentMethods methods = FullfilmentMethods.fromJson(response.data);

    // List<dynamic> deliverySlots =
    //     response.data['deliverySlots'] as List<dynamic>;

    // Map<String, dynamic> deliveryMethod =
    //     response.data['deliveryMethod'] as Map<String, dynamic>;

    // List<Map<String, String>> listOfDeliverySlots = [];

    // deliverySlots.forEach((element) {
    //   listOfDeliverySlots.add(Map.from(element));
    // });

    return methods;
  }

  Future<List<Map<String, String>>> getCollectionSlots(
      {required String vendorID, required String dateRequired}) async {
    Response response = await dio.get(
        'api/v1/vendors/get-fulfilment-slots?vendor=$vendorID&date=2022-03-03');
    //TODO: Change

    List<dynamic> results = response.data['collectionSlots'] as List<dynamic>;

    List<Map<String, String>> listOfCollectionSlots = [];

    results.forEach((element) {
      listOfCollectionSlots.add(Map.from(element));
    });

    return listOfCollectionSlots;
  }

  Future<Map<dynamic, dynamic>> createOrder(
      Map<String, dynamic> orderObject) async {
    Response response = await dio
        .post('/api/v1/orders/create-order?wallet=test', data: orderObject);

    Map<dynamic, dynamic> result = response.data;

    return result;
  }

  Future<Map<dynamic, dynamic>> checkOrderStatus(String orderID) async {
    Response response =
        await dio.get('/api/v1/orders/get-order-status?orderId=$orderID');

    Map<dynamic, dynamic> result = response.data;

    return result;
  }
}
