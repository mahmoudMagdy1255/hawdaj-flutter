class OldDestination {
  String image;
  String name;
  String location;

  OldDestination({
    required this.image,
    required this.location,
    required this.name,
  });

  static List<OldDestination> destinationList = [
    OldDestination(
      image: 'assets/images/suleimanMosque.jpg',
      name: 'مسجد سليمان التاريخي',
      location: 'مكه المكرمه, الطائف',
    ),
    OldDestination(
      image: 'assets/images/eldakhlaMosque.png',
      name: 'مسجد الداخلة',
      location: 'الرياض,المجمعه',
    ),
    OldDestination(
      image: 'assets/images/gareerMosque.jpg',
      name: 'مسجد الصحابي جرير بن عبدالله البجلي',
      location: 'مكه المكرمه, الطائف',
    ),
  ];
}
