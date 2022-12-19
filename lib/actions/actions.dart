library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_chat/models/models.dart';

part 'actions.freezed.dart';
part 'login.dart';
part 'logout.dart';
part 'create_user.dart';
part 'change_page.dart';
part 'change_profile_picture.dart';

typedef ActionResponse = void Function(dynamic action);
