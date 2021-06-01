import 'package:clean_framework/clean_framework.dart';

import '../../model/{{#snakeCase}}{{name}}{{/snakeCase}}_model.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_usecase.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Bloc extends Bloc {

final {{#camelCase}}{{pipe}}{{/camelCase}}Pipe = Pipe<{{#pascalCase}}{{name}}{{/pascalCase}}Model>();

{{#pascalCase}}{{name}}{{/pascalCase}}UseCase _{{#camelCase}}{{name}}{{/camelCase}}UseCase;

  {{#pascalCase}}{{name}}{{/pascalCase}}Bloc({
    {{#pascalCase}}{{name}}{{/pascalCase}}UseCase {{#camelCase}}{{name}}{{/camelCase}}UseCase,
}){
  _{{#camelCase}}{{name}}{{/camelCase}}UseCase = {{#camelCase}}{{name}}{{/camelCase}}UseCase ??
       _{{#camelCase}}{{name}}{{/camelCase}}UseCase(
         viewModelCallBack: _viewModelCallBack 
       );
  
  {{#camelCase}}{{pipe}}{{/camelCase}}Pipe.whenListenedDo(() => _{{#camelCase}}{{name}}{{/camelCase}}UseCase.create());

}

void _viewModelCallBack(model) {}

@override 
void dispose() {
  {{#camelCase}}{{pipe}}{{/camelCase}}Pipe.dispose();
}

}