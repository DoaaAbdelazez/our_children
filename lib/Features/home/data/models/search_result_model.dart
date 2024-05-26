class SearchResultModel {
  final List<PersonModel> nearestFaces;

  SearchResultModel({required this.nearestFaces});
  factory SearchResultModel.fromJson(Map<String, dynamic> jsonData) {
    var list = jsonData['nearest_faces'] as List;
    List<PersonModel> nearestFacesList =
        list.map((i) => PersonModel.fromJson(i)).toList();

    return SearchResultModel(nearestFaces: nearestFacesList);
  }
}

class PersonModel {
  final String id;
  final double distance;
  final String image;

  PersonModel({required this.id, required this.distance, required this.image});

  factory PersonModel.fromJson(Map<String, dynamic> jsonData) {
    return PersonModel(
      id: jsonData['id'],
      distance: jsonData['distance'],
      image: jsonData['image'],
    );
  }
}
