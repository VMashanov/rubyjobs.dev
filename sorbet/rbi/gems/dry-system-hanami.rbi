# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-system-hanami/all/dry-system-hanami.rbi
#
# dry-system-hanami-b83bef971c4d
module Dry
end
module Dry::System
end
module Dry::System::Hanami
end
module Dry::System::Hanami::Resolver
  def all_files_in_folder(folder); end
  def extract_unnecessary_part(path); end
  def find_file(file); end
  def load!(path, resolver); end
  def load_file!(path); end
  def register_file!(file, resolver: nil); end
  def register_file(file, resolver); end
  def register_folder!(folder, resolver: nil); end
end
