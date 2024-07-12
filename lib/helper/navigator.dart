import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationService {
  late GlobalKey<NavigatorState> navigationKey;

  static NavigationService instance = NavigationService();

  NavigationService() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  navigator(Widget rn) {
    return navigationKey.currentState!
        .push(MaterialPageRoute(builder: (context) => rn));
  }
  goBack() {
    return navigationKey.currentState!.pop();
  }
  showLoader () {
    return Future.delayed(Duration.zero, (){
      showDialog(context: navigationKey.currentContext!,barrierDismissible: false, builder: (context){
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      });
    });
  }
}
