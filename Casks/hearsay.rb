cask "hearsay" do
  version "0.4.0"
  sha256 "b9e9de0a72903b0408c438689e13d050a6910e3709e4e674d61659153bc3f707"

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
