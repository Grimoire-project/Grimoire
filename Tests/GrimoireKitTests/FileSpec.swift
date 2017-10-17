import Quick
import Nimble
@testable import GrimoireKit

final class FileSpec: QuickSpec {
  override func spec() {
    describe("read") {
      context("when file path is faulty") {
        let path = "Sources /Commands/Help.swift"

        it("throws the correct error") {
          expect { try File.read(path) }.to(throwError { error in
            let expected = "The file “Help.swift” couldn’t be opened because there is no such file."
            expect(error.localizedDescription) == expected
          })
        }
      }

      context("when file path is valid") {
        let path = Fixture.path("FileSpecFixture.txt")

        it("fetch the correct file") {
          expect { try File.read(path) } == "some text content\n"
        }
      }
    }
  }
}
