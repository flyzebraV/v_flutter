import 'dart:convert';

/// 复杂json处理
void main() {
  // jsonToObject();
  jsonToObjectFast();
}

// 三个分号保留字符串格式
String jsonStr = '''
  {
	"code": 0,
	"data": {
		"code": 0,
		"success": true,
		"data": {
			"id": 1011,
			"tax_id": "0013",
			"tax_name": "税目AA",
			"tax_rate": 0.211000,
			"edit_time": "2021-06-03"
		}
	},
	"message": ""
}
  ''';

jsonToObject() {
  var map = jsonDecode(jsonStr);
  var tax = Tax.fromJson(map);
  print('jsonToObject--${tax.data.data.tax_name}'); // jsonToObject--税目AA
}

jsonToObjectFast() {
  var map = jsonDecode(jsonStr);
  var tax = FastTaxData.fromJson(map);
  print('jsonToObjectFast--${tax.tax_rate}'); // jsonToObjectFast--0.211
}

class Tax {
  Tax.fromJson(Map<String, dynamic> map)
      : code = map['code'],
        data = TaxData.fromJson(map['data']),
        message = map['message'];
  int? code;
  TaxData data;
  String? message;
}

class TaxData {
  TaxData.fromJson(Map<String, dynamic> map)
      : code = map['code'],
        data = TaxBodyData.fromJson(map['data']),
        success = map['success'];
  int? code;
  TaxBodyData data;
  bool? success;
}

class TaxBodyData {
  TaxBodyData.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        tax_id = map['tax_id'],
        tax_name = map['tax_name'],
        tax_rate = map['tax_rate'],
        edit_time = map['edit_time'];

  int? id;
  String? tax_id;
  String? tax_name;
  double? tax_rate;
  String? edit_time;
}

class FastTaxData {
  FastTaxData.fromJson(Map<String, dynamic> map) {
    var data1 = map['data'] as Map<String, dynamic>;
    var data2 = data1['data'] as Map<String, dynamic>;
    id = data2['id'];
    tax_id = data2['tax_id'];
    tax_name = data2['tax_name'];
    tax_rate = data2['tax_rate'];
    edit_time = data2['edit_time'];
  }

  int? id;
  String? tax_id;
  String? tax_name;
  double? tax_rate;
  String? edit_time;
}
