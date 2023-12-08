import 'dart:convert';

ImageModel imageModelFromJson(String str) =>
    ImageModel.fromJson(json.decode(str));

String imageModelToJson(ImageModel data) => json.encode(data.toJson());

class ImageModel {
  ImageModel({
    int? id,
    String? url,
    int? imageableId,
    String? imageableType,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _url = url;
    _imageableId = imageableId;
    _imageableType = imageableType;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  ImageModel.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _imageableId = json['imageable_id'];
    _imageableType = json['imageable_type'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  int? _id;
  String? _url;
  int? _imageableId;
  String? _imageableType;
  String? _createdAt;
  String? _updatedAt;

  ImageModel copyWith({
    int? id,
    String? url,
    int? imageableId,
    String? imageableType,
    String? createdAt,
    String? updatedAt,
  }) =>
      ImageModel(
        id: id ?? _id,
        url: url ?? _url,
        imageableId: imageableId ?? _imageableId,
        imageableType: imageableType ?? _imageableType,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );

  int? get id => _id;

  String? get url => _url;

  int? get imageableId => _imageableId;

  String? get imageableType => _imageableType;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['imageable_id'] = _imageableId;
    map['imageable_type'] = _imageableType;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
