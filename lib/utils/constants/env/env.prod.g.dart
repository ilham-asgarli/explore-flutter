// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.prod.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _ProdEnv {
  static const List<int> _enviedkeyKEY = <int>[
    3046962509,
    3632063525,
    941451712,
    1957446678,
    159620664,
  ];

  static const List<int> _envieddataKEY = <int>[
    3046962459,
    3632063588,
    941451660,
    1957446723,
    159620733,
  ];

  static final String KEY = String.fromCharCodes(List<int>.generate(
    _envieddataKEY.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataKEY[i] ^ _enviedkeyKEY[i]));
}
