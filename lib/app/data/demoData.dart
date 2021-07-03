import 'package:coffee_app/app/modules/coffeePage/model/coffee.dart';
import 'package:coffee_app/app/modules/coffeePage/model/popularCoffee.dart';

class CoffeeData {
  List<Coffee> GetCoffeeList() {
    return <Coffee>[
      Coffee(
        'Cappucino \nLatte',
        'Complex Flavor.',
        '\$5.55',
        ['images/coffee01.jpg'],
      ),
      Coffee(
        'Cappucino \nLatte',
        'Complex Flavor.',
        '\$5.55',
        ['images/coffee02.jpg'],
      ),
      Coffee(
        'Cappucino \nLatte',
        'Complex Flavor.',
        '\$5.55',
        ['images/coffee03.jpg'],
      ),
    ];
  }
}

class PopularCoffeeData {
  List<PopCoffee> GetPopularCoffeeList() {
    return <PopCoffee>[
      PopCoffee(
        'Cappucino Latte',
        'Complex Flavor.',
        '\$5.55',
        ['images/coffee01.jpg'],
      ),
      PopCoffee(
        'Cappucino Latte',
        'Complex Flavor.',
        '\$5.55',
        ['images/coffee02.jpg'],
      ),
      PopCoffee(
        'Cappucino Latte',
        'Complex Flavor.',
        '\$5.55',
        ['images/coffee03.jpg'],
      ),
    ];
  }
}
