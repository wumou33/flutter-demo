class KZLoginData {
  late String username;
  late String password;

  KZLoginData.fromData(this.username, this.password);

  KZLoginData();

  setPassword(String password) {
    this.password = password;
  }

  setUsername(String username) {
    this.username = username;
  }
}
