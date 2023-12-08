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
        id: '1',
        name: 'مسجد سليمان',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.suleimanMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '0',
        name: 'مسجد الصحابي جرير',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.gareerMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '2',
        name: 'مسجد الداخله',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.eldakhlaMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '3',
        name: 'قرية الفاو',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.alfao,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '3',
        name: 'قرية الفاو',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.alfao,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '0',
        name: 'مسجد الصحابي جرير',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.gareerMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '1',
        name: 'مسجد سليمان',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.suleimanMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '3',
        name: 'قرية الفاو',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.alfao,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '3',
        name: 'قرية الفاو',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.alfao,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '0',
        name: 'مسجد الصحابي جرير',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.gareerMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '1',
        name: 'مسجد سليمان',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.suleimanMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '2',
        name: 'مسجد الداخله',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.eldakhlaMosque,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
    Destination(
        id: '3',
        name: 'قرية الفاو',
        description:
            'تحتضن السعودية فعاليات دولية هامة، مثل قمة مجموعة العشرين ومؤتمرات استثمارية عالمية كما تولي اهتمامًا كبيرًا للتعليم والابتكار، وتعمل على تطوير قطاعات البحث العلمي والتكنولوجيا',
        image: Assets.alfao,
        location: 'السعودية، الرياض',
        rating: 0,
        isOpen: true),
  ];
}
