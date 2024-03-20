import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fibromyalgia_hospital/screens/ahella/Features/Store/Data/Models/store_model.dart';
import 'package:fibromyalgia_hospital/screens/ahella/Features/Store/Presentation/views/equipment_info_view.dart';

class StoreListViewItem extends StatelessWidget {
  const StoreListViewItem({
    super.key,
    required this.storeModel,
  });

  final StoreModel storeModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EquipmentInfoView(storeModel: storeModel),
          ),
        );
      },
      child: Card(
        elevation: 0.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(storeModel.images[0]),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            storeModel.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      storeModel.description,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          unratedColor: const Color(0xffE2E5EA),
                          itemSize: 20,
                          ignoreGestures: true,
                          initialRating: 4,
                          itemCount: 5,
                          direction: Axis.horizontal,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xffF6D060),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Text('\$${storeModel.price}'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
