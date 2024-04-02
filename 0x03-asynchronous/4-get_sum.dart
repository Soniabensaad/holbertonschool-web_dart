import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = json.decode(userData);
    String userId = userDataMap['id'];

    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userOrdersList = json.decode(userOrdersData);

    double total = 0;

    for (var product in userOrdersList) {
      String productPriceData = await fetchProductPrice(product);
      double price = json.decode(productPriceData);
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
