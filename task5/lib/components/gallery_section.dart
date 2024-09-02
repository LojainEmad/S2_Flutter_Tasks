import 'package:flutter/material.dart';
import 'package:task5/components/container_gallery.dart';


class GallerySection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child:ContainerGallery(title: 'Slouching towards',subtitle:  'Oil, spray paint',imagePath: 'assets/images/abstract-colorful-splash-3d-background-generative-ai-background.jpg',)),
            SizedBox(width: 10),
            Expanded(child:ContainerGallery(title:'King Grin', subtitle: 'Oil on canvas',imagePath: 'assets/images/17241118_5844474.jpg',)),
          ],
        ),
      ],
    );
  }

}