import 'dart:convert';

List<SliderModel> SliderModelFromJson(String str) => List<SliderModel>.from(
    json.decode(str).map((x) => SliderModel.fromJson(x)));

String SliderModelToJson(List<SliderModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    

class SliderModel {
  SliderModel({
    this.id,
    this.name,
    this.photo,
    this.photo_small,
    this.photo_medium,
    this.photo_large,
    this.description,
    this.type,
    
    
  });

  final int? id;
  final String? name;
  final String? photo;
  final String? photo_small;
  final String? photo_medium;
  final String? photo_large;
  final String? description;
  final String? type;
 
  

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
        id: json["id"],
        name: json["name"],
        photo: json["photo"],
        photo_small: json["photo_small"],
        photo_medium: json["photo_medium"],
        photo_large: json["photo_large"],
        description: json["description"],
        type: json["type"],
       
       
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "photo": photo,
        "photo_small": photo_small,
        "photo_medium": photo_medium,
        "photo_large": photo_large,
        "description": description,
        "type": type,
        
      };
}

