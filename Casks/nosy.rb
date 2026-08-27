cask "nosy" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "ef79318ebfd08dade0b152608f2e37557147498dd754277cf3bc1bd4e3d7b85d",
         intel: "8f144593b8710b34c0af966e01db5aaf605db96515d72e171256497bf3de219d"

  url "https://github.com/2026osscontest/nosy/releases/download/v#{version}/Nosy-#{version}-#{arch}.dmg"
  name "Nosy"
  desc "Desktop pet that diagnoses your development environment"
  homepage "https://github.com/2026osscontest/nosy"

  depends_on macos: ">= :monterey"

  app "Nosy.app"

  caveats <<~EOS
    Nosy is signed ad-hoc but not notarized by Apple, so macOS quarantines it
    on first launch and refuses to open it. Clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/Nosy.app"

    Nosy runs in the menu bar with no Dock icon. Quit it from there.
  EOS

  zap trash: [
    "~/.nosy",
    "~/Library/Application Support/Nosy",
    "~/Library/Preferences/kr.osscontest.nosy.plist",
    "~/Library/Saved Application State/kr.osscontest.nosy.savedState",
  ]
end
