import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'h vb,ucv',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'njbkl.lvudejeifjjfepojfpnvm;jmfoprjnoprjvopenvoprhnvopcodjfpronmcjvopjmvdmop555555555555555555949664949igfffffffifbjyfvjhvhnovndc',
                maxLines: 2,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
