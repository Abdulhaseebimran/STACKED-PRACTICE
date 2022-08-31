import 'package:stacked/stacked.dart';

class HomeViewModels extends BaseViewModel {
  int Count = 0;

  addCounter() {
    Count++;
    print(Count);
    notifyListeners();
  }
}