import 'package:flutter/material.dart';
enum  StatusAngsuran {
  BAYAR,
  TAGIH,
  ALL
}

class StatusAngsuranColor {
  getColor(String status){
    if(status != null) {
      switch (status.toUpperCase()) {
        case "BAYAR":
          return Colors.green[600];
          break;
        case "TAGIH":
          return Colors.red[600];
          break;
        case "ALL":
          return Colors.grey[600];
          break;
      }
    } else {
      return Colors.white;
    }
  }
}

class StatusAngsuranClass {
  final StatusAngsuran status;

  StatusAngsuranClass(this.status);

  getName() {
    switch (status) {

      case StatusAngsuran.BAYAR:
        return "Bayar";
        break;
      case StatusAngsuran.TAGIH:
        return "Tagih";
        break;
      case StatusAngsuran.ALL:
        return "Semua";
        break;
    }
  }
}
