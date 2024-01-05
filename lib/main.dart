import 'package:flutter/material.dart';

//Nama  :Heru Subakti
//Kelas : TI21A
// NIM  : 20210040071
//UTS Pemrograman Perangkat Mobile
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  List<String> imageUrls = [
    'https://fastly.picsum.photos/id/183/2316/1544.jpg?hmac=908ZBWKqGdL9kio38tCq2ViwMm3DjLUtkjU_6SWNa9k',
    'https://fastly.picsum.photos/id/177/2515/1830.jpg?hmac=G8-2Q3-YPB2TreOK-4ofcmS-z5F6chIA0GHYAe5yzDY',
    'https://fastly.picsum.photos/id/180/2400/1600.jpg?hmac=Ig-CXcpNdmh51k3kXpNqNqcDYTwXCIaonYiBOnLXBb8',
    'https://fastly.picsum.photos/id/160/3200/2119.jpg?hmac=cz68HnnDt3XttIwIFu5ymcvkCp-YbkEBAM-Zgq-4DHE',
    'https://fastly.picsum.photos/id/172/2000/1325.jpg?hmac=TFUTObVbAAdA2B5wwLRdjkDb67ohfqhvOtiTdqYdaN0',
    'https://fastly.picsum.photos/id/201/5000/3333.jpg?hmac=NE8fOMa8u9PBfkq4AVwEoJdRqoPTNwUsyKvKWuXyNCk',
    'https://fastly.picsum.photos/id/212/2000/1394.jpg?hmac=5mJ6tJgbGO0Wl1jBHXsiOQQYq-bRf47wLE9vmXjcEuU',
    'https://fastly.picsum.photos/id/192/2352/2352.jpg?hmac=jN5UExysObV7_BrOYLdxoDKzm_c_lRM6QkaInKT_1Go',
    'https://fastly.picsum.photos/id/199/2592/1728.jpg?hmac=qOzjPDUZT5vWXyaHaaTo602LZZdZgyQtSfa8KB3uTDs',
    'https://fastly.picsum.photos/id/193/3578/2451.jpg?hmac=M5yoazhwdwMa_27rC5-S50SNFvCy4Kni0wXoa6iVF0g',
    // Tambahkan URL gambar selanjutnya sesuai kebutuhan
  ];

  int currentIndex = 0;

  void goToFirst() {
    setState(() {
      currentIndex = 0;
    });
  }

  void goToPrevious() {
    setState(() {
      currentIndex = (currentIndex > 0) ? currentIndex - 1 : 0;
    });
  }

  void goToNext() {
    setState(() {
      currentIndex = (currentIndex < imageUrls.length - 1)
          ? currentIndex + 1
          : currentIndex;
    });
  }

  void goToLast() {
    setState(() {
      currentIndex = imageUrls.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrls[currentIndex],
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: goToFirst,
                  child: Text('First'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: goToPrevious,
                  child: Text('Previous'),
                ),
                SizedBox(width: 10),
                ElevatedButton(onPressed: goToNext, child: Text('Next')),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: goToLast,
                  child: Text('Last'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
