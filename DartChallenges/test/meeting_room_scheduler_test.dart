import '../lib/src/meeting_room_scheduler.dart';
import 'package:test/test.dart';

void main() {
  test("it should return 0 for empty input", () {
    expect(meetingRoomScheduler([]), 0);
  });
  test("it should return 1 for single input", () {
    expect(meetingRoomScheduler([[0,30]]), 1);
  });
  test("it should return 0 for single inpule and start == end ", () {
    expect(meetingRoomScheduler([[0,0]]), 0);
  });
  test("it should work for continous inputs ", () {
    expect(meetingRoomScheduler([[0,10],[10,20],[20,25]]), 1);
    expect(meetingRoomScheduler([[0,100],[100,200],[200,250]]), 1);
  });
  test("it should work for discontinous inputs ", () {
    expect(meetingRoomScheduler([[0,10],[15,20],[25,30]]), 1);
   
  });
  test("it should work for different inputs ", () {
    expect(meetingRoomScheduler([[0,100],[15,20],[5,30]]), 3);
  });
}
