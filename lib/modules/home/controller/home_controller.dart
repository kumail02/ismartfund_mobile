import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  int _currentSlider = 0;

  int get currentSlider => _currentSlider;

  set currentSlider(int value) {
    _currentSlider = value;
    update();
  }

  void onSliderChanged(int index) {
    currentSlider = index;
  }
}
