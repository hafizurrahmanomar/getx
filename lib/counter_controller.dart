import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterController extends GetxController{

  int _counter = 0;

  int get counter => _counter;

  void increment(){
    _counter++;
    update();
  }

  void decrement(){
   if(_counter <= 0){
     return;
   }
    _counter--;
    update();

  }



}