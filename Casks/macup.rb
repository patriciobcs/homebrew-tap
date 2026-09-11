cask "macup" do
  version "1.0.0"
  sha256 "86f5b9bae2020a7cf1b730b887a7fdb15ce72306f2018ebd2b9a917c815b4dd6"

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
