cask "openreader" do
  version "0.1.1"
  sha256 "397579080b981d091164874770c7a2c31dd1f8e0165c911a5063ad90f8b28d91"

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
