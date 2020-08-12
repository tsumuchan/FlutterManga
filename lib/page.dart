import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
abstract class Page with _$Page {
  const factory Page.manga({@required String url}) = Manga;

  const factory Page.end() = End;
}
