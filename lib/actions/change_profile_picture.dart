part of actions;

@freezed
class ChangeProfilePicture with _$ChangeProfilePicture {
  const factory ChangeProfilePicture({required String picture, required ActionResponse response}) =
      ChangeProfilePictureStart;

  const factory ChangeProfilePicture.successful(AppUser user) = ChangeProfilePictureSuccessful;

  const factory ChangeProfilePicture.error(Object error, StackTrace stackTrace) = ChangeProfilePictureError;
}
