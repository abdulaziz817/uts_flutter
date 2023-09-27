// ignore_for_file: unused_import, use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Detailproduk extends StatefulWidget {

  @override
  State<Detailproduk> createState() => _DetailprodukState();
}

class _DetailprodukState extends State<Detailproduk> {
  bool heartpass = true;

  void _heartpass() {
    setState(() {
      heartpass = !heartpass;
    });
  }

  int selectsize = 0;

  Widget size(int index, String sizename) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectsize = index;
        });
      },
      child: Container(
        width: 53,
        height: 51,
        decoration: BoxDecoration(
          color: selectsize == index
              ? const Color(0xff00B14F).withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: selectsize == index
              ? Border.all(width: 1, color: const Color(0xff000B14F))
              : Border.all(width: 1, color: const Color(0xffF2F2F7)),
        ),
        child: Center(child: Text(sizename)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xff292D32),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: _heartpass,
              child: heartpass
                  ? Image.asset(
                      'assets/linear.png',
                      width: 24,
                    )
                  : Image.asset(
                      'assets/bold.png',
                      width: 24,
                    ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 382,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage('assets/sepatu-bigsize.png'))),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'New Balance 992 Grey Original',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 11,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '(102) | 67 ulasan',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Our Made US 992 mens sneaker has heritage\nstyling, premium materials and comfort features to\nelevate your off-duty look. These mens fashion\nsneakers have a pigskin... ',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const TextSpan(
                      text: 'Baca selengkapnya',
                      style: TextStyle(
                        color: Color(0xff00B14F),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Pilih Ukuran',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              Wrap(
                spacing: 15,
                children: [
                  size(0, '39'),
                  size(1, '40'),
                  size(2, '41'),
                  size(3, '42'),
                  size(4, '43'),
                ],
              )
            ],
          )
        ]),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Rp1.240.000'),
            Container(
              width: 150,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xff00B14F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Tambah Keranjang',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
