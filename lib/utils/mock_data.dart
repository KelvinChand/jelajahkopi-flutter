import '../models/coffee.dart';

final List<Coffee> mockCoffees = [
  Coffee(
    id: '1',
    name: 'Aceh Gayo',
    description: 'Kopi Aceh Gayo berasal dari dataran tinggi Gayo di Aceh Tengah, salah satu wilayah penghasil arabika terbaik di Indonesia. Dikenal dengan karakter yang bersih, seimbang, dan memiliki tingkat keasaman yang lembut. Profil rasa coklat dan rempahnya berpadu dengan aroma earthy yang khas, menjadikan kopi ini favorit banyak penikmat kopi specialty. Teksturnya halus, body medium, dan aftertaste yang panjang membuat Aceh Gayo cocok dinikmati dengan berbagai metode seduh—mulai dari pour over hingga French press.',
    region: 'Aceh',
    flavorNote: 'Coklat, rempah, earthy',
    roastLevel: 'Medium',
    image: 'assets/images/aceh_gayo.jpg',
    isFavorite: false,
  ),
  Coffee(
    id: '2',
    name: 'Toraja Kalosi',
    description: 'Toraja Kalosi adalah salah satu kopi legendaris dari Sulawesi Selatan, tumbuh di pegunungan Toraja yang memiliki tanah vulkanik kaya mineral. Kopi ini terkenal dengan kompleksitas rasa dan aromanya yang khas. Perpaduan note nutty, karamel, dan floral menciptakan karakter yang elegan dengan body yang penuh namun tetap halus. Keasaman yang seimbang dan aftertaste manis membuat Toraja Kalosi unggul sebagai kopi premium yang banyak diminati pasar internasional.',
    region: 'Sulawesi Selatan',
    flavorNote: 'Nutty, caramel, floral',
    roastLevel: 'Medium-Dark',
    image: 'assets/images/toraja.jpg',
    isFavorite: false,
  ),
  Coffee(
    id: '3',
    name: 'Kintamani Bali',
    description:
        'Kopi Kintamani tumbuh di dataran tinggi Bali dengan sistem tumpang sari khas Bali Aga. Memiliki karakter citrus segar, body ringan, dan aroma floral yang lembut. Cocok untuk penikmat kopi dengan profil rasa cerah dan refreshing.',
    region: 'Bali',
    flavorNote: 'Citrus, floral, sweet',
    roastLevel: 'Light-Medium',
    image: 'assets/images/kintamani.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '4',
    name: 'Mandailing',
    description:
        'Kopi Mandailing berasal dari Sumatera Utara dengan karakter bold dan aroma kompleks. Rasa earthy-nya kuat, berpadu dengan sentuhan coklat pekat dan herbal. Body tebal dan aftertaste panjang membuatnya cocok untuk pecinta kopi pekat.',
    region: 'Sumatera Utara',
    flavorNote: 'Earthy, chocolate, herbal',
    roastLevel: 'Dark',
    image: 'assets/images/mandailing.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '5',
    name: 'Java Preanger',
    description:
        'Kopi Java Preanger memiliki sejarah panjang sejak masa kolonial. Karakternya bersih dengan body medium dan rasa manis alami. Sentuhan spice dan vanilla membuatnya mudah diterima oleh peminum kopi pemula maupun pecinta manual brew.',
    region: 'Jawa Barat',
    flavorNote: 'Vanilla, spice, sweet',
    roastLevel: 'Medium',
    image: 'assets/images/java_preanger.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '6',
    name: 'Flores Bajawa',
    description:
        'Ditanam di tanah vulkanik Flores, kopi Bajawa memiliki rasa yang halus dengan nuansa coklat manis dan aroma nutty. Keasaman rendah dan body medium membuatnya nyaman diminum sehari-hari.',
    region: 'NTT - Flores',
    flavorNote: 'Chocolate, nutty, sweet',
    roastLevel: 'Medium',
    image: 'assets/images/flores_bajawa.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '7',
    name: 'Papua Wamena',
    description:
        'Kopi Papua Wamena tumbuh secara organik di pegunungan Jayawijaya. Memiliki karakter lembut, aroma floral yang menonjol, dan tingkat keasaman rendah. Cocok bagi penikmat kopi berprofil ringan dan elegan.',
    region: 'Papua',
    flavorNote: 'Floral, mild, sweet',
    roastLevel: 'Light-Medium',
    image: 'assets/images/wamena.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '8',
    name: 'Temanggung',
    description:
        'Kopi Temanggung dikenal dengan karakter tembakau khas yang tidak dimiliki kopi daerah lain. Rasanya bold dengan body tebal dan sentuhan pahit manis yang kuat. Cocok untuk espresso atau tubruk.',
    region: 'Jawa Tengah',
    flavorNote: 'Tobacco, dark chocolate, bold',
    roastLevel: 'Dark',
    image: 'assets/images/temanggung.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '9',
    name: 'Sidikalang',
    description:
        'Kopi Sidikalang terkenal dengan body tebal dan aroma kuat. Perpaduan rasa coklat gelap, rempah, dan sedikit fruity membuatnya memiliki kompleksitas yang unik.',
    region: 'Sumatera Utara',
    flavorNote: 'Spicy, dark chocolate, fruity',
    roastLevel: 'Medium-Dark',
    image: 'assets/images/sidikalang.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '10',
    name: 'Gayo Wine Process',
    description:
        'Proses fermentasi wine pada kopi Gayo menciptakan karakter rasa fruity yang kuat dengan aroma fermentasi khas. Rasanya kompleks, cocok untuk penikmat kopi specialty yang menyukai pengalaman unik.',
    region: 'Aceh',
    flavorNote: 'Fruity, fermented, sweet',
    roastLevel: 'Light',
    image: 'assets/images/gayo_wine.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '11',
    name: 'Bali Pupuan',
    description:
        'Kopi Pupuan memiliki profil rasa yang lembut dengan nuansa caramel dan herbal. Dengan keasaman rendah dan body medium, kopi ini cocok diseduh dengan V60 atau Aeropress.',
    region: 'Bali',
    flavorNote: 'Caramel, herbal, smooth',
    roastLevel: 'Medium',
    image: 'assets/images/pupuan.jpg',
    isFavorite: false,
  ),
Coffee(
    id: '12',
    name: 'Kerinci Kayu Aro',
    description:
        'Kopi Kerinci dari kaki Gunung Kerinci memiliki karakter bright dengan notes citrus dan berry yang menyegarkan. Cocok untuk penikmat kopi berprofil cerah dan fruity.',
    region: 'Jambi',
    flavorNote: 'Citrus, berry, bright',
    roastLevel: 'Light-Medium',
    image: 'assets/images/kerinci.jpg',
    isFavorite: false,
  ),

];
