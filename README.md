# Aqueduct Heroes

NB! Currently broken:

```bash
Precompiling executables... (5.5s)
Failed to precompile aqueduct:aqueduct:
../../.pub-cache/hosted/pub.dartlang.org/isolate_executor-2.0.2+3/lib/src/source_generator.dart:6:8: Error: Error when reading '../../.pub-cache/hosted/pub.dartlang.org/analyzer-0.41.2/lib/analyzer.dart': No such file or directory
import 'package:analyzer/analyzer.dart';
       ^
../../.pub-cache/hosted/pub.dartlang.org/isolate_executor-2.0.2+3/lib/src/source_generator.dart:52:17: Error: Type 'ClassDeclaration' not found.
  static Future<ClassDeclaration> _getClass(Type type) async {
                ^^^^^^^^^^^^^^^^
../../.pub-cache/hosted/pub.dartlang.org/isolate_executor-2.0.2+3/lib/src/source_generator.dart:54:22: Error: Method not found: 'parseDartFile'.
    final fileUnit = parseDartFile(uri.toFilePath(windows: Platform.isWindows));
                     ^^^^^^^^^^^^^
../../.pub-cache/hosted/pub.dartlang.org/isolate_executor-2.0.2+3/lib/src/source_generator.dart:58:28: Error: 'ClassDeclaration' isn't a type.
        .where((u) => u is ClassDeclaration)
                           ^^^^^^^^^^^^^^^^
../../.pub-cache/hosted/pub.dartlang.org/isolate_executor-2.0.2+3/lib/src/source_generator.dart:59:28: Error: 'ClassDeclaration' isn't a type.
        .map((cu) => cu as ClassDeclaration)
                           ^^^^^^^^^^^^^^^^
```

My version of the [Aqueduct Heroes](https://aqueduct.io/docs/tut/getting-started/)
tutorial.

In your browser, navigate to the [HTML UI](http://aqueduct-tutorial.stablekernel.io).
This browser application is a 'Hero Manager' - it allows a user to view, create,
delete and update heroes.

It will make HTTP requests to [http://localhost:8888](http://localhost:8888) to
fetch and manipulate hero data. The application you will build in this tutorial
respond to those requests.

## Running the Application in CLI

Run `aqueduct serve` from this directory to run the application. For running
within an IDE, run `bin/main.dart`. By default, a configuration file named
`config.yaml` will be used.

To generate a SwaggerUI client, run `aqueduct document client`.

## Running in VSCode

1) Start the server by pressing F5 in bin/main.dart file
2) Press CTRL+SHIFT+F5 / Cmd+Shift+F5 to restart the server

## Hot reload with [Nodemon](https://nodemon.io/)

```bash
nodemon --exec "aqueduct serve" --watch lib -e dart
```

or to make it easier with just

```bash
nodemon
```

a configuration file: nodemon.json can be set up:

```json
{
  "watch": [
    "lib"
  ],
  "ext": "dart",
  "exec": "aqueduct serve"
}
```

## Running Application Tests

To run all tests for this application, run the following in this directory:

```bash
pub run test
```

The default configuration file used when testing is `config.src.yaml`. This file
should be checked into version control. It also the template for configuration
files used in deployment.

## Deploying an Application

See the documentation for [Deployment](https://aqueduct.io/docs/deploy/).
