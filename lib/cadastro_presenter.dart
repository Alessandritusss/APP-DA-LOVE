import 'package:app_da_love/cadastro_model.dart';
import 'package:flutter/material.dart';

class CadastrePresenter with ChangeNotifier {
  CadastreModel model = CadastreModel();

  setName(String name) {
    model.nome = name;
    notifyListeners();
  }
}
