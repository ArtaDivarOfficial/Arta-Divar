import 'dart:convert';

import 'package:divar/repositories/pagination_repository/constants/constants.dart';

class PaginationModel {
  static late final PaginationModel? _paginationModel;

  final int? paginationCurrentPage;
  final List<Object?>? paginationData;
  final String? paginationFirstPageUrl;
  final String? paginationNextPageUrl;

  static PaginationModel? getInstance() {
    _paginationModel ??= PaginationModel();
    return _paginationModel;
  }

  PaginationModel({
    this.paginationCurrentPage,
    this.paginationData,
    this.paginationFirstPageUrl,
    this.paginationNextPageUrl,
  });

  PaginationModel copyWith({
    int? paginationCurrentPage,
    List<Object?>? paginationData,
    String? paginationFirstPageUrl,
    String? paginationNextPageUrl,
  }) {
    return PaginationModel(
      paginationCurrentPage:
          paginationCurrentPage ?? this.paginationCurrentPage,
      paginationData: paginationData ?? this.paginationData,
      paginationFirstPageUrl:
          paginationFirstPageUrl ?? this.paginationFirstPageUrl,
      paginationNextPageUrl:
          paginationNextPageUrl ?? this.paginationNextPageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PaginationConstants.paginationCurrentPage: paginationCurrentPage,
      PaginationConstants.paginationData: paginationData,
      PaginationConstants.paginationFirstPageUrl: paginationFirstPageUrl,
      PaginationConstants.paginationNextPageUrl: paginationNextPageUrl,
    };
  }

  factory PaginationModel.fromMap(Map<Object?, Object?> map) {
    return PaginationModel(
      paginationCurrentPage:
          map[PaginationConstants.paginationCurrentPage] != null
              ? map[PaginationConstants.paginationCurrentPage] as int
              : null,
      paginationData: map[PaginationConstants.paginationData] as List,
      paginationFirstPageUrl:
          map[PaginationConstants.paginationFirstPageUrl] != null
              ? map[PaginationConstants.paginationFirstPageUrl] as String
              : null,
      paginationNextPageUrl:
          map[PaginationConstants.paginationNextPageUrl] != null
              ? map[PaginationConstants.paginationNextPageUrl] as String
              : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaginationModel.fromJson(String source) =>
      PaginationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaginationModel(paginationCurrentPage: $paginationCurrentPage, paginationData: $paginationData, paginationFirstPageUrl: $paginationFirstPageUrl, paginationNextPageUrl: $paginationNextPageUrl)';
  }

  @override
  bool operator ==(covariant PaginationModel other) {
    if (identical(this, other)) return true;

    return other.paginationCurrentPage == paginationCurrentPage &&
        other.paginationData == paginationData &&
        other.paginationFirstPageUrl == paginationFirstPageUrl &&
        other.paginationNextPageUrl == paginationNextPageUrl;
  }

  @override
  int get hashCode {
    return paginationCurrentPage.hashCode ^
        paginationData.hashCode ^
        paginationFirstPageUrl.hashCode ^
        paginationNextPageUrl.hashCode;
  }
}
