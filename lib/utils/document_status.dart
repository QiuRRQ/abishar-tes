import 'package:flutter/material.dart';
enum  DocumentStatus {
  BATAL,
  TERLAKSANA,
  DITOLAK,
  TERIMA,
  BELUMDIKONFIRMASI,
  ALL
}

class DocumentStatusColor {
  getColor(String status){
    if(status != null) {
      switch (status.toUpperCase()) {
        case "BATAL":
          return Colors.grey;
          break;
        case "TERLAKSANA":
          return Colors.blue;
          break;
        case "DITOLAK":
          return Colors.red[600];
          break;
        case "TERIMA":
          return Colors.green[600];
          break;
        case "BELUM DIKONFIRMASI":
          return Colors.orange[300];
          break;
        case "ALL":
          return Colors.grey[300];
          break;
      }
    } else {
      return Colors.white;
    }
  }
}

class StatusDocument {
  final DocumentStatus status;

  StatusDocument(this.status);

  getName() {
    switch (status) {

      case DocumentStatus.BATAL:
        return "Batal";
        break;
      case DocumentStatus.TERIMA:
        return "Terima";
        break;
      case DocumentStatus.DITOLAK:
        return "Ditolak";
        break;
      case DocumentStatus.BELUMDIKONFIRMASI:
        return "Belum dikonfirmasi";
        break;
      case DocumentStatus.TERLAKSANA:
        return "Terlaksana";
        break;
      case DocumentStatus.ALL:
        return "Semua";
        break;
    }
  }
}
