import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_apps/helper/navigator.dart';
import 'package:todo_apps/src/view/todo_create.dart';

import '../view/todo_edit.dart';

class TodoViewModel extends ChangeNotifier{

  final NavigationService _navigationService;

  TodoViewModel(this._navigationService);

  navigateToCreate(){
    _navigationService.navigate(const TodoCreate());

  }

  navigateToEdit(){
    _navigationService.navigate(const TodoEdit());
  }

}