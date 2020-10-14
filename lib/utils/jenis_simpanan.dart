import 'package:flutter/material.dart';
enum  JenisSimpananFilter {
  BIASA,
  POKOK,
  WAJIB,
  DEPOSITO
}

class JenisSimpananColor {
  getColor(String status){
    if(status != null) {
      switch (status.toUpperCase()) {
        case "BIASA":
          return Colors.white;
          break;
        case "POKOK":
          return Colors.black;
          break;
        case "WAJIB":
          return Colors.grey;
          break;
        case "DEPOSITO":
          return Colors.blue;
          break;
      }
    } else {
      return Colors.white;
    }
  }
}

class TipeSimpanan {
  final JenisSimpananFilter status;

  TipeSimpanan(this.status);

  getName() {
    switch (status) {
      case JenisSimpananFilter.WAJIB:
        return "Simpanan Wajib";
        break;
      case JenisSimpananFilter.BIASA:
        return "Simpanan Biasa";
        break;
      case JenisSimpananFilter.POKOK:
        return "Simpanan Pokok";
        break;
      case JenisSimpananFilter.DEPOSITO:
        return "Deposito";
        break;
    }
  }
}
