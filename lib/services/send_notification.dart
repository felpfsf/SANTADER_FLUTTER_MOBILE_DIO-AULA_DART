import 'package:dart_app/classes/person.dart';
import 'package:dart_app/enum/notification_type.dart';
import 'package:dart_app/services/impl/notifcation_sms.dart';
import 'package:dart_app/services/impl/notification_email.dart';
import 'package:dart_app/services/impl/notification_push.dart';
import 'package:dart_app/services/notification_interface.dart';

class SendNotification {
  NotificationInterface? notification;

  void notificate(Person person) {
    switch (person.getNotificationType()) {
      case NotificationType.email:
        notification = NotificationEmail();
        break;
      case NotificationType.pushNotification:
        notification = NotificationPush();
      case NotificationType.sms:
        notification = NotificationSMS();
      default:
        break;
    }
    if (notification != null) {
      notification!.sendNotification(person);
    } else {
      print("Person don't have notification");
    }
  }
}
