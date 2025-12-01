import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../core/components/app_image.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({super.key});

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  MoviesData? model;

 Future<void> getData() async {
    final response = await Dio().get(
      'https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd',
    );
    model = MoviesData.fromJson(response.data);

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('Movies App'),),
      body: model == null
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: model!.results.length,
              itemBuilder: (context, index) {
                return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                           borderRadius: BorderRadiusGeometry.circular(20),
                                child: AppImage(
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  path:
                                      'http://image.tmdb.org/t/p/original${model!.results[index].posterPath}',
                                ),
                              ),
                            ),
                            Text(
                              model!.results[index].originalTitle,
                              textAlign: TextAlign.center,
                            ),
                            Text(model!.results[index].voteAverage.toString()),
                          ],
                        ),
                      );
              },
            ),
    );
  }
}

class MoviesData {
  late final int page;
  late final List<Results> results;
  late final int totalPages;
  late final int totalResults;

  MoviesData.fromJson(Map<String, dynamic> json) {
    page = json['page'] ?? 0;
    results = List.from(
      json['results'] ?? [],
    ).map((e) => Results.fromJson(e)).toList();
    totalPages = json['total_pages'] ?? 0;
    totalResults = json['total_results'] ?? 0;
  }
}

class Results {
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final num popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final bool video;
  late final num voteAverage;
  late final num voteCount;

  Results.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] ?? false;
    backdropPath = json['backdrop_path'] ?? '';

    genreIds = List.castFrom<dynamic, int>(json['genre_ids'] ?? 0);
    id = json['id'] ?? 0;
    originalLanguage = json['original_language'] ?? '';
    originalTitle = json['original_title'] ?? '';
    overview = json['overview'] ?? '';
    popularity = json['popularity'] ?? 0;
    posterPath = json['poster_path'] ?? '';
    releaseDate = json['release_date'] ?? '';
    title = json['title'] ?? '';
    video = json['video'] ?? false;
    voteAverage = json['vote_average'] ?? 0;
    voteCount = json['vote_count'] ?? 0;
  }
}
