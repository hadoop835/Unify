import 'package:unify/ast/base.dart';
import 'package:unify/ast/uniapi/ast_method.dart';
import 'package:unify/utils/file/input_file.dart';

class Module extends UniApiNode {
  Module(
    this.inputFile, {
    this.name = '',
    this.methods = const [],
    this.codeComments = const <String>[],
  });

  /// The name of the API.
  String name;

  /// List of methods inside the API.
  List<Method> methods;

  InputFile inputFile;

  List<String> codeComments;

  @override
  String toString() => '(Module name:$name, methods: $methods)';
}
