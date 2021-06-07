import 'package:bloc/bloc.dart';
import 'package:dribble_question_app/bloc/pageOptionsBloc/bloc_event.dart';

class PageOptionsBloc extends Bloc<BlocEvent, int> {
  PageOptionsBloc(initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(event) async* {
    if (event is SelectHomeContent) {
      yield event.index;
    }
  }
}
