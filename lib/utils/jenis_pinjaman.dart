import 'package:flutter/material.dart';
enum  JenisPinjamanFilter {
  BIASA,
  BARANG,
  ECOMMERCE,
  ALL
}

class JenisPinjamanColor {
  getColor(String status){
    if(status != null) {
      switch (status.toUpperCase()) {
        case "BIASA":
          return Colors.white;
          break;
        case "BARANG":
          return Colors.black;
          break;
        case "ECOMMERCE":
          return Colors.blue;
          break;
        case "ALL":
          return Colors.blue;
          break;
      }
    } else {
      return Colors.white;
    }
  }
}

class StatusJP {
  final JenisPinjamanFilter status;

  StatusJP(this.status);

  getName() {
    switch (status) {
      case JenisPinjamanFilter.BIASA:
        return "Pinjaman biasa";
        break;
      case JenisPinjamanFilter.BARANG:
        return "barang";
        break;
      case JenisPinjamanFilter.ECOMMERCE:
        return "e commerce";
        break;
      case JenisPinjamanFilter.ALL:
        return "all";
        break;
    }
  }
}
