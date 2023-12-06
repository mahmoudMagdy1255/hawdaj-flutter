import 'package:hawdaj/core/utils/assets.dart';

class Destination {
  String id;
  String name;
  String description;
  num rating;
  String location;
  bool isOpen;
  String image;

  Destination({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.location,
    required this.rating,
    required this.isOpen,
  });

  static List<Destination> destinationsList = [
    Destination(
        id: '0',
        name: 'مسجد الصحابي جرير',
        description: '',
        image: Assets.gareerMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '1',
        name: 'مسجد سليمان',
        description: '',
        image: Assets.suleimanMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '2',
        name: 'مسجد الداخله',
        description: '',
        image: Assets.eldakhlaMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '3',
        name: 'قرية الفاو',
        description: '',
        image: Assets.alfao,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
  ];
}
