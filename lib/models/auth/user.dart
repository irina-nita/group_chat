part of models;

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String displayName,
    @Default('https://i.postimg.cc/J099KWWn/3d-rendering-zoom-call-avatar-1.jpg') String imageUrl,
  }) = AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
