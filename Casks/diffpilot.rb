cask "diffpilot" do
  version "0.1.5"
  sha256 "9e48d6b0b4d8b2e42bf4792c874c4a79a1c23a9c7928dafa162205fd380530c1"

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
