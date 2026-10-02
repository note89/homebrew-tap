cask "hearsay" do
  version "0.3.0"
  sha256 "9607264c23779272b40189969cb54cfbe4218400cd0be23bf4ac88f9ef502119"

  url "https://github.com/note89/hearsay/releases/download/v#{version}/hearsay-#{version}.zip"
  name "Hearsay"
  desc "Menu bar push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/note89/hearsay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "hearsay.app"

  uninstall quit: "computer.borrowed.hearsay"

  zap trash: [
    "~/Library/Application Support/hearsay",
    "~/Library/Caches/computer.borrowed.hearsay",
    "~/Library/Preferences/computer.borrowed.hearsay.plist",
  ]
end
