part of actions;

@freezed
class GetLocation with _$GetLocation {
  const factory GetLocation() = GetLocationStart;

  const factory GetLocation.successful(UserLocation? userLocation) = GetLocationSuccessful;

  const factory GetLocation.error(Object error, StackTrace stackTrace) = GetLocationError;
}
