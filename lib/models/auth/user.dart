part of models;

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String displayName,
    @Default('https://i.postimg.cc/wMn6pgqD/Blowing-rocket-3d-cartoon-style-icon.jpg') String imageUrl,
  }) = AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
