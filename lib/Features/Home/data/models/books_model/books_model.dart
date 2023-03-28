import 'package:bookly_app/Features/Home/data/models/books_model/sale_info.dart';
import 'package:bookly_app/Features/Home/data/models/books_model/search_info.dart';
import 'package:bookly_app/Features/Home/data/models/books_model/volume_info.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'access_info.dart';

@JsonSerializable()
class BooksModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BooksModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  // factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
  //       kind: json['kind']?.toString(),
  //       id: json['id']?.toString(),
  //       etag: json['etag']?.toString(),
  //       selfLink: json['selfLink']?.toString(),
  //       volumeInfo: json['volumeInfo'] == null
  //           ? null
  //           : VolumeInfo.fromJson(
  //               Map<String, dynamic>.from(json['volumeInfo'])),
  //       saleInfo: json['saleInfo'] == null
  //           ? null
  //           : SaleInfo.fromJson(Map<String, dynamic>.from(json['saleInfo'])),
  //       accessInfo: json['accessInfo'] == null
  //           ? null
  //           : AccessInfo.fromJson(
  //               Map<String, dynamic>.from(json['accessInfo'])),
  //       searchInfo: json['searchInfo'] == null
  //           ? null
  //           : SearchInfo.fromJson(
  //               Map<String, dynamic>.from(json['searchInfo'])),
  //     );
  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        kind: json['kind']?.toString(),
        id: json['id']?.toString(),
        etag: json['etag']?.toString(),
        selfLink: json['selfLink']?.toString(),
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(
                Map<String, dynamic>.from(json['volumeInfo'])),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(Map<String, dynamic>.from(json['saleInfo'])),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(
                Map<String, dynamic>.from(json['accessInfo']!)),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(
                Map<String, dynamic>.from(json['searchInfo']!)),
      );

  Map<String, dynamic> toJson() => {
        if (kind != null) 'kind': kind,
        if (id != null) 'id': id,
        if (etag != null) 'etag': etag,
        if (selfLink != null) 'selfLink': selfLink,
        if (volumeInfo != null) 'volumeInfo': volumeInfo?.toJson(),
        if (saleInfo != null) 'saleInfo': saleInfo?.toJson(),
        if (accessInfo != null) 'accessInfo': accessInfo?.toJson(),
        if (searchInfo != null) 'searchInfo': searchInfo?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
      searchInfo,
    ];
  }
}
