class DestinationItem {
  final int id;
  final String title;
  final List<String> imagePaths; // Changed to a list of images
  final double rating;
  final String description;
  final String type;

  DestinationItem({
    required this.id,
    required this.title,
    required this.imagePaths, // Now accepts a list of image paths
    required this.rating,
    required this.description,
    required this.type,
  });
}

final List<DestinationItem> destinationList = [
  DestinationItem(
    id: 1,
    title: "Taman Labirin",
    imagePaths: [
      "assets/taman_labirin.jpeg",
      "assets/taman_labirin.jpeg"
    ], // List of images
    rating: 4.9,
    description:
        "Garden Maze dikenal juga dengan taman labirin. Taman ini menyajikan taman yang penuh dengan jalan yang berliku. Pengunjung akan diajak masuk ke dalam labirin tanaman hijau untuk menemukan jalan keluar.Terdapat peta yang akan bisa memandu para pengunjung untuk menyusuri labirin agar pengunjung tidak tersesat.",
    type: "petualang",
  ),
  DestinationItem(
    id: 2,
    title: "Taman Prancis",
    imagePaths: ["assets/taman_prancis.jpeg", "assets/taman_prancis.jpeg"],
    rating: 4.8,
    description:
        "Taman ini dihiasi dengan tanaman yang dibentuk geometris seperti desain masa Renaissance.  Tanaman tersebut adalah Perdu Taiwan Beuty yang dipangkas sehingga membingkai bunga warna-warni atau biasa disebut juga dengan parterre. Bahasa Perancisnya ialah broderie de par terre, artinya sulaman di atas tanah.",
    type: "bahagia",
  ),
  DestinationItem(
    id: 3,
    title: "Taman Jepang",
    imagePaths: ["assets/taman_jepang.jpeg", "assets/taman_jepang.jpeg"],
    rating: 4.8,
    description:
        "Taman gaya Jepang ini memiliki ciri khas ketenangan, karena masyarakat Jepang dikenal dengan gemar mencari ketenangan untuk relaksasi. Taman ini dilengkapi juga dengan bebatuan, kayu, hingga kolam khas Jepang.",
    type: "romantis",
  ),
  DestinationItem(
    id: 4,
    title: "Taman Bali",
    imagePaths: ["assets/taman_bali.jpg", "assets/taman_bali.jpg"],
    rating: 4.8,
    description:
        "Di taman ini terdapat tanaman khas Bali serta bangunan dan patung seperti di Bali. Pengunjung akan melihat gapura tepat di pintu masuknya. Ada pula Candi Bentar, Bale Bengong, dan Bale Kul Kul. Untuk tanaman yang bisa di temui di taman gaya Bali ini adalah tanaman bunga sepatu, helikonia, hingga bunga kamboja.",
    type: "santai",
  ),
  DestinationItem(
    id: 5,
    title: "Taman Mawar",
    imagePaths: ["assets/taman_mawar.jpeg", "assets/taman_mawar.jpeg"],
    rating: 4.8,
    description:
        "Taman ini menghadirkan keindahan hamparan bunga mawar yang cantik. Di taman bunga ini, merawat bunga mawar memiliki cara khususnya sendiri seperti cara menyimpan hingga memberi pupuk sesuai dengan asal tanamannya masing-masing.",
    type: "romantis",
  ),
  DestinationItem(
    id: 6,
    title: "Taman Palem",
    imagePaths: ["assets/taman_palem.jpeg", "assets/taman_palemr.jpeg"],
    rating: 4.8,
    description:
        "Di Taman Palem ini pengunjung akan menemukan banyak pohon palem. Pohon Palem sendiri merupakan salah satu pohon yang sudah ditanam sejak masa purba. Pohon ini memiliki keunikan di mana batang dan daunnya melingkar. Di taman ini pengunjung nantinya akan  menemukan ragam pohon palem seperti palem botol, palem jelly, hingga palem phoenix.",
    type: "melankolis",
  ),
];
