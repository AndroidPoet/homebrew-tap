# typed: false
# frozen_string_literal: true

class PlayconsoleCli < Formula
  desc "Fast, lightweight, and scriptable CLI for Google Play Console"
  homepage "https://github.com/AndroidPoet/playconsole-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "0c3728df7dae771634401e37b64e31b4a7497b8ac12306211893e7611b34ee32"
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "0fbe5ebcdd928f7a04aa4f619ebfb5450f1b9c4dd1d767febd6519c70cb4a33c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "51c406d2f2f73cbe4da281328c707f0f6d8c84185d5bd2787ad7e8e315439348"
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "4df17e755c062bbffbfe3e38febc86552c92eb3022db64cdee2b0d7ebdd3ac1f"
    end
  end

  def install
    bin.install "playconsole-cli"
    bin.install_symlink "playconsole-cli" => "gpc"
  end

  test do
    system "#{bin}/gpc", "version"
  end
end
