import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> imagePaths = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpeg',
    'assets/images/img5.jpg',
    'assets/images/img6.jpg',
    'assets/images/img7.jpg',
    'assets/images/img8.jpg',
    'assets/images/img9.jpg',
    'assets/images/img10.jpg'

    // Add more image paths here
  ];
  final List<String> imageDescription = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' Rachana Wallpaper App'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                _showImageDescription(context, imageDescription[index]);
              },
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ));
        },
      ),
    );
  }
}

void _showImageDescription(BuildContext context, String description) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Image Description'),
        content: Text(description),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close')),
        ],
      );
    },
  );
}
