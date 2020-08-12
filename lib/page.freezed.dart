// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PageTearOff {
  const _$PageTearOff();

// ignore: unused_element
  MangaPage manga({@required String url}) {
    return MangaPage(
      url: url,
    );
  }

// ignore: unused_element
  EndPage end() {
    return const EndPage();
  }
}

// ignore: unused_element
const $Page = _$PageTearOff();

mixin _$Page {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manga(String url),
    @required Result end(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manga(String url),
    Result end(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manga(MangaPage value),
    @required Result end(EndPage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manga(MangaPage value),
    Result end(EndPage value),
    @required Result orElse(),
  });
}

abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res>;
}

class _$PageCopyWithImpl<$Res> implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  final Page _value;
  // ignore: unused_field
  final $Res Function(Page) _then;
}

abstract class $MangaPageCopyWith<$Res> {
  factory $MangaPageCopyWith(MangaPage value, $Res Function(MangaPage) then) =
      _$MangaPageCopyWithImpl<$Res>;
  $Res call({String url});
}

class _$MangaPageCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements $MangaPageCopyWith<$Res> {
  _$MangaPageCopyWithImpl(MangaPage _value, $Res Function(MangaPage) _then)
      : super(_value, (v) => _then(v as MangaPage));

  @override
  MangaPage get _value => super._value as MangaPage;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(MangaPage(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

class _$MangaPage with DiagnosticableTreeMixin implements MangaPage {
  const _$MangaPage({@required this.url}) : assert(url != null);

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Page.manga(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Page.manga'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MangaPage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  $MangaPageCopyWith<MangaPage> get copyWith =>
      _$MangaPageCopyWithImpl<MangaPage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manga(String url),
    @required Result end(),
  }) {
    assert(manga != null);
    assert(end != null);
    return manga(url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manga(String url),
    Result end(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (manga != null) {
      return manga(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manga(MangaPage value),
    @required Result end(EndPage value),
  }) {
    assert(manga != null);
    assert(end != null);
    return manga(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manga(MangaPage value),
    Result end(EndPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (manga != null) {
      return manga(this);
    }
    return orElse();
  }
}

abstract class MangaPage implements Page {
  const factory MangaPage({@required String url}) = _$MangaPage;

  String get url;
  $MangaPageCopyWith<MangaPage> get copyWith;
}

abstract class $EndPageCopyWith<$Res> {
  factory $EndPageCopyWith(EndPage value, $Res Function(EndPage) then) =
      _$EndPageCopyWithImpl<$Res>;
}

class _$EndPageCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements $EndPageCopyWith<$Res> {
  _$EndPageCopyWithImpl(EndPage _value, $Res Function(EndPage) _then)
      : super(_value, (v) => _then(v as EndPage));

  @override
  EndPage get _value => super._value as EndPage;
}

class _$EndPage with DiagnosticableTreeMixin implements EndPage {
  const _$EndPage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Page.end()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Page.end'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EndPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result manga(String url),
    @required Result end(),
  }) {
    assert(manga != null);
    assert(end != null);
    return end();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result manga(String url),
    Result end(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (end != null) {
      return end();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result manga(MangaPage value),
    @required Result end(EndPage value),
  }) {
    assert(manga != null);
    assert(end != null);
    return end(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manga(MangaPage value),
    Result end(EndPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class EndPage implements Page {
  const factory EndPage() = _$EndPage;
}
