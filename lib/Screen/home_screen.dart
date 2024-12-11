import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_mobile/Model/model.dart';
import 'package:project_mobile/Screen/detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<ModelHewan>> kategoriHewan = [kucing, anjing, ikan];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/anjing-1.png'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Hai, Rada',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text.rich(TextSpan(
                    text: 'Adopsi\n',
                    style: TextStyle(
                      height: 1.1,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: 'hewan pilihanmu disini',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.normal))
                    ])),
              ),
              const SizedBox(
                height: 20,
              ),
              itemKategori(),
              selectIndex < listHewan.length
                  ? (Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: SizedBox(
                        height: 570,
                        child: ListView.builder(
                          itemCount: kategoriHewan[selectIndex].length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailScreen(
                                          semuaHewan: kategoriHewan[selectIndex]
                                              [index]),
                                    ));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, right: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            height: 50,
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 30),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      kategoriHewan[selectIndex]
                                                              [index]
                                                          .warna,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                height: 230,
                                              )),
                                          SizedBox(
                                            height: 230,
                                            child: Center(
                                              child: Hero(
                                                tag: kategoriHewan[selectIndex]
                                                        [index]
                                                    .image,
                                                child: Image.asset(
                                                  kategoriHewan[selectIndex]
                                                          [index]
                                                      .image,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: kategoriHewan[selectIndex]
                                                    [index]
                                                .warna
                                                .withOpacity(0.2),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                          ),
                                          height: 150,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  kategoriHewan[selectIndex]
                                                          [index]
                                                      .nama,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 25),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  kategoriHewan[selectIndex]
                                                          [index]
                                                      .jenis,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      kategoriHewan[selectIndex]
                                                              [index]
                                                          .kelamin,
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      ", ${kategoriHewan[selectIndex][index].umur} tahun",
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ))
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  SizedBox itemKategori() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listHewan.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 75,
                    decoration: BoxDecoration(
                        color: selectIndex == index
                            ? const Color(0xff9166)
                            : const Color(0xff9166).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: selectIndex == index
                                ? const Color(0xff9166).withOpacity(0.5)
                                : Colors.transparent,
                            blurRadius: 12,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        listHewan[index],
                        style: TextStyle(
                            color: selectIndex == index
                                ? Colors.white
                                : Colors.amber[900],
                            fontWeight: selectIndex == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
