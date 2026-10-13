cask "screensnap" do
  version "0.4.1"
  sha256 "c92b442fb51c86d782ceaef9cd527c04d58d0a9a43368e15d7c03398aed3f523"

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
