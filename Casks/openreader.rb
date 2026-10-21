cask "openreader" do
  version "0.1.2"
  sha256 "e3017f33c601bc1fcc523c813f5186d6a82800f52dc82c8192d273e6c999aecf"

  url "https://catalog.openreader.io/releases/#{version}/OpenReader-#{version}-aarch64-apple-darwin.dmg",
      verified: "catalog.openreader.io/releases/"
  name "OpenReader"
  desc "Local text-to-speech reader with synchronized highlighting"
  homepage "https://openreader.io/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "OpenReader.app"

  uninstall quit: "io.openreader.desktop"
end
