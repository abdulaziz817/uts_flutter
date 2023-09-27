// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:uts/component/appbar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/detailproduk.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectList = 0;

  Widget List(int index, String listname) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectList = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0, top: 15.0),
        child: Container(
          width: 140,
          height: 43,
          decoration: BoxDecoration(
              color: selectList == index
                  ? const Color(0xff00B14F)
                  : Colors.transparent,
              border: selectList == index
                  ? Border.all(width: 0, color: Colors.transparent)
                  : Border.all(width: 1, color: const Color(0xffF2F2F7)),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            listname,
            style: TextStyle(
                color: selectList == index ? Colors.white : Colors.black,
                fontSize: 16),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  banner(),
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kategori',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Lihat semua',
                        style: TextStyle(color: Color(0xff00B14F)),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        List(0, 'Semua'),
                        List(1, 'Kemeja'),
                        List(2, 'Sepatu'),
                        List(3, 'Aksesories'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      content('assets/flanel.png', 'Batik Pria Lengan\nPanjang',
                          'Rp199.900', context),
                      content(
                          'assets/sepatu.png',
                          'New Balance 992\nGrey Original',
                          'Rp1.240.000',
                          context),
                      content(
                          'assets/celana.png',
                          'Skinny Jeans Dark\nBlue Wanita',
                          'Rp379.900',
                          context),
                      content(
                          'assets/kecemate.png',
                          'Kacamata Baca\nAnti Radiasi Blue Ray',
                          'Rp125.000',
                          context),
                      content(
                          'assets/kemeja.png',
                          'Kemeja Pria Polos\nLegan Pendek Oxford',
                          'Rp119.000',
                          context),
                      content(
                          'assets/hoodie.png',
                          'Human Greatness\nHoodie Hitam',
                          'Rp229.000',
                          context),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home5), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.task_square), label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle), label: 'Profile'),
        ],
        selectedItemColor: const Color(0xff00B14F),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

Widget banner() {
  return Column(
    children: [
      Container(
        width: 382,
        height: 220,
        decoration: BoxDecoration(
            color: const Color(0xffDBCCF3),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanggal Tua Hemat',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        'Flash Sale Serba\nRp50 ribuan',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                    ],
                  ),
                  Text(
                    'S&K Berlaku',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff292D32B2),
                        fontSize: 12),
                  )
                ],
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/person.png',
                    width: 122,
                  )),
            ],
          ),
        ),
      )
    ],
  );
}

Widget content(String contentimg, String namacontent, String hargacontent,
    BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Detailproduk()));
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(contentimg))),
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namacontent,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff292D32)),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              hargacontent,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff292D32)),
            )
          ],
        )
      ],
    ),
  );
}
