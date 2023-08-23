import 'package:dart_app/services/notification_interface.dart';

class NotificationSMS implements NotificationInterface {
  @override
  void sendNotification(person) {
    print('Sending SMS to ${person.getName()} - phone: ${person.getPhone()}');
  }
}
