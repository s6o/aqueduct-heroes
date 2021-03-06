import 'package:aquedact_heros/aquedact_heros.dart';
import 'package:aqueduct_test/aqueduct_test.dart';

export 'package:aquedact_heros/aquedact_heros.dart';
export 'package:aqueduct_test/aqueduct_test.dart';
export 'package:test/test.dart';
export 'package:aqueduct/aqueduct.dart';

/// A testing harness for aquedact_heros.
///
/// A harness for testing an aqueduct application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<AquedactHeroesChannel> {
  @override
  Future onSetUp() async {}

  @override
  Future onTearDown() async {}
}
