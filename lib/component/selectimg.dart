import 'package:flutter/foundation.dart';

class SelectedImageProvider with ChangeNotifier {
  String _selectedImagePath = 'assets/sepatu-bigsize.png';

  String get selectedImagePath => _selectedImagePath;

  void setSelectedImage(String imagePath) {
    _selectedImagePath = imagePath;
    notifyListeners();
  }
}
