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
  Manga manga({@required String url}) {
    return Manga(
      url: url,
    );
  }

// ignore: unused_element
  End end() {
    return const End();
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
    @required Result manga(Manga value),
    @required Result end(End value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manga(Manga value),
    Result end(End value),
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

abstract class $MangaCopyWith<$Res> {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) then) =
      _$MangaCopyWithImpl<$Res>;
  $Res call({String url});
}

class _$MangaCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(Manga _value, $Res Function(Manga) _then)
      : super(_value, (v) => _then(v as Manga));

  @override
  Manga get _value => super._value as Manga;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(Manga(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

class _$Manga with DiagnosticableTreeMixin implements Manga {
  const _$Manga({@required this.url}) : assert(url != null);

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
        (other is Manga &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  $MangaCopyWith<Manga> get copyWith =>
      _$MangaCopyWithImpl<Manga>(this, _$identity);

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
    @required Result manga(Manga value),
    @required Result end(End value),
  }) {
    assert(manga != null);
    assert(end != null);
    return manga(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manga(Manga value),
    Result end(End value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (manga != null) {
      return manga(this);
    }
    return orElse();
  }
}

abstract class Manga implements Page {
  const factory Manga({@required String url}) = _$Manga;

  String get url;
  $MangaCopyWith<Manga> get copyWith;
}

abstract class $EndCopyWith<$Res> {
  factory $EndCopyWith(End value, $Res Function(End) then) =
      _$EndCopyWithImpl<$Res>;
}

class _$EndCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements $EndCopyWith<$Res> {
  _$EndCopyWithImpl(End _value, $Res Function(End) _then)
      : super(_value, (v) => _then(v as End));

  @override
  End get _value => super._value as End;
}

class _$End with DiagnosticableTreeMixin implements End {
  const _$End();

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
    return identical(this, other) || (other is End);
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
    @required Result manga(Manga value),
    @required Result end(End value),
  }) {
    assert(manga != null);
    assert(end != null);
    return end(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result manga(Manga value),
    Result end(End value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class End implements Page {
  const factory End() = _$End;
}
