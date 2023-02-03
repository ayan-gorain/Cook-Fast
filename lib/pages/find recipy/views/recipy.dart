class Recipy{
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  Recipy({required this.name,required this.images,required this.rating,required this.totalTime});


  factory Recipy.fromJson(dynamic json){
    return Recipy(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        totalTime: json['totalTime'] as String);
  }
  static List<Recipy> recipesFromSnapshot(List snapshot){
    return snapshot.map((data){
      return Recipy.fromJson(data);
    }).toList();
  }






}