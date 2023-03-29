class TourismPlace {
  String name;
  String location;
  String description;
  String jamBuka;
  String time;
  String ticket;
  String imageAsset;
  List<String> imageList;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.jamBuka,
    required this.time,
    required this.ticket,
    required this.imageAsset,
    required this.imageList,
  });
}

var tourismPlaceList = [
  TourismPlace(
      name: 'Pantai Kenjeran',
      location: 'Kenjeran',
      description: 'Pantai Kenjeran dikenal juga sebagai Pantai Ria Kenjeran yang merupakan destinasi wisata keluarga di Surabaya. Wisata alam ini menawarkan panorama pantai dan berbagai wahana permainan yang menyenangkan.',
      jamBuka: 'Open Everyday',
      time: '00.00-24.00',
      ticket: 'Free',
      imageAsset: 'assets/images/148.jpg',
      imageList: [
        'assets/images/149.jpg',
        'assets/images/150.jpg',
        'assets/images/151.jpg'
      ]
  ),
  TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'jl. Pahlawan',
      description:'Museum Sepuluh November Surabaya adalah salah satu museum yang terletak di Kota Surabaya, dibangun pada tahun 1945. Museum ini dibangun dengan tujuan untuk mempelajari dan memperdalam peristiwa Pertempuran Sepuluh November 1945, Museum Sepuluh November beralamat di Jalan Pahlawan, Surabaya.',
      jamBuka: 'Open Everyday-Except(senin)',
      time: '08.15-15.00',
      ticket: 'RP. 5000/Person',
      imageAsset: 'assets/images/149.jpg',
      imageList: [
        'assets/images/149.jpg',
        'assets/images/150.jpg',
        'assets/images/151.jpg'
      ]
  ),
  TourismPlace(
      name: 'Kebun Binatang Surabaya',
      location: 'jl. Setail',
      description:'Kebun Binatang Surabaya adalah salah satu kebun binatang yang populer di Indonesia dan terletak di Surabaya. KBS merupakan kebun binatang yang pernah terlengkap se-Asia Tenggara, di dalamnya terdapat lebih dari 230 spesies satwa yang berbeda yang terdiri lebih dari 2179 ekor satwa.',
      jamBuka: 'Open Everyday',
      time: '08.00-16.00',
      ticket: 'Rp. 15.000/Person',
      imageAsset: 'assets/images/150.jpg',
      imageList: [
        'assets/images/149.jpg',
        'assets/images/150.jpg',
        'assets/images/151.jpg'
      ]
  ),
  TourismPlace(
      name: 'Atlantis Land',
      location: 'Kenjeran Park',
      description:'Atlantis Land merupakan salah satu tempat wisata baru yang ada di Surabaya, berlokasi di Jl. Sukolilo 100 dan berada didalam area Kenjeran Park (Kenpark).',
      jamBuka: 'Open Everyday',
      time: '10.00-18.00',
      ticket: 'Rp. 100.000/Person',
      imageAsset: 'assets/images/151.jpg',
      imageList: [
        'assets/images/149.jpg',
        'assets/images/150.jpg',
        'assets/images/151.jpg'
      ]
  ),
  TourismPlace(
      name: 'Patung Suro dan Boyo',
      location: 'jl. Setail',
      description:'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
      jamBuka: 'Open Everyday',
      time: '00.00-24.00',
      ticket: 'Free',
      imageAsset: 'assets/images/152.jpg',
      imageList: [
        'assets/images/149.jpg',
        'assets/images/150.jpg',
        'assets/images/151.jpg'
      ]
  ),
];