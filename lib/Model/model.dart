import 'package:flutter/material.dart';

class ModelHewan {
  String nama;
  String jenis;
  String image;
  String umur;
  String kelamin;
  String asal;
  Color warna;
  String deskripsi;

  ModelHewan({
    required this.image,
    required this.nama,
    required this.jenis,
    required this.kelamin,
    required this.umur,
    required this.asal,
    required this.warna,
    required this.deskripsi,
  });
}

List<ModelHewan> kucing = [
  ModelHewan(
      nama: 'Kucing 1',
      jenis: 'Keturunan 1',
      image: 'images/kucing-1.png',
      umur: 'umur 1',
      asal: "asal 1",
      kelamin: 'jenis 1',
      warna: const Color(0xffc1b71),
      deskripsi: 'kucing 1'),
  ModelHewan(
      nama: 'Kucing 2',
      jenis: 'Keturunan 2',
      image: 'images/kucing-2.png',
      umur: 'umur 2',
      asal: "asal 2",
      kelamin: 'jenis 2',
      warna: const Color(0xffc1b71),
      deskripsi: 'kucing 2'),
  ModelHewan(
      nama: 'Kucing 3',
      jenis: 'Keturunan 3',
      image: 'images/kucing-3.png',
      umur: 'umur 3',
      asal: "asal 3",
      kelamin: 'jenis 3',
      warna: const Color(0xffc1b71),
      deskripsi: 'kucing 3'),
];
List<ModelHewan> anjing = [
  ModelHewan(
      nama: 'anjing 1',
      jenis: 'Keturunan 1',
      image: 'images/anjing-1.png',
      umur: 'umur 1',
      asal: "asal 1",
      kelamin: 'jenis 1',
      warna: const Color(0xffc1b71),
      deskripsi: 'anjing 1'),
  ModelHewan(
      nama: 'anjing 2',
      jenis: 'Keturunan 2',
      image: 'images/anjing-2.png',
      umur: 'umur 2',
      asal: "asal 2",
      kelamin: 'jenis 2',
      warna: const Color(0xffc1b71),
      deskripsi: 'anjing 2'),
  ModelHewan(
      nama: 'anjing 3',
      jenis: 'Keturunan 3',
      image: 'images/anjing-3.png',
      umur: 'umur 3',
      asal: "asal 3",
      kelamin: 'jenis 3',
      warna: const Color(0xffc1b71),
      deskripsi: 'anjing 3'),
];
List<ModelHewan> ikan = [
  ModelHewan(
      nama: 'ikan 1',
      jenis: 'Keturunan 1',
      image: 'images/ikan-1.png',
      umur: 'umur 1',
      asal: "asal 1",
      kelamin: 'jenis 1',
      warna: const Color(0xffc1b71),
      deskripsi: 'ikan 1'),
  ModelHewan(
      nama: 'ikan 2',
      jenis: 'Keturunan 2',
      image: 'images/ikan-2.png',
      umur: 'umur 2',
      asal: "asal 2",
      kelamin: 'jenis 2',
      warna: const Color(0xffc1b71),
      deskripsi: 'ikan 2'),
  ModelHewan(
      nama: 'ikan 3',
      jenis: 'Keturunan 3',
      image: 'images/ikan-3.png',
      umur: 'umur 3',
      asal: "asal 3",
      kelamin: 'jenis 3',
      warna: const Color(0xffc1b71),
      deskripsi: 'ikan 3'),
];

List<String> listHewan = ['Kucing', 'Anjing', 'Ikan'];
