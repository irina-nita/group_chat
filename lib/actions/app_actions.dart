library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_chat/models/models.dart';

part 'app_actions.freezed.dart';
part 'auth/login.dart';
part 'auth/logout.dart';
part 'auth/create_user.dart';
part 'change_page.dart';
part 'auth/initialize_user.dart';
part 'location/get_loc.dart';
part 'location/listen_for_loc.dart';

typedef ActionResponse = void Function(dynamic action);
