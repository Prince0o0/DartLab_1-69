import 'dart:async';

void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (message) => print('🔔notification: $message'),
    onError: (err) => print('Error: $err'),
    onDone: () => print('System notification closed'),
  );

  controller.add('NewMessage');
  controller.add('Update available');
  controller.add('Payment successful');

  controller.close();
}