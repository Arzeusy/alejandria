import 'package:flutter/material.dart';

import '../pages/login/model/user_model.dart';
import '../objectbox.g.dart';

class ObjectBox {
  late final Store store;

  late final Box<User> userBox;
  late final Box<Profile> profileBox;

  ObjectBox._create(this.store) {
    userBox = Box<User>(store);
    profileBox = Box<Profile>(store);

    if (userBox.isEmpty()) {
      _putDemoData();
    }
  }

  void _putDemoData() {
    //initial Data
  }

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }

  int addUser(String? userName, String email, String authToken, String picture,
      bool emailVerified) {
    userName ??= email;

    User newUser = User(userName, email, authToken: authToken);
    int newUserId = userBox.put(newUser);

    Profile newProfile = Profile(picture, emailVerified);
    newProfile.user.target = newUser;
    profileBox.put(newProfile);

    debugPrint("Added user: ${newUser.userName} ----------------------------");
    return newUserId;
  }

  Stream<List<User>> listUsers() {
    final builder = userBox.query()..order(User_.id, flags: Order.descending);
    return builder.watch(triggerImmediately: true).map((event) => event.find());
  }

  User getUser(int userId) {
    final query = (userBox.query(User_.id.equals(userId))).build();
    return query.find().first;
  }

  bool deleteUser(int userId) {
    final isRemoved = userBox.remove(userId);
    return isRemoved;
    //βλέπομέν σε καὶ λέγομέν σοι παραβολήν.
    //Nosotros te miramos y te decimos una parábola.
  }
}
