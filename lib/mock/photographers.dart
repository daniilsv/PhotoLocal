import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';

final List<Photographer> photographers = [
  {
    "id": 2,
    "live_location": {"latitude": 59.962536, "longitude": 30.294498},
    "name": "Анастасия Мещерякова",
    "orders_count": 5,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/62231764_405998580128467_5707914671986573312_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=9Xpkd7oGHtAAX9iRZa1&oh=7b0f2fda19f6eb1b7e93dec7720c1fbb&oe=5ECBCECC",
    "rating": 3.7,
    "user_id": 3
  },
  {
    "id": 3,
    "live_location": {"latitude": 59.970195, "longitude": 30.373462},
    "name": "Stepan Chubaev",
    "orders_count": 7,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/83058251_165075621387696_1043994451011174400_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=Mw4XhbTgCrIAX_gQ1xE&oh=c9b9bc99053ec2150c5293e2c7e12803&oe=5ECA2AE8",
    "rating": 4.2,
    "user_id": 4
  },
  {
    "id": 4,
    "live_location": {"latitude": 59.947900, "longitude": 30.256046},
    "name": "Александр Чернышёв",
    "orders_count": 11,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/73247866_2500405616706037_5355103690103455744_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=6SaMCdh4HecAX9nmiD6&oh=f28f55339240a59985e2e389376160de&oe=5ECBE7A4",
    "rating": 4.3,
    "user_id": 5
  },
  {
    "id": 5,
    "live_location": {"latitude": 59.925676, "longitude": 30.309261},
    "name": "Dan Filatov",
    "orders_count": 8,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/83186681_185390986030289_2437096767397822464_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=YBjhS162_4QAX-RRZ4L&oh=ee9c68e8fa8106dacfba705ea7c2e3f9&oe=5ECBC002",
    "rating": 4.8,
    "user_id": 6
  },
  {
    "id": 6,
    "live_location": {"latitude": 59.938254, "longitude": 30.324367},
    "name": "Alexey Orlovsky",
    "orders_count": 2,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/11352361_1478524245776500_845823794_a.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=ggCkX-2_apQAX8zY_8E&oh=884898c5c9fa43c467c4c3bfd57b01c6&oe=5ECC7831",
    "rating": 4.4,
    "user_id": 7
  },
  {
    "id": 7,
    "live_location": {"latitude": 59.948675, "longitude": 30.386165},
    "name": "Станислава Викторова",
    "orders_count": 4,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/90831974_535776747351610_6369198206592483328_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=xJ3fANV3S98AX9SZOMI&oh=dec8dfb7a8575aeb6537342807319823&oe=5ECC5467",
    "rating": 4.0,
    "user_id": 8
  },
  {
    "id": 1,
    "live_location": {"latitude": 59.913542, "longitude": 30.378955},
    "name": "Тёма Бабич",
    "orders_count": 3,
    "picture":
        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/87317396_863963827387896_4889235979145052160_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_ohc=7CUcb8BqHE0AX-8nYR_&oh=75bf413aed5a3e15e304bc367cd74173&oe=5ECC0A79",
    "rating": 3.8,
    "user_id": 2
  }
].map((_) => serializers.deserializeWith(Photographer.serializer, _)).toList();
