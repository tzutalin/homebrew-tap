cask "diffpilot" do
  version "0.1.3"
  sha256 "34c3c73515b9482ed1367234c041ddf8d0632eed29421e7992aaa0efce8c8e57"

  url "https://github.com/tzutalin/DiffPilot/releases/download/v#{version}/DiffPilot-#{version}-universal.dmg"
  name "DiffPilot"
  desc "Native app for reviewing Git changes and pull requests with coding agents"
  homepage "https://tzutalin.github.io/DiffPilot/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "DiffPilot.app"
  binary "#{appdir}/DiffPilot.app/Contents/MacOS/dip"

  zap trash: [
    "~/Library/Application Support/dip",
    "~/Library/Caches/dip",
    "~/Library/Preferences/com.diffpilot.dip.plist",
    "~/Library/Saved Application State/com.diffpilot.dip.savedState",
  ]
end
