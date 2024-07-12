import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_apps/helper/navigator.dart';
import 'package:todo_apps/src/view/todo_create.dart';

class TodoViewModel extends ChangeNotifier{

  final NavigationService _navigationService;

  TodoViewModel(this._navigationService);

  navigateToCreate(context){
    _navigationService.navigate(const TodoCreate())

  }

}