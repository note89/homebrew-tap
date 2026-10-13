cask "screensnap" do
  version "0.4.0"
  sha256 "6837aac179c1aed9a29e2864dc090bf1162ae95df805889a004624de593dbd38"

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
