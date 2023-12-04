class Destination {
  String image;
  String name;
  String location;

  Destination({
    required this.image,
    required this.location,
    required this.name,
  });

  static List<Destination> destinationList = [
    Destination(
      image: 'assets/images/16425862937817.jpg',
      name: 'مسجد سليمان التاريخي',
      location: 'مكه المكرمه, الطائف',
    ),
    Destination(
      image: 'assets/images/ZvKkyJmEKlgRepNa01wkmz4OPxzvwPufs6losmAH.png',
      name: 'مسجد الداخلة',
      location: 'الرياض,المجمعه',
    ),
    Destination(
      image: 'assets/images/Y86kxFQjNB8WeU2pDuFioakuSTprItvmIH6HbUvt.jpg',
      name: 'مسجد الصحابي جرير بن عبدالله البجلي',
      location: 'مكه المكرمه, الطائف',
    ),
  ];
}
