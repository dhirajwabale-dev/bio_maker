import 'package:get/get.dart';

class FqaController extends GetxController {
  final firstDropdownClick = false.obs;
  final secondDropdownClick = false.obs;
  final thirdDropdownClick = false.obs;
  final fourthDropdownClick = false.obs;
  final fifthDropdownClick = false.obs;
  final sixDropdownClick = false.obs;
  final seventhDropdownClick = false.obs;
  final eighthDropdownClick = false.obs;
  final ninethDropdownClick = false.obs;

  void firstClick() {
    firstDropdownClick.value = !firstDropdownClick.value;
  }

  void secondClick() {
    secondDropdownClick.value = !secondDropdownClick.value;
  }

  void thirdClick() {
    thirdDropdownClick.value = !thirdDropdownClick.value;
  }

  void fourthClick() {
    fourthDropdownClick.value = !fourthDropdownClick.value;
  }

  void fifthClick() {
    fifthDropdownClick.value = !fifthDropdownClick.value;
  }

  void sixthClick() {
    sixDropdownClick.value = !sixDropdownClick.value;
  }

  void seventhClick() {
    seventhDropdownClick.value = !seventhDropdownClick.value;
  }

  void eighthClick() {
    eighthDropdownClick.value = !eighthDropdownClick.value;
  }

  void ninethClick() {
    ninethDropdownClick.value = !ninethDropdownClick.value;
  }
}
