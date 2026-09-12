cask "macup" do
  version "1.0.1"
  sha256 "eeef112a1eb4f75e6c298444c2de46f0999611584d50c4c8978ac7e4d53bd539"

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
