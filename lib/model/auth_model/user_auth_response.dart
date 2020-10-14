

import 'package:sqlite/model/auth_model/user_auth.dart';

class UserAuthResponse {

	List<UserAuth> authUser;
	UserAuthResponse.fromJsonMap(Iterable map):
				authUser = List<UserAuth>.from(map.map((it) => UserAuth.fromMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}
