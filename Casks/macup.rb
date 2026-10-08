cask "macup" do
  version "1.1.0"
  sha256 "34d8b408fb1a43806898df264b04bcff95da419c9f44add33d7e91a7dc57cfea"

  url "https://github.com/patriciobcs/macup/releases/download/v#{version}/MacUp.dmg"
  name "MacUp"
  desc "Keep your command-line tools up to date, from the menu bar"
  homepage "https://github.com/patriciobcs/macup"

  depends_on macos: :sonoma

  app "MacUp.app"
  binary "#{appdir}/MacUp.app/Contents/MacOS/MacUp", target: "macup"

  zap trash: [
    "~/Library/Application Support/Macup",
    "~/Library/Preferences/io.github.patriciobcs.macup.plist",
  ]
end
