
class UserAuth {


  static String tbl_name = "user";
  static String colID = "id";
  static String colUserName = "username";
  static String colPassword = "katasandi";
  static String colNama = "nama";
  static String colAlamat = "alamat";
  static String colNo_hp = "no_hp";


	var ID;
	String UserName;
	String Password;
	String nama;
	String alamat;
	String no_hp;

  UserAuth();

	UserAuth.fromMap(Map<String, dynamic> map):
				ID = map["id"],
				UserName = map["username"],
				Password = map["katasandi"],
				nama = map["nama"],
				alamat = map["alamat"],
				no_hp = map["no_hp"];

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = ID;
		data['username'] = UserName;
		data['katasandi'] = Password;
		data['nama'] = nama;
		data['alamat'] = alamat;
		data['no_hp'] = no_hp;
		return data;
	}
}
