# frozen_string_literal: true
# typed: ignore

module Moderation
  module Controllers
    module Dashboard
      class Index
        include Moderation::Action
        include Dry::Monads::Result::Mixin
        include Import[
          :logger,
          operation: 'vacancies.operations.list_for_moderation'
        ]

        expose :vacancies

        def call(params)
          result = operation.call(params)

          logger.info "Result of moderation action: #{result}"

          case result
          when Success
            @vacancies = result.value!
          when Failure
            redirect_to routes.root_path
          end
        end
      end
    end
  end
end
