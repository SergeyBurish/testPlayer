import 'dart:math';

import 'package:test_player/businessLogic/model/models.dart';
import 'package:test_player/data/dataProviders/data_providers.dart';


final class LikesDataProviderMock implements LikesDataProvider {
  const LikesDataProviderMock();

  @override
  Future<Video> setLike({
    required int id,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    //Иногда может вылететь ошибка
    if (Random().nextInt(4) == 0) {
      throw Exception('Unexpected error');
    }
    return Video.fromJson(_all.firstWhere((e) => e['id'] == id)..['liked'] = true);
  }

  @override
  Future<Video> unsetLike({
    required int id,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    //Иногда может вылететь ошибка
    if (Random().nextInt(4) == 0) {
      throw Exception('Unexpected error');
    }

    return Video.fromJson(_all.firstWhere((e) => e['id'] == id)..['liked'] = false);
  }
}

final class VideosDataProviderMock implements VideosDataProvider {
  const VideosDataProviderMock();

  @override
  Future<VideosResponse> getVideos({
    required int page,
    String? search,
  }) async {
    await Future.delayed(Duration(seconds: 1));

    //Иногда может вылететь ошибка
    if (Random().nextInt(4) == 0) {
      throw Exception('Unexpected error');
    }

    final List data = switch (search) {
      (String search) when search.isNotEmpty =>
        _all.where((e) => (e['name'] as String).contains(search)).toList(),
      _ => _all,
    };
    final perPage = 5;
    final hasMore = data.length > (page * perPage);
    final responseData = data.sublist(perPage * (page - 1), hasMore ? perPage * page : null);
    return VideosResponse.fromJson(
      {
        'main': _main,
        'data': responseData,
        'pagination': {
          'page': page,
          'has_more': hasMore,
        },
      },
    );
  }
}

final Map<String, dynamic> _main = {
  'id': 10,
  'image':
      'https://res.cloudinary.com/momentum-media-group-pty-ltd/image/upload/v1686795211/Space%20Connect/space-exploration-sc_fm1ysf.jpg',
  'name': 'NASA plans to open the International Space Station for business',
  'url': '-', // video url
  'duration': 3620,
  'views': 2000123,
  'liked': false,
  'created_at': '2024-01-22T13:08:26Z'
};

final List<Map<String, dynamic>> _all = [
  {
    'id': 25,
    'image':
        'https://i0.wp.com/www.sciencenews.org/wp-content/uploads/2022/11/Hubble-Pillars-of-Creation.jpg?resize=1500%2C1565&ssl=1',
    'name': 'These are our top space images of all time',
    'url': '-', // video url
    'duration': 4210,
    'views': 557678,
    'liked': false,
    'created_at': '2024-01-22T13:08:26Z'
  },
  {
    'id': 24,
    'image':
        'https://www.krqe.com/wp-content/uploads/sites/12/2022/12/AdobeStock_81556974.jpeg?w=2560&h=1440&crop=1',
    'name': 'Space discoveries that will blow your mind',
    'url': '-', // video url
    'duration': 5312,
    'views': 6662,
    'liked': false,
    'created_at': '2024-01-21T13:08:26Z'
  },
  {
    'id': 23,
    'image':
        'https://images.hindustantimes.com/tech/img/2023/02/15/960x540/asteroid_1676434888953_1676434897704_1676434897704.jpg',
    'name': 'Asteroid today: Space rock speeding towards Earth at a fearsome 60905 kmph',
    'url': '-', // video url
    'duration': 245,
    'views': 65438,
    'liked': false,
    'created_at': '2024-01-19T13:08:26Z'
  },
  {
    'id': 22,
    'image':
        'https://i0.wp.com/spacenews.com/wp-content/uploads/2023/11/Millennium_Space_Systems_completes_MTC-scaled.jpg?fit=1200%2C750&ssl=1',
    'name': '20 amazing facts about space and astronomy',
    'url': '-', // video url
    'duration': 6541,
    'views': 742,
    'liked': true,
    'created_at': '2024-01-18T13:08:26Z'
  },
  {
    'id': 21,
    'image':
        'https://img.freepik.com/free-photo/glowing-spaceship-orbits-planet-starry-galaxy-generated-by-ai_188544-9655.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=sph',
    'name':
        'Space Force\'s first six missile-defense satellites in medium orbit to cost about \$500 million',
    'url': '-', // video url
    'duration': 873,
    'views': 845623902,
    'liked': true,
    'created_at': '2023-12-22T13:08:26Z'
  },
  {
    'id': 20,
    'image': 'https://www.witf.io/wp-content/uploads/2020/11/iStock-1159238834-1628x1080.jpg',
    'name': 'Scientists discover outer space isn\'t pitch-black after all',
    'url': '-', // video url
    'duration': 7634,
    'views': 76523,
    'liked': false,
    'created_at': '2024-01-22T13:08:26Z'
  },
  {
    'id': 19,
    'image':
        'https://www.polytechnique-insights.com/wp-content/uploads/2022/11/adobestock_402438380-1-1537x600.jpeg',
    'name': 'The changing face of the space industry',
    'url': '-', // video url
    'duration': 123,
    'views': 8972345,
    'liked': true,
    'created_at': '2024-01-22T13:08:26Z'
  },
  _main,
];
