// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smart_ledger_ai/BankingReconcile/1_BankingReconcile.dart';
import 'package:smart_ledger_ai/BankingReconcile/2_BankReconcile.dart';
import 'package:smart_ledger_ai/GettingStarted/5_Supplier.dart';
import 'package:smart_ledger_ai/GettingStarted/6_Bank.dart';
import 'package:smart_ledger_ai/GettingStarted/7_BranchDivision.dart';
import 'package:smart_ledger_ai/MasterlistCustomerInfo/1_CustomerInfoDashboard.dart';
import 'package:smart_ledger_ai/MasterlistCustomerInfo/2_CustomerInformation.dart';
import 'package:smart_ledger_ai/MasterlistCustomerInfo/3_CustomerImportImage.dart';
import 'package:smart_ledger_ai/Dashboard/MainDashboard.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/1_ProductNServicesDashboard.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/2_ProductNServicesChoices.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/3_NonInventory.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/4_Service.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/5_Bundle.dart';
import 'package:smart_ledger_ai/MasterlistSupplierInfo/1_SupplierInfoDashboard.dart';
import 'package:smart_ledger_ai/MasterlistSupplierInfo/2_SupplierInfo.dart';
import 'package:smart_ledger_ai/MasterlistSupplierInfo/test.dart';
import 'package:smart_ledger_ai/PurchasesAPV/1_PurchasesAPV.dart';
import 'package:smart_ledger_ai/SettingsPreferences/1_SettingsPreferences.dart';

import 'Registration/LoginScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
