import 'package:bloc/bloc.dart';
import 'package:project_tpc/Screens/StudentDetails/student_details.dart';
import 'package:project_tpc/Screens/info.dart';
import 'package:project_tpc/Screens/myprofile.dart';




enum NavigationEvents {
  HomePageClickedEvent,
  EditYourDetailsClickedEvent,
  InfoPageClickedEvent,
  
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {

  
  @override
  NavigationStates get initialState => StudentDetails();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield StudentDetails();
        break;

      case NavigationEvents.EditYourDetailsClickedEvent:
        yield MyProfile();
        break;
      
      case NavigationEvents.InfoPageClickedEvent:
        yield Info();
        break;

      

     
    }
  }
}
