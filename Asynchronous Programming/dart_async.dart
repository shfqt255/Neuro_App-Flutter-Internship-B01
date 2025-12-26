import 'dart:async';
import 'dart:io';

// 1. Create Future<String> fetchUserData() with delayed response
// 2. Use async-await to call function
// 4. Create multiple Future functions
Future<String> fetchUserData() async {
  // Api fetch call here
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched successfully';
}

// 3. Implement error handling with try-catch
Future<void> errorHandling() async {
  try {
    await fetchUserData();
  } catch (e) {
    print('Error: $e');
  }
}

// 4. Create multiple Future functions
Future<String> fetchUserProfile() async {
  // api call
  return 'User Profile';
}

// 5. Use Future.wait() for parallel execution
Future<void> fetchMultipleData() async {
  List<String> results = await Future.wait([
    fetchUserData(),
    fetchUserProfile(),
  ]);
  print('Results: $results');
}

// 6. Implement Stream<int> counterStream()
Stream<int> counterStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // yeild gives a value and continues and return gives one value and ends
    if (i == 4) {
      throw Exception('Error occured at $i');
    }
  }
}

// 7. Listen to stream with await for
// 8. Handle stream errors
Future<void> ListenToStream() async {
  try {
    await for (int value in counterStream()) {
      print('Counter Value $value');
    }
  } catch (e) {
    print('Error $e');
  }
}

// 9. Create Stream controller manually
StreamController<String> messageController = StreamController<String>();
// 10. Demonstrate stream transformation
void streamController() async {
  messageController.add('Hello World!');
  messageController.add('This is stream Controller');
  messageController.addError('Controller Error');
  messageController.stream
      .map((message) => message.toUpperCase())
      .listen(
        (data) => print(data),
        onError: (e) => print(e),
        onDone: () => print('Closed'),
      );
}

Future<void> main() async {

  String data = await fetchUserData();
  print(data);

  await errorHandling();

  await fetchMultipleData();

  await ListenToStream();

  streamController(); 
}

/*1. Create Future<String> fetchUserData() with delayed response
2. Use async-await to call function
3. Implement error handling with try-catch
4. Create multiple Future functions
5. Use Future.wait() for parallel execution
6. Implement Stream<int> counterStream()
7. Listen to stream with await for
8. Handle stream errors
9. Create Stream controller manually
10. Demonstrate stream transformation */

// Output
/*PS E:\FLUTTER\NeuroApp_Week1_Tasks> dart ".\Asynchronous Programming\dart_async.dart"
Data fetched successfully
Results: [Data fetched successfully, User Profile]
Counter Value 1
Counter Value 2
Counter Value 3
Counter Value 4
Error Exception: Error occured at 4
HELLO WORLD!
THIS IS STREAM CONTROLLER
Controller Error
PS E:\FLUTTER\NeuroApp_Week1_Tasks>  */
