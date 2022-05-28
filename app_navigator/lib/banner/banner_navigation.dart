import 'package:app_navigator/banner/example_banner.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_navigation.freezed.dart';

typedef BannerBuilder = MaterialBanner Function(BuildContext);

class BannerRoutes {
  BannerBuilder lookupBuilderByRoute(BannerRoute route) => route.when(
        example: (_) => exampleBanner,
      );
}

@freezed
class BannerRoute with _$BannerRoute {
  factory BannerRoute.example(String message) = ExampleBanner;
}
