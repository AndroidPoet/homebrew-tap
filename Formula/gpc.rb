# typed: false
# frozen_string_literal: true

class Gpc < Formula
  desc "Fast, lightweight CLI for Google Play Console"
  homepage "https://github.com/AndroidPoet/playconsole-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.5.1/playconsole-cli_0.5.1_darwin_arm64.tar.gz"
      sha256 "fcdaba4cfd6b00a8c72b8f333b4909729a528c0df559c58a00370ee3e82060b7"

      def install
        bin.install "playconsole-cli" => "gpc"
      end
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.5.1/playconsole-cli_0.5.1_darwin_amd64.tar.gz"
      sha256 "c9f699b19feb4ebc87465d9f413da632fea1adaa91e85beb6ae5d676b4db2bab"

      def install
        bin.install "playconsole-cli" => "gpc"
      end
    end
  end

  test do
    assert_match "gpc is a fast", shell_output("#{bin}/gpc --help")
  end
end
