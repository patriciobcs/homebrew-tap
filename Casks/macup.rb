cask "macup" do
  version "1.0.0"
  sha256 "00e35cf9fabe915188cd8c85e81485e79b3adb478ba17945c1b076a5c1825ea7"

  url "https://github.com/patriciobcs/macup/releases/download/v#{version}/MacUp.dmg"
  name "MacUp"
  desc "Keep your command-line tools up to date, from the menu bar"
  homepage "https://github.com/patriciobcs/macup"

  depends_on macos: :sonoma

  app "MacUp.app"

  zap trash: [
    "~/Library/Application Support/Macup",
    "~/Library/Preferences/io.github.patriciobcs.macup.plist",
  ]
end
