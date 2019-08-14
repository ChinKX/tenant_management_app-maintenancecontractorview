import 'package:flutter/material.dart';
import 'package:tenant_management_app_maintenancecontractorview/models/maintenance_model.dart';

class PaymentModel {
  IconData _icon;
  String _issueDate, _paidDate;
  Color _color;
  double _amount;
  String _paymentType;
  bool _completed;
  MaintenanceModel _maintenance;

  PaymentModel(this._icon, this._color, this._issueDate, this._paidDate,
      this._amount, this._paymentType, this._completed, this._maintenance);

  String get issueDate => _issueDate;

  String get paidDate => _paidDate;

  double get amount => _amount;

  String get type => _paymentType;

  IconData get icon => _icon;

  Color get color => _color;

  bool get completed => _completed;

  MaintenanceModel get maintenance => _maintenance;
}