import 'package:flutter/material.dart';
enum  StatusSimpananFilter {
  TOLAK,
  BATAL,
  SUKSES,
  BELUMDIKONFIRMASI
}

class StatusSimpananColor {
  getColor(String status){
    if(status != null) {
      switch (status.toUpperCase()) {
        case "BATAL":
          return Colors.grey;
          break;
        case "BELUM DIKONFIRMASI":
          return Colors.orange[300];
          break;
        case "TOLAK":
          return Colors.red[600];
          break;
        case "SUKSES":
          return Colors.green[600];
          break;
      }
    } else {
      return Colors.white;
    }
  }
}

class StatusSimpan {
  final StatusSimpananFilter status;

  StatusSimpan(this.status);

  getName() {
    switch (status) {
      case StatusSimpananFilter.BATAL:
        return "Batal";
        break;
      case StatusSimpananFilter.BELUMDIKONFIRMASI:
        return "Belum dikonfirmasi";
        break;
      case StatusSimpananFilter.TOLAK:
        return "Tolak";
        break;
      case StatusSimpananFilter.SUKSES:
        return "Sukses";
        break;
    }
  }
}
