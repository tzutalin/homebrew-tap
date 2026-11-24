cask "diffpilot" do
  version "0.1.6"
  sha256 "a650c8898d4b0f1e62490c07b1bf6f6d1499df17ea9767dfea2acff9a485031e"

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
