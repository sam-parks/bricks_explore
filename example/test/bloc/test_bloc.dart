import 'package:clean_framework/clean_framework.dart';

import '../../model/test_model.dart';
import 'test_usecase.dart';

class TestBloc extends Bloc {

final testPipe = Pipe<TestModel>();

   TestUseCase _testUseCase;

  TestBloc({
    TestUseCase testUseCase,
}){
  _testUseCase = testUseCase ??
       _testUseCase(
         viewModelCallBack: _viewModelCallBack 
       );
  
  testPipe.whenListenedDo(() => _testUseCase.create());

}

void _viewModelCallBack(model) {}

@override 
void dispose() {
  testPipe.dispose();
}

}