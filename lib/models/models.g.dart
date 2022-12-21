// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      currentIndexPage: json['currentIndexPage'] as int? ?? 0,
      location: json['location'] == null
          ? const LocationState()
          : LocationState.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'auth': instance.auth,
      'currentIndexPage': instance.currentIndexPage,
      'location': instance.location,
    };

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) => <String, dynamic>{
      'user': instance.user,
    };

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      imageUrl: json['imageUrl'] as String? ?? 'https://i.postimg.cc/J099KWWn/3d-rendering-zoom-call-avatar-1.jpg',
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'imageUrl': instance.imageUrl,
    };

_$UserLocation$ _$$UserLocation$FromJson(Map<String, dynamic> json) => _$UserLocation$(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$UserLocation$ToJson(_$UserLocation$ instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'uid': instance.uid,
    };

_$LocationState$ _$$LocationState$FromJson(Map<String, dynamic> json) => _$LocationState$(
      location: json['location'] == null ? null : UserLocation.fromJson(json['location'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => UserLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserLocation>[],
    );

Map<String, dynamic> _$$LocationState$ToJson(_$LocationState$ instance) => <String, dynamic>{
      'location': instance.location,
      'locations': instance.locations,
    };
