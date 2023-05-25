// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_result_v3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResultV3 _$ProductResultV3FromJson(Map<String, dynamic> json) =>
    ProductResultV3()
      ..barcode = json['code'] as String?
      ..result = json['result'] == null
          ? null
          : LocalizedTag.fromJson(json['result'] as Map<String, dynamic>)
      ..status = $enumDecodeNullable(
          _$ProductResultStatusEnumMap, json['status'],
          unknownValue: ProductResultStatus.unKnown)
      ..errors = ProductResultV3._fromJsonListAnswerForField(json['errors'])
      ..warnings = ProductResultV3._fromJsonListAnswerForField(json['warnings'])
      ..product = json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>);

Map<String, dynamic> _$ProductResultV3ToJson(ProductResultV3 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.barcode);
  writeNotNull('result', instance.result);
  writeNotNull('status', _$ProductResultStatusEnumMap[instance.status]);
  writeNotNull('errors', instance.errors);
  writeNotNull('warnings', instance.warnings);
  writeNotNull('product', instance.product);
  return val;
}

const _$ProductResultStatusEnumMap = {
  ProductResultStatus.success: 'success',
  ProductResultStatus.successWarnings: 'success_with_warnings',
  ProductResultStatus.failure: 'failure',
  ProductResultStatus.unKnown: 'unknown_status',
};
