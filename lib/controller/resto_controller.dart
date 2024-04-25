import 'package:apps_satu/models/resto_models.dart';
import 'package:flutter/material.dart';

final DUMMY_LIST_RESTO = [
  RestoModels(
    nama: "Kampoeng Bamboe Restoran dan Homestay",
    location: "Bandar Lampung",
    address: "Jl.  Griya Utama No. 57, Way Halim",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/94/a9/bar-shot-of-il-mare.jpg?w=600&h=-1&s=1",
    rating: 4.3,
  ),
  RestoModels(
    nama: "Randu Resto",
    location: "Bandar Lampung",
    address: "2a, Jl. Kamboja No.1, Tanjung Karang Timur",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/94/a9/bar-shot-of-il-mare.jpg?w=600&h=-1&s=1",
    rating: 4.5,
  ),
  RestoModels(
    nama: "Kampoeng Bamboe Restoran dan Homestay",
    location: "Bandar Lampung",
    address: "Jl.  Griya Utama No. 57, Way Halim",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/94/a9/bar-shot-of-il-mare.jpg?w=600&h=-1&s=1",
    rating: 4.3,
  ),
  RestoModels(
    nama: "Randu Resto",
    location: "Bandar Lampung",
    address: "2a, Jl. Kamboja No.1, Tanjung Karang Timur",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/94/a9/bar-shot-of-il-mare.jpg?w=600&h=-1&s=1",
    rating: 4.5,
  ),
  RestoModels(
    nama: "Kampoeng Bamboe Restoran dan Homestay",
    location: "Bandar Lampung",
    address: "Jl.  Griya Utama No. 57, Way Halim",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/94/a9/bar-shot-of-il-mare.jpg?w=600&h=-1&s=1",
    rating: 4.3,
  ),
  RestoModels(
    nama: "Randu Resto",
    location: "Bandar Lampung",
    address: "2a, Jl. Kamboja No.1, Tanjung Karang Timur",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/41/94/a9/bar-shot-of-il-mare.jpg?w=600&h=-1&s=1",
    rating: 4.5,
  ),
];

class RestoController extends ChangeNotifier {
  List<RestoModels> data = DUMMY_LIST_RESTO;
}
