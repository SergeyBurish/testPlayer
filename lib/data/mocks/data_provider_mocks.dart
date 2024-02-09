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
      'assets/id10-mock.jpg',
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
        'assets/id25-mock.webp',
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
        'assets/id24-mock.webp',
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
        'assets/id23-mock.jpg',
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
        'assets/id22-mock.webp',
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
        'assets/id21-mock.jpg',
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
    'image': 'assets/id20-mock.jpg',
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
        'assets/id19-mock.jpeg',
    'name': 'The changing face of the space industry',
    'url': '-', // video url
    'duration': 123,
    'views': 8972345,
    'liked': true,
    'created_at': '2024-01-22T13:08:26Z'
  },

  {
    'id': 18,
    'image':
        'assets/id25-mock.webp',
    'name': 'AAA These are our top space images of all time',
    'url': '-', // video url
    'duration': 4210,
    'views': 557678,
    'liked': false,
    'created_at': '2024-01-22T13:08:26Z'
  },
  {
    'id': 17,
    'image':
        'assets/id24-mock.webp',
    'name': 'AAA Space discoveries that will blow your mind',
    'url': '-', // video url
    'duration': 5312,
    'views': 6662,
    'liked': false,
    'created_at': '2024-01-21T13:08:26Z'
  },
  {
    'id': 16,
    'image':
        'assets/id23-mock.jpg',
    'name': 'AAA Asteroid today: Space rock speeding towards Earth at a fearsome 60905 kmph',
    'url': '-', // video url
    'duration': 245,
    'views': 65438,
    'liked': false,
    'created_at': '2024-01-19T13:08:26Z'
  },
  {
    'id': 14,
    'image':
        'assets/id22-mock.webp',
    'name': 'BBB 20 amazing facts about space and astronomy',
    'url': '-', // video url
    'duration': 6541,
    'views': 742,
    'liked': true,
    'created_at': '2024-01-18T13:08:26Z'
  },
  {
    'id': 13,
    'image':
        'assets/id21-mock.jpg',
    'name':
        'BBB Space Force\'s first six missile-defense satellites in medium orbit to cost about \$500 million',
    'url': '-', // video url
    'duration': 873,
    'views': 845623902,
    'liked': true,
    'created_at': '2023-12-22T13:08:26Z'
  },
  {
    'id': 12,
    'image': 'assets/id20-mock.jpg',
    'name': 'BBB Scientists discover outer space isn\'t pitch-black after all',
    'url': '-', // video url
    'duration': 7634,
    'views': 76523,
    'liked': false,
    'created_at': '2024-01-22T13:08:26Z'
  },
  {
    'id': 11,
    'image':
        'assets/id19-mock.jpeg',
    'name': 'BBB The changing face of the space industry',
    'url': '-', // video url
    'duration': 123,
    'views': 8972345,
    'liked': true,
    'created_at': '2024-01-22T13:08:26Z'
  },

  _main,
];
