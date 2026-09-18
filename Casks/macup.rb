cask "macup" do
  version "1.0.2"
  sha256 "8fe6660aa5fec8b730add6b3626758ca677fccb0a3ba3e8ceda3047f284a6e21"

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
