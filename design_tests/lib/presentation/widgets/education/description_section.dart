import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Laboris minim veniam qui culpa commodo ut sint veniam pariatur veniam. Quis officia do nisi ullamco velit. Magna do Lorem anim ea aliqua reprehenderit sint minim qui dolor exercitation commodo ex consectetur. Excepteur ea pariatur dolor nisi id nostrud. Lorem duis consectetur sit elit commodo minim officia quis anim. Laborum ullamco ut labore culpa proident sint reprehenderit laborum.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Course Length: ',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const Spacer(),
              Icon(
                Icons.timer,
                color: colors.primary,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '26 Hours',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                'Rating: ',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // Spacer(),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '4.5',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
