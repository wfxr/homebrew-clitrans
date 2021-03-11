# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitrans < Formula
  desc "Yet another command-line translator (Chinese <=> English)"
  homepage "https://github.com/wfxr/clitrans"
  url "https://github.com/wfxr/clitrans/releases/download/v0.3.0/clitrans-v0.3.0-x86_64-apple-darwin.tar.gz"
  sha256 "dd9116fdad7ea7371e54f3c0033a35a6302bca6e5f48a320929a3360b1994362"
  license "MIT/APACHE-2.0"
  version "0.3.0"

  def install
    bin.install "clitrans"
    zsh_completion.install  "completions/zsh/_clitrans"
    bash_completion.install "completions/bash/clitrans.bash"
    fish_completion.install "completions/fish/clitrans.fish"
  end
end

# vim: ft=ruby:
