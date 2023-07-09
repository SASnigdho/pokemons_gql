import 'package:get/get.dart';
import '../controllers/pokemon_controller.dart';
import '../data/provider/pokemon_repository.dart';

class PokemonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonController>(
      () => PokemonController(PokemonRepository()),
    );
  }
}
