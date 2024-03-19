class ItemNFT {
  int id;
  String title;
  String price;
  String category;
  String image;
  String name;
  String imageprofile;
  String imagebid;
  String description;
  bool isFavorite;

  ItemNFT({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.image,
    required this.name,
    required this.imageprofile,
    required this.imagebid,
    required this.description,
    required this.isFavorite,
  });
}

var itemNFTList = [
  ItemNFT(
    id: 1,
    title: "Hax Griddle",
    price: "5.165 ETH",
    category: "Gaming",
    image: "assets/nft1.png",
    name: "@TanvirAnik",
    imageprofile: "assets/profilename.png",
    imagebid: "assets/profilebid.png",
    description:
        '"Hax Griddle stands as an enticing NFT for avid gaming enthusiasts. With stunning graphics and engaging gameplay, this item proves to be a valuable addition to enrich your gaming experience. Explore virtual worlds filled with adventure, conquer foes, and achieve milestones in your favorite games. Own Hax Griddle now and immerse yourself in unparalleled gaming sensations!"',
    isFavorite: true,
  ),
  ItemNFT(
    id: 2,
    title: "Crypto Kitties",
    price: "1.462 ETH",
    category: "Collectibles",
    image: "assets/nft2.png",
    name: "@CryptoCollector",
    imageprofile: "assets/profilename.png",
    imagebid: "assets/profilebid.png",
    description:
        "More than just collectibles, Crypto Kitties represent the uniqueness and beauty of the NFT world. Featuring diverse characters and adorable designs, each Crypto Kitty holds its own narrative. Incorporate them into your collection and witness how their presence enhances your digital realm. Acquire Crypto Kitties today and cherish them as precious assets in your digital universe.",
    isFavorite: false,
  ),
  ItemNFT(
    id: 3,
    title: "Virtual Realms",
    price: "1.165 ETH",
    category: "Gaming",
    image: "assets/nft3.png",
    name: "@PixelMasterX",
    imageprofile: "assets/profilename.png",
    imagebid: "assets/profilebid.png",
    description:
        "Virtual Realms transports you into boundless and captivating virtual worlds. With breathtaking graphics and innovative features, this item enables you to explore, interact, and adventure limitlessly. Witness how every corner of this virtual realm is filled with wonders and enticing challenges. Embark on your journey through Virtual Realms now and experience the freedom within this extraordinary digital world.",
    isFavorite: false,
  ),
  ItemNFT(
    id: 4,
    title: "The Cosmic Wanderer",
    price: "3.329 ETH",
    category: "Art",
    image: "assets/nft4.png",
    name: "@StellaArtista",
    imageprofile: "assets/profilename.png",
    imagebid: "assets/profilebid.png",
    description:
        "The Cosmic Wanderer stands as a mesmerizing piece of art, depicting the beauty of the cosmos in a unique and awe-inspiring manner. Every detail in this artwork portrays the boundless wonders of the universe, inviting you to contemplate its grandeur and magnificence. With captivating colors and compelling composition, this piece takes you on a spiritual journey of inspiration. Acquire The Cosmic Wanderer now and let its beauty fill your digital space.",
    isFavorite: true,
  ),
  ItemNFT(
    id: 5,
    title: "Ancient Artifacts",
    price: "1.684 ETH",
    category: "Collectibles",
    image: "assets/nft5.png",
    name: "@BladeMasterZ",
    imageprofile: "assets/profilename.png",
    imagebid: "assets/profilebid.png",
    description:
        "Ancient Artifacts present a collection of rare treasures that unveil the history and culture of bygone eras. Each artifact within this collection carries intriguing stories and holds significant historical value. From ancient jewelry to rare historical relics, each item serves as a window to a captivating past. Make Ancient Artifacts a part of your collection and discover the invaluable wealth of history they possess.",
    isFavorite: false,
  ),
  ItemNFT(
    id: 6,
    title: "Future Landscapes",
    price: "2.223 ETH",
    category: "Art",
    image: "assets/nft6.png",
    name: "@EpicBladeBearer",
    imageprofile: "assets/profilename.png",
    imagebid: "assets/profilebid.png",
    description:
        "Future Landscapes offers a captivating visual portrayal of the world in the future. With rich details and creative imagination, this artwork presents stunning vistas of unrealized futures. Through striking colors and futuristic concepts, this piece invites you to contemplate architecture and technology in the times ahead. Explore Future Landscapes now and let yourself be carried away on an extraordinary visual adventure.",
    isFavorite: false,
  ),
];
