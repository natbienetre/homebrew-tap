cask "vfs-token-from-email" do
    version "20250619-105427"
    sha256 "867deb68f86b15bdb01acb8d9de52b2d4f7b999c1b7ac1abe859244530822b19"

    url "https://github.com/natbienetre/wordpress-customer-data/releases/download/automator-workflow-#{version}/automator-workflow-#{version}.tar.gz"
    name "VFS Token from Email"
    desc "Generate a VFS token from an email address"
    homepage "https://github.com/natbienetre/wordpress-customer-data"

    depends_on macos: ">= :high_sierra"
    depends_on formula: "jq"
    depends_on formula: "curl"

    service "automator.workflow", target: "#{name[0]}.workflow"
  end
