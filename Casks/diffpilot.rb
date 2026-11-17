cask "diffpilot" do
  version "0.1.4"
  sha256 "bb85964ae00b62393c23b6cfe7d933da75b65f89a6b269837c5a6e1fea9c5ed7"

  url "https://github.com/tzutalin/DiffPilot/releases/download/v#{version}/DiffPilot-#{version}-universal.dmg"
  name "DiffPilot"
  desc "Native app for reviewing Git changes and pull requests with coding agents"
  homepage "https://tzutalin.github.io/DiffPilot/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "DiffPilot.app"
  binary "#{appdir}/DiffPilot.app/Contents/MacOS/dip"

  zap trash: [
    "~/Library/Application Support/dip",
    "~/Library/Caches/dip",
    "~/Library/Preferences/com.diffpilot.dip.plist",
    "~/Library/Saved Application State/com.diffpilot.dip.savedState",
  ]
end
