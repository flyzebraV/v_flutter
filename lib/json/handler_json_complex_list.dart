
import 'dart:convert';
/// 复杂json处理（list)
void main() {
  jsonToObjectFast();
  // jsonToObjectFastMap();
}

String jsonStr = '''
  {
  "code": 0,
  "data": {
    "code": 0,
    "success": true,
    "list": [
      {
        "id": 1011,
        "tax_id": "0013",
        "tax_name": "税目AA",
        "tax_rate": 0.211,
        "edit_time": "2021-06-03"
      },
      {
        "id": 1011,
        "tax_id": "0014",
        "tax_name": "税目BB",
        "tax_rate": 0.44,
        "edit_time": "2021-06-11"
      }
    ]
  },
  "message": ""
}
  ''';

jsonToObjectFastMap() {
  var map = jsonDecode(jsonStr);
  var simpleTaxData = SimpleTaxDataMap.fromJson(map);
  print('simpleTaxDataMap=${simpleTaxData.data?[0].keys}');
}
jsonToObjectFast() {
  var map = jsonDecode(jsonStr);
  var tax = SimpleTaxData.fromJson(map);
  print('jsonToObjectFast--${tax.data?[0].tax_name}');
}


class SimpleTaxData {
  SimpleTaxData.fromJson(Map<String, dynamic> map) {
    var data1 = map['data'] as Map<String, dynamic>;
    var data2 = data1['list'] as List<dynamic>;
    data = data2.map((e) => DataList.fromJson(e)).toList();
  }

  List<DataList>? data;
}

class DataList {
  DataList.fromJson(Map<String, dynamic> map)
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

class SimpleTaxDataMap {
  SimpleTaxDataMap.fromJson(Map<String, dynamic> map) {
    var data1 = map['data'] as Map<String, dynamic>;
    var data2 = data1['data'] as List<dynamic>;
    data = data2.cast<Map<String, dynamic>>(); // 类型转换
      // data = new List<Map<String, dynamic>>.from(data2); // 等同于 cast
  }

  List<Map<String, dynamic>>? data;
}
