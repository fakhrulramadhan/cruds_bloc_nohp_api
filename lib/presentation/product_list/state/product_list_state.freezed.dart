// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  set products(List<Product> value) => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListStateCopyWith<ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
  @useResult
  $Res call({int counter, List<Product> products, bool loading});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? products = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListStateCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$$_ProductListStateCopyWith(
          _$_ProductListState value, $Res Function(_$_ProductListState) then) =
      __$$_ProductListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<Product> products, bool loading});
}

/// @nodoc
class __$$_ProductListStateCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$_ProductListState>
    implements _$$_ProductListStateCopyWith<$Res> {
  __$$_ProductListStateCopyWithImpl(
      _$_ProductListState _value, $Res Function(_$_ProductListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? products = null,
    Object? loading = null,
  }) {
    return _then(_$_ProductListState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductListState implements _ProductListState {
  _$_ProductListState(
      {this.counter = 0, this.products = const [], this.loading = false});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<Product> products;
  @override
  @JsonKey()
  bool loading;

  @override
  String toString() {
    return 'ProductListState(counter: $counter, products: $products, loading: $loading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListStateCopyWith<_$_ProductListState> get copyWith =>
      __$$_ProductListStateCopyWithImpl<_$_ProductListState>(this, _$identity);
}

abstract class _ProductListState implements ProductListState {
  factory _ProductListState(
      {int counter,
      List<Product> products,
      bool loading}) = _$_ProductListState;

  @override
  int get counter;
  set counter(int value);
  @override
  List<Product> get products;
  set products(List<Product> value);
  @override
  bool get loading;
  set loading(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_ProductListStateCopyWith<_$_ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}
