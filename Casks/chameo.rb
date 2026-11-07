cask "chameo" do
  version "0.5.8"
  sha256 "d4f88936de8bcb10da35216a5792a8ae210c3175c96fcbae5de8bb983a1a731e"

  url "https://github.com/robertu7/Chameo/releases/download/v#{version}/Chameo-#{version}-arm64.dmg"
  name "Chameo"
  desc "Menu bar app for daily selfies and timelapses"
  homepage "https://github.com/robertu7/Chameo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Chameo.app"

  uninstall quit: "com.robertu.Chameo"

  zap trash: [
    "~/Library/Application Support/com.robertu.Chameo",
    "~/Library/Caches/com.robertu.Chameo",
    "~/Library/Preferences/com.robertu.Chameo.plist",
    "~/Library/Saved Application State/com.robertu.Chameo.savedState",
  ]

  caveats <<~EOS
    Chameo currently uses ad-hoc signing and is awaiting Apple notarization.
    If macOS blocks the first launch, approve Chameo in System Settings > Privacy & Security.
  EOS
end
