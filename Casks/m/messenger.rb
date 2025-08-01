cask "messenger" do
  version "517.0.0.41.109"
  sha256 :no_check

  url "https://www.messenger.com/messenger/desktop/downloadV2/?platform=mac&variant=catalyst"
  name "Facebook Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  livecheck do
    url "https://www.facebook.com/messenger/desktop/zeratul/update.xml?target=zeratul&platform=mac"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Messenger.app"

  zap trash: [
    "~/Library/Application Support/Messenger",
    "~/Library/Caches/Messenger",
    "~/Library/Logs/Messenger",
  ]
end
