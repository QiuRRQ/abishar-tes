import 'package:flutter/material.dart';
enum  LunasStatus {
  BELUM,
  LUNAS,
  PROSES
}

class LunasStatusColor {
  getColor(String status){
    if(status != null) {
      switch (status.toUpperCase()) {
        case "BELUM":
          return Colors.grey;
          break;
        case "PROSES":
          return Colors.orange[300];
          break;
        case "LUNAS":
          return Colors.green[600];
          break;
      }
    } else {
      return Colors.white;
    }
  }
}

class LunasStatusClass {
  final LunasStatus status;

  LunasStatusClass(this.status);

  getName() {
    switch (status) {

      case LunasStatus.BELUM:
        return "Belum";
        break;
      case LunasStatus.LUNAS:
        return "Lunas";
        break;
      case LunasStatus.PROSES:
        return "Proses";
        break;
    }
  }
}


