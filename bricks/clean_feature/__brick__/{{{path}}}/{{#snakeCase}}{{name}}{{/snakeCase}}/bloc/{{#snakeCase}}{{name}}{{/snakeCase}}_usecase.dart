import 'package:clean_framework/clean_framework.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}UseCase extends UseCase {

  {{#pascalCase}}{{name}}{{/pascalCase}}UseCase({
    required Function(dynamic) viewModelCallBack
  });

  void create() {}
}