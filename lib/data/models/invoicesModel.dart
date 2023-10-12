// ignore_for_file: file_names

class InvoicesModel {
  List<Data>? data;
  int? status;
  String? message;
  bool? isSuccess;
  String? token;

  InvoicesModel(
      {this.data, this.status, this.message, this.isSuccess, this.token});

  InvoicesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    data['message'] = message;
    data['isSuccess'] = isSuccess;
    data['token'] = token;
    return data;
  }
}

class Data {
  dynamic posInvoiceTypeId;
  dynamic posReportNo;
  bool? posPintAfterSave;
  bool? printFromFrontEnd;
  String? employeeName;
  String? posName;
  bool? modifyQuantity;
  bool? modifyPrice;
  bool? modifyDiscount;
  bool? modifyItem;
  bool? modifyItemUnit;
  bool? deleteAddedRow;
  bool? returned;
  bool? returnedWithoutInvoice;
  bool? credit;
  bool? sellingBank;
  bool? changeAccount;
  bool? invoiceHold;
  bool? openPOS;
  bool? cancelCheque;
  bool? modifyADiscount;
  bool? itemInquiring;
  dynamic storeId;
  String? storeName;
  List<PaymentTypeList>? paymentTypeList;
  List<ItemsList>? itemsList;
  List<CustomerList>? customerList;
  List<Salesmen>? salesmen;
  List<AccountsList>? accountsList;
  List<StoresList>? storesList;
  List<InvoiceHodeList>? invoiceHodeList;
  List<CompanyList>? companyList;
  List<CompanyInfoList>? companyInfoList;

  Data(
      {this.posInvoiceTypeId,
      this.posReportNo,
      this.posPintAfterSave,
      this.printFromFrontEnd,
      this.employeeName,
      this.posName,
      this.modifyQuantity,
      this.modifyPrice,
      this.modifyDiscount,
      this.modifyItem,
      this.modifyItemUnit,
      this.deleteAddedRow,
      this.returned,
      this.returnedWithoutInvoice,
      this.credit,
      this.sellingBank,
      this.changeAccount,
      this.invoiceHold,
      this.openPOS,
      this.cancelCheque,
      this.modifyADiscount,
      this.itemInquiring,
      this.storeId,
      this.storeName,
      this.paymentTypeList,
      this.itemsList,
      this.customerList,
      this.salesmen,
      this.accountsList,
      this.storesList,
      this.invoiceHodeList,
      this.companyList,
      this.companyInfoList});

  Data.fromJson(Map<String, dynamic> json) {
    posInvoiceTypeId = json['posInvoiceTypeId'];
    posReportNo = json['posReportNo'];
    posPintAfterSave = json['posPintAfterSave'];
    printFromFrontEnd = json['printFromFrontEnd'];
    employeeName = json['employeeName'];
    posName = json['posName'];
    modifyQuantity = json['modifyQuantity'];
    modifyPrice = json['modifyPrice'];
    modifyDiscount = json['modifyDiscount'];
    modifyItem = json['modifyItem'];
    modifyItemUnit = json['modifyItemUnit'];
    deleteAddedRow = json['deleteAddedRow'];
    returned = json['returned'];
    returnedWithoutInvoice = json['returnedWithoutInvoice'];
    credit = json['credit'];
    sellingBank = json['sellingBank'];
    changeAccount = json['changeAccount'];
    invoiceHold = json['invoiceHold'];
    openPOS = json['openPOS'];
    cancelCheque = json['cancelCheque'];
    modifyADiscount = json['modifyADiscount'];
    itemInquiring = json['itemInquiring'];
    storeId = json['storeId'];
    storeName = json['storeName'];
    if (json['paymentTypeList'] != null) {
      paymentTypeList = <PaymentTypeList>[];
      json['paymentTypeList'].forEach((v) {
        paymentTypeList!.add(PaymentTypeList.fromJson(v));
      });
    }
    if (json['itemsList'] != null) {
      itemsList = <ItemsList>[];
      json['itemsList'].forEach((v) {
        itemsList!.add(ItemsList.fromJson(v));
      });
    }
    if (json['customerList'] != null) {
      customerList = <CustomerList>[];
      json['customerList'].forEach((v) {
        customerList!.add(CustomerList.fromJson(v));
      });
    }
    if (json['salesmen'] != null) {
      salesmen = <Salesmen>[];
      json['salesmen'].forEach((v) {
        salesmen!.add(Salesmen.fromJson(v));
      });
    }
    if (json['accountsList'] != null) {
      accountsList = <AccountsList>[];
      json['accountsList'].forEach((v) {
        accountsList!.add(AccountsList.fromJson(v));
      });
    }
    if (json['storesList'] != null) {
      storesList = <StoresList>[];
      json['storesList'].forEach((v) {
        storesList!.add(StoresList.fromJson(v));
      });
    }
    if (json['invoiceHodeList'] != null) {
      invoiceHodeList = <InvoiceHodeList>[];
      json['invoiceHodeList'].forEach((v) {
        invoiceHodeList!.add(InvoiceHodeList.fromJson(v));
      });
    }
    if (json['companyList'] != null) {
      companyList = <CompanyList>[];
      json['companyList'].forEach((v) {
        companyList!.add(CompanyList.fromJson(v));
      });
    }
    if (json['companyInfoList'] != null) {
      companyInfoList = <CompanyInfoList>[];
      json['companyInfoList'].forEach((v) {
        companyInfoList!.add(CompanyInfoList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['posInvoiceTypeId'] = posInvoiceTypeId;
    data['posReportNo'] = posReportNo;
    data['posPintAfterSave'] = posPintAfterSave;
    data['printFromFrontEnd'] = printFromFrontEnd;
    data['employeeName'] = employeeName;
    data['posName'] = posName;
    data['modifyQuantity'] = modifyQuantity;
    data['modifyPrice'] = modifyPrice;
    data['modifyDiscount'] = modifyDiscount;
    data['modifyItem'] = modifyItem;
    data['modifyItemUnit'] = modifyItemUnit;
    data['deleteAddedRow'] = deleteAddedRow;
    data['returned'] = returned;
    data['returnedWithoutInvoice'] = returnedWithoutInvoice;
    data['credit'] = credit;
    data['sellingBank'] = sellingBank;
    data['changeAccount'] = changeAccount;
    data['invoiceHold'] = invoiceHold;
    data['openPOS'] = openPOS;
    data['cancelCheque'] = cancelCheque;
    data['modifyADiscount'] = modifyADiscount;
    data['itemInquiring'] = itemInquiring;
    data['storeId'] = storeId;
    data['storeName'] = storeName;
    if (paymentTypeList != null) {
      data['paymentTypeList'] =
          paymentTypeList!.map((v) => v.toJson()).toList();
    }
    if (itemsList != null) {
      data['itemsList'] = itemsList!.map((v) => v.toJson()).toList();
    }
    if (customerList != null) {
      data['customerList'] = customerList!.map((v) => v.toJson()).toList();
    }
    if (salesmen != null) {
      data['salesmen'] = salesmen!.map((v) => v.toJson()).toList();
    }
    if (accountsList != null) {
      data['accountsList'] = accountsList!.map((v) => v.toJson()).toList();
    }
    if (storesList != null) {
      data['storesList'] = storesList!.map((v) => v.toJson()).toList();
    }
    if (invoiceHodeList != null) {
      data['invoiceHodeList'] =
          invoiceHodeList!.map((v) => v.toJson()).toList();
    }
    if (companyList != null) {
      data['companyList'] = companyList!.map((v) => v.toJson()).toList();
    }
    if (companyInfoList != null) {
      data['companyInfoList'] =
          companyInfoList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaymentTypeList {
  dynamic bptId;
  String? paymentTypeName;

  PaymentTypeList({this.bptId, this.paymentTypeName});

  PaymentTypeList.fromJson(Map<String, dynamic> json) {
    bptId = json['bptId'];
    paymentTypeName = json['paymentTypeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bptId'] = bptId;
    data['paymentTypeName'] = paymentTypeName;
    return data;
  }
}

class ItemsList {
  dynamic groupId;
  dynamic itemId;
  String? itemCode;
  String? itemName;
  bool? mainUnit;
  bool? defaultUnit;
  bool? defaultUnitSales;
  dynamic unitId;
  String? unitName;
  String? barCode;
  String? barcodeSeparator;
  bool? exempt;
  bool? hidePrice;
  dynamic salesValue;
  dynamic minimumSaleValue;
  dynamic taxRate;
  dynamic tableTaxRate;
  dynamic salesDiscountType;
  dynamic salesDiscountValue;
  bool? automaticDiscountS;
  bool? useTaxOnTableFees;

  ItemsList(
      {this.groupId,
      this.itemId,
      this.itemCode,
      this.itemName,
      this.mainUnit,
      this.defaultUnit,
      this.defaultUnitSales,
      this.unitId,
      this.unitName,
      this.barCode,
      this.barcodeSeparator,
      this.exempt,
      this.hidePrice,
      this.salesValue,
      this.minimumSaleValue,
      this.taxRate,
      this.tableTaxRate,
      this.salesDiscountType,
      this.salesDiscountValue,
      this.automaticDiscountS,
      this.useTaxOnTableFees});

  ItemsList.fromJson(Map<String, dynamic> json) {
    groupId = json['groupId'];
    itemId = json['itemId'];
    itemCode = json['itemCode'];
    itemName = json['itemName'];
    mainUnit = json['mainUnit'];
    defaultUnit = json['defaultUnit'];
    defaultUnitSales = json['defaultUnitSales'];
    unitId = json['unitId'];
    unitName = json['unitName'];
    barCode = json['barCode'];
    barcodeSeparator = json['barcodeSeparator'];
    exempt = json['exempt'];
    hidePrice = json['hidePrice'];
    salesValue = json['salesValue'];
    minimumSaleValue = json['minimumSaleValue'];
    taxRate = json['taxRate'];
    tableTaxRate = json['tableTaxRate'];
    salesDiscountType = json['salesDiscountType'];
    salesDiscountValue = json['salesDiscountValue'];
    automaticDiscountS = json['automaticDiscountS'];
    useTaxOnTableFees = json['useTaxOnTableFees'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['groupId'] = groupId;
    data['itemId'] = itemId;
    data['itemCode'] = itemCode;
    data['itemName'] = itemName;
    data['mainUnit'] = mainUnit;
    data['defaultUnit'] = defaultUnit;
    data['defaultUnitSales'] = defaultUnitSales;
    data['unitId'] = unitId;
    data['unitName'] = unitName;
    data['barCode'] = barCode;
    data['barcodeSeparator'] = barcodeSeparator;
    data['exempt'] = exempt;
    data['hidePrice'] = hidePrice;
    data['salesValue'] = salesValue;
    data['minimumSaleValue'] = minimumSaleValue;
    data['taxRate'] = taxRate;
    data['tableTaxRate'] = tableTaxRate;
    data['salesDiscountType'] = salesDiscountType;
    data['salesDiscountValue'] = salesDiscountValue;
    data['automaticDiscountS'] = automaticDiscountS;
    data['useTaxOnTableFees'] = useTaxOnTableFees;
    return data;
  }
}

class CustomerList {
  dynamic id;
  String? sceType;
  String? code;
  String? customerName;
  String? tel1;
  String? tel2;
  String? mobile;
  String? fax;
  String? eMail;
  String? site;
  String? address;
  String? notes;
  bool? posDefaultCusCash;
  String? taxRegistrationNo;
  String? vatNo;

  CustomerList(
      {this.id,
      this.sceType,
      this.code,
      this.customerName,
      this.tel1,
      this.tel2,
      this.mobile,
      this.fax,
      this.eMail,
      this.site,
      this.address,
      this.notes,
      this.posDefaultCusCash,
      this.taxRegistrationNo,
      this.vatNo});

  CustomerList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sceType = json['sceType'];
    code = json['code'];
    customerName = json['customerName'];
    tel1 = json['tel1'];
    tel2 = json['tel2'];
    mobile = json['mobile'];
    fax = json['fax'];
    eMail = json['eMail'];
    site = json['site'];
    address = json['address'];
    notes = json['notes'];
    posDefaultCusCash = json['posDefaultCusCash'];
    taxRegistrationNo = json['taxRegistrationNo'];
    vatNo = json['vatNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sceType'] = sceType;
    data['code'] = code;
    data['customerName'] = customerName;
    data['tel1'] = tel1;
    data['tel2'] = tel2;
    data['mobile'] = mobile;
    data['fax'] = fax;
    data['eMail'] = eMail;
    data['site'] = site;
    data['address'] = address;
    data['notes'] = notes;
    data['posDefaultCusCash'] = posDefaultCusCash;
    data['taxRegistrationNo'] = taxRegistrationNo;
    data['vatNo'] = vatNo;
    return data;
  }
}

class Salesmen {
  dynamic id;
  String? code;
  String? employeeName;

  Salesmen({this.id, this.code, this.employeeName});

  Salesmen.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    employeeName = json['employeeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['employeeName'] = employeeName;
    return data;
  }
}

class AccountsList {
  String? accountId;
  String? accountName;

  AccountsList({this.accountId, this.accountName});

  AccountsList.fromJson(Map<String, dynamic> json) {
    accountId = json['accountId'];
    accountName = json['accountName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountId'] = accountId;
    data['accountName'] = accountName;
    return data;
  }
}

class StoresList {
  bool? defaultStore;
  dynamic storeId;
  String? storeCode;
  String? storeName;

  StoresList({this.defaultStore, this.storeId, this.storeCode, this.storeName});

  StoresList.fromJson(Map<String, dynamic> json) {
    defaultStore = json['defaultStore'];
    storeId = json['storeId'];
    storeCode = json['storeCode'];
    storeName = json['storeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['defaultStore'] = defaultStore;
    data['storeId'] = storeId;
    data['storeCode'] = storeCode;
    data['storeName'] = storeName;
    return data;
  }
}

class InvoiceHodeList {
  dynamic invoiceId;
  String? invoiceCode;

  InvoiceHodeList({this.invoiceId, this.invoiceCode});

  InvoiceHodeList.fromJson(Map<String, dynamic> json) {
    invoiceId = json['invoiceId'];
    invoiceCode = json['invoiceCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['invoiceId'] = invoiceId;
    data['invoiceCode'] = invoiceCode;
    return data;
  }
}

class CompanyList {
  bool? showTaxSourceValue;
  bool? showTaxSourceRate;
  dynamic taxSourceRate;
  bool? useTaxSales;
  bool? showTaxRate;
  bool? showTaxValue;
  bool? useTaxSourceSales;
  bool? useTableTaxSales;
  bool? nTaxTFees;
  dynamic fractions;
  String? itemCodeStartWith;
  dynamic itemCodeLength;
  dynamic weightFactorDivision;
  dynamic ignoredNumber;

  CompanyList(
      {this.showTaxSourceValue,
      this.showTaxSourceRate,
      this.taxSourceRate,
      this.useTaxSales,
      this.showTaxRate,
      this.showTaxValue,
      this.useTaxSourceSales,
      this.useTableTaxSales,
      this.nTaxTFees,
      this.fractions,
      this.itemCodeStartWith,
      this.itemCodeLength,
      this.weightFactorDivision,
      this.ignoredNumber});

  CompanyList.fromJson(Map<String, dynamic> json) {
    showTaxSourceValue = json['showTaxSourceValue'];
    showTaxSourceRate = json['showTaxSourceRate'];
    taxSourceRate = json['taxSourceRate'];
    useTaxSales = json['useTaxSales'];
    showTaxRate = json['showTaxRate'];
    showTaxValue = json['showTaxValue'];
    useTaxSourceSales = json['useTaxSourceSales'];
    useTableTaxSales = json['useTableTaxSales'];
    nTaxTFees = json['nTaxTFees'];
    fractions = json['fractions'];
    itemCodeStartWith = json['itemCodeStartWith'];
    itemCodeLength = json['itemCodeLength'];
    weightFactorDivision = json['weightFactorDivision'];
    ignoredNumber = json['ignoredNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['showTaxSourceValue'] = showTaxSourceValue;
    data['showTaxSourceRate'] = showTaxSourceRate;
    data['taxSourceRate'] = taxSourceRate;
    data['useTaxSales'] = useTaxSales;
    data['showTaxRate'] = showTaxRate;
    data['showTaxValue'] = showTaxValue;
    data['useTaxSourceSales'] = useTaxSourceSales;
    data['useTableTaxSales'] = useTableTaxSales;
    data['nTaxTFees'] = nTaxTFees;
    data['fractions'] = fractions;
    data['itemCodeStartWith'] = itemCodeStartWith;
    data['itemCodeLength'] = itemCodeLength;
    data['weightFactorDivision'] = weightFactorDivision;
    data['ignoredNumber'] = ignoredNumber;
    return data;
  }
}

class CompanyInfoList {
  String? companyName;
  String? taxNumber;
  String? commercialTaxNumber;
  String? branchName;
  String? address;
  String? tel1;
  String? tel2;
  String? mobile;
  String? fax;
  String? email;
  String? site;
  String? branchVATNo;

  CompanyInfoList(
      {this.companyName,
      this.taxNumber,
      this.commercialTaxNumber,
      this.branchName,
      this.address,
      this.tel1,
      this.tel2,
      this.mobile,
      this.fax,
      this.email,
      this.site,
      this.branchVATNo});

  CompanyInfoList.fromJson(Map<String, dynamic> json) {
    companyName = json['companyName'];
    taxNumber = json['taxNumber'];
    commercialTaxNumber = json['commercialTaxNumber'];
    branchName = json['branchName'];
    address = json['address'];
    tel1 = json['tel1'];
    tel2 = json['tel2'];
    mobile = json['mobile'];
    fax = json['fax'];
    email = json['email'];
    site = json['site'];
    branchVATNo = json['branchVATNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['companyName'] = companyName;
    data['taxNumber'] = taxNumber;
    data['commercialTaxNumber'] = commercialTaxNumber;
    data['branchName'] = branchName;
    data['address'] = address;
    data['tel1'] = tel1;
    data['tel2'] = tel2;
    data['mobile'] = mobile;
    data['fax'] = fax;
    data['email'] = email;
    data['site'] = site;
    data['branchVATNo'] = branchVATNo;
    return data;
  }
}
