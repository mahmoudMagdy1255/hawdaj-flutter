// CarouselSlider(
// options: CarouselOptions(height: 400.0, autoPlay: true,),
// items: [
// 'قرية الفاو',
// 'قرية الفاو',
// 'قرية الفاو',
// 'قرية الفاو'
// ].map((i) {
// return Builder(
// builder: (BuildContext context) {
// return Container(
// margin: EdgeInsets.symmetric(horizontal: 10.0),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(15.0),
// child: Stack(
// fit: StackFit.expand,
// children: [
// Positioned(
// bottom: 0,
// top: 0,
// child: Image.asset(
// 'assets/images/alfao.png',
// fit: BoxFit.fill,
// ),
// ),
// Positioned(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// mainAxisAlignment:
// MainAxisAlignment.start,
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// const SizedBox(
// height: 20,
// ),
// Flexible(
// child: Text(
// 'قرية الفاو',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// fontSize: 24,
// fontWeight: FontWeight.w700,
// color: Colors.white,
// height: 1.2),
// ),
// ),
// SizedBox(height: 6.h),
// SizedBox(
// width: double.infinity,
// child: Text(
// 'الرياض، وادي الدوسري',
// maxLines: 3,
// overflow:
// TextOverflow.ellipsis,
// style: TextStyle(
// fontSize: 14,
// fontWeight:
// FontWeight.w400,
// color: Colors.white))),
// ],
// ),
// ))
// ],
// ),
// ),
// );
// },
// );
// }).toList(),
// ),
