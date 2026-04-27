# typed: false
# frozen_string_literal: true

class Gpc < Formula
  desc "Fast, lightweight CLI for Google Play Console"
  homepage "https://github.com/AndroidPoet/playconsole-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.5.2/playconsole-cli_0.5.2_darwin_arm64.tar.gz"
      sha256 "2028732f9e3576b1b67c7a15f686b574b51960af9b3c24dfe8102ad0dd1da7c3"

      def install
        bin.install "playconsole-cli" => "gpc"
      end
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.5.2/playconsole-cli_0.5.2_darwin_amd64.tar.gz"
      sha256 "64e6761afee1cedcc595f49ee37dfaabe8b333794b0945541c84221d8a0dd49d"

      def install
        bin.install "playconsole-cli" => "gpc"
      end
    end
  end

  test do
    assert_match "gpc is a fast", shell_output("#{bin}/gpc --help")
  end
end
