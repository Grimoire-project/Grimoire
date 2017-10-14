import Quick
import Nimble
import GrimoireKit

final class OperatorsSpec: QuickSpec {
  override func spec() {
    describe("|>") {
      func increment(x: Int) -> Int {
        return x + 1
      }

      func decrement(x: Int) throws -> Int {
        return x - 1
      }

      it("pipes a value into a function") {
        expect(3 |> increment) == 4
      }

      it("works with throwable functions") {
        expect { try 5 |> decrement } == 4
      }
    }
  }
}
