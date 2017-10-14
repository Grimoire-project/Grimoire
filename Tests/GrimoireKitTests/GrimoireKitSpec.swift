import Quick
import Nimble
import GrimoireKit

final class GrimoireKitSpec: QuickSpec {
  override func spec() {
    describe("command") {
      var args = ["grimoire"]

      func command() -> Command {
        return GrimoireKit.command(args: args)
      }

      context("when receiving no arguments") {
      }

      context("when argument is update") {
        beforeEach {
          args = ["grimoire", "update"]
        }

        it("returns the update command") {
          expect(command()).to(beAKindOf(Update.self))
        }
      }
    }
  }
}
