# typed: false
# frozen_string_literal: true

class ContactRepository < Hanami::Repository
  associations do
    has_one :vacancy
  end
end
