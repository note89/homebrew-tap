cask "screensnap" do
  version "0.4.2"
  sha256 "91441fa706bae0b4fa64b72402b613f0d614932ebad7486c1f81c0def9fbc9b6"

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
