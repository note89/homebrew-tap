cask "screensnap" do
  version "0.5.0"
  sha256 "54a33816c378f1eae77a3123382970eceaa6a76e7f48bee2b0d69a404f4e6203"

  url "https://github.com/note89/screensnap/releases/download/v#{version}/Screensnap-#{version}.zip"
  name "Screensnap"
  desc "Menu bar screen recorder for GIF and MP4"
  homepage "https://github.com/note89/screensnap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Screensnap.app"

  zap trash: [
    "~/Library/Caches/local.screensnap",
    "~/Library/Preferences/local.screensnap.plist",
  ]
end
