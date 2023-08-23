import 'package:dart_app/classes/person.dart';
import 'package:dart_app/services/notification_interface.dart';

class NotificationPush implements NotificationInterface {
  @override
  void sendNotification(Person person) {
    print("Sending push notification to ${person.getName()} - ${person.getPhone()}");
  }
}