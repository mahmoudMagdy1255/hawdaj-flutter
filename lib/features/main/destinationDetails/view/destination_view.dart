import 'package:flutter/material.dart';
import 'package:hawdaj/features/main/destinationDetails/view/widget/destination_view_body.dart';
import 'package:hawdaj/features/main/home/data/model/Destination.dart';

class DestinationView extends StatelessWidget {
   DestinationView({super.key,required this.item});
  Destination item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DestinationDetailsViewBody(item: item),
    );
  }
}
