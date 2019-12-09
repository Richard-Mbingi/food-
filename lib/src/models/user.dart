class User{
  String _userName;
  String _password;

  User(this._userName, this._password);

  set userName(String userName){
    this._userName = userName;
  }

  set password(String password){
    this._password = password;
  }

  String get userName => this._userName;

  String get password => this._password;
}