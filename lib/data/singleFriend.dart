class SingleFriend {
  String _name;
  String _position;
  SingleFriend(this._name, this._position, this._img);
  String _img;

  get name => this._name;
  get position => this._position;
  get img => this._img;
}

SingleFriend fr1 =
    SingleFriend("Corey George", "Developer", "assets/images/fr1.png");
SingleFriend fr2 =
    SingleFriend("Ahmad Vetrovs", "Developer", "assets/images/fr2.png");
SingleFriend fr3 =
    SingleFriend("Cristofer Workman", "Developer", "assets/images/fr3.png");
SingleFriend fr4 =
    SingleFriend("Tiana Korsgaard", "Developer", "assets/images/fr4.png");

List<SingleFriend> singleFriend = [fr1, fr2, fr3, fr4];
