import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int drucker = 0;
  int nah = 0;
  int topf = 0;
  int get totalItemsPrice => nah * 5 + drucker * 22 + topf * 35;
  int get totalItems => nah + drucker + topf;
  void adddrucker() {
    drucker++;
    notifyListeners();
  }

  void removedrucker() {
    if (drucker > 0) {
      drucker--;
      notifyListeners();
    }
  }

  void addnah() {
    nah++;
    notifyListeners();
  }

  void removenah() {
    if (nah > 0) {
      nah--;
      notifyListeners();
    }
  }

  void cleardrucker() {
    drucker = 0;
    notifyListeners();
  }

  void cleartopf() {
    topf = 0;
    notifyListeners();
  }

  void clearnah() {
    nah = 0;
    notifyListeners();
  }

  void addtopf() {
    topf++;
    notifyListeners();
  }

  void removetopf() {
    if (topf > 0) {
      topf--;
      notifyListeners();
    }
  }
}
