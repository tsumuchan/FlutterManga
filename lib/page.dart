import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
abstract class Page with _$Page {
  const factory Page.manga({@required String url}) = MangaPage;

  const factory Page.end() = EndPage;
}

extension PageListExt on List<Page> {
  int mangaPageLength() {
    return where((page) => page is MangaPage).length;
  }

  int lengthForIndex() {
    return length - 1;
  }
}
