// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class Kategori extends StatefulWidget {
  const Kategori({super.key});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  int index_sepatu = 1;
  int index_kecemata = 1;
  int index_hoodie = 1;
  int harga_hoodie = 165900;
  int harga_kecemata = 450000;
  int hargasepatu = 1240000;
  int ongkir = 14000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xff292D32),
        title: const Text('Keranjang'),
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.more_horiz_rounded),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 106,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffF2F2F7)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Iconsax.location),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Dikirim Ke',
                                  style: TextStyle(
                                      color: Color.fromRGBO(41, 45, 50, 0.70)),
                                )
                              ],
                            ),
                            Text(
                              'Ubah',
                              style: TextStyle(color: Color(0xff00B14F)),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0, top: 10.0),
                          child: Text(
                              'Jakarta, Cibubur, Kota Wisata\nMadrid No 23'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Wrap(
                  runSpacing: 20,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                    image: AssetImage('assets/sepatu.png'))),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('New Balance 992 ...'),
                                  Text('40'),
                                ],
                              ),
                              Text(
                                  '${formatRupiah(index_sepatu * hargasepatu)}')
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 0.5, color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (index_sepatu > 0) {
                                      setState(() {
                                        index_sepatu -= 1;
                                      });
                                    }
                                  },
                                  child: Icon(Iconsax.minus),
                                ),
                                Text(index_sepatu.toString()),
                                InkWell(
                                  onTap: () {
                                    if (index_sepatu > -1) {
                                      setState(() {
                                        index_sepatu = index_sepatu + 1;
                                      });
                                    }
                                  },
                                  child: Icon(Iconsax.add),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                    image: AssetImage('assets/kecemate.png'))),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kacamata Baca ...'),
                                  Text('-2, Hitam'),
                                ],
                              ),
                              Text(
                                  '${formatRupiah(index_kecemata * harga_kecemata)}')
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 0.5, color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (index_kecemata > 0) {
                                      setState(() {
                                        index_kecemata -= 1;
                                      });
                                    }
                                  },
                                  child: Icon(Iconsax.minus),
                                ),
                                Text(index_kecemata.toString()),
                                InkWell(
                                  onTap: () {
                                    if (index_kecemata > -1) {
                                      setState(() {
                                        index_kecemata = index_kecemata + 1;
                                      });
                                    }
                                  },
                                  child: Icon(Iconsax.add),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                    image: AssetImage('assets/hoodie.png'))),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Human Greatness ,,,'),
                                  Text('XL, Hitam'),
                                ],
                              ),
                              Text(
                                  '${formatRupiah(harga_hoodie * index_hoodie)}')
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 0.5, color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (index_hoodie > 0) {
                                      setState(() {
                                        index_hoodie -= 1;
                                      });
                                    }
                                  },
                                  child: Icon(Iconsax.minus),
                                ),
                                Text(index_hoodie.toString()),
                                InkWell(
                                  onTap: () {
                                    if (index_hoodie > -1) {
                                      setState(() {
                                        index_hoodie = index_hoodie + 1;
                                      });
                                    }
                                  },
                                  child: Icon(Iconsax.add),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 90,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Sub Total'),
                        Text(
                            '${formatRupiah((hargasepatu * index_sepatu) + (harga_kecemata * index_kecemata) + (harga_hoodie * index_hoodie))}')
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Ongkir'),
                        Text('${formatRupiah(ongkir)}')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Total'),
                Text(
                    '${formatRupiah(ongkir + (hargasepatu * index_sepatu) + (harga_kecemata * index_kecemata) + (harga_hoodie * index_hoodie))}')
              ],
            ),
            Container(
              height: 47,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xff00B14F),
                  borderRadius: BorderRadius.circular(8)),
              child: TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Pesan Sekarang',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

String formatRupiah(int harga) {
  final currencyFormat =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  return currencyFormat.format(harga);
}

