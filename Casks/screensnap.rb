cask "screensnap" do
  version "0.3.1"
  sha256 "f4e7945c918459591f6022e2fc4c67d9fa6780887373320f2820af557ba63c02"

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
