import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/main.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Statistic",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.grid_view_rounded,
                color: d_blue,
              )),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              // color: Colors.red,
              child: Text(
                "Total Expenses",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.grey),
              )),
          Container(
            child: Text(
              "\$27.237,00",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 70,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 30,
                                width: 8,
                              ),
                            ]),
                        Text("Mon")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 120,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 8,
                              ),
                            ]),
                        Text("Tue")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 120,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 8,
                              ),
                            ]),
                        Text("Wed")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 120,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 8,
                              ),
                            ]),
                        Text("Thu")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 120,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 8,
                              ),
                            ]),
                        Text("Fri")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 120,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 8,
                              ),
                            ]),
                        Text("Sat")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: d_purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  height: 120,
                                  width: 8,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: d_blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 100,
                                width: 8,
                              ),
                            ]),
                        Text("Sun")
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
