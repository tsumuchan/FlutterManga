import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
abstract class Page with _$Page {
  const factory Page.manga({@required String url}) = Manga;

  const factory Page.end() = End;
}

extension PageListExt on List<Page> {
  int mangaPageLength() {
    return where((page) => page is Manga).length;
  }

  int lengthForIndex() {
    return length - 1;
  }
}
