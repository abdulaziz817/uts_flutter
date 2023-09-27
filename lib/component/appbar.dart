// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/keranjang.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            elevation: 0,
            leadingWidth: 1000,
            toolbarHeight: 70,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF2F2F7),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              const Icon(Iconsax.search_normal),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 13.5),
                                    hintText: 'Cari pakaian pria',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Iconsax.notification,
                              size: 26,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        bag()
                      ],
                    )
                  ],
                ),
              ),
            ));
}

class bag extends StatelessWidget {
  const bag({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Kategori()));
        },
        child: const Icon(
          Iconsax.bag,
          size: 26,
        ));
  }
}
