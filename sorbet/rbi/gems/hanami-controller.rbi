# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/hanami-controller/all/hanami-controller.rbi
#
# hanami-controller-1.3.1
module Hanami
end
module Hanami::Action
  def finish; end
  def flash; end
  def self.included(base); end
  def session; end
end
module Hanami::Action::Configurable
  def configuration; end
  def self.included(base); end
end
class Hanami::Action::Request < Rack::Request
  def [](*arg0); end
  def []=(*arg0); end
  def content_type; end
  def cookies; end
  def delete_param(*arg0); end
  def params; end
  def session; end
  def update_param(*arg0); end
  def values_at(*arg0); end
end
class Hanami::Action::BaseParams
  def [](key); end
  def _extract_params; end
  def _router_params(fallback = nil); end
  def dig(*keys); end
  def each(&blk); end
  def env; end
  def get(*keys); end
  def initialize(env); end
  def raw; end
  def to_h; end
  def to_hash; end
  def valid?; end
end
module Hanami::Action::Rack
  def _send_file(response); end
  def body=(body); end
  def head?; end
  def headers; end
  def parsed_request_body; end
  def request; end
  def request_id; end
  def request_method; end
  def response; end
  def self.included(base); end
  def send_file(path); end
  def status=(status); end
  def unsafe_send_file(path); end
end
module Hanami::Action::Rack::Callable
  def call(env); end
end
class Hanami::Action::Rack::File
  def call(env); end
  def initialize(path, root); end
end
module Hanami::Action::Rack::ClassMethods
  def params_class; end
  def rack_builder; end
  def use(middleware, *args, &block); end
end
module Hanami::Action::Rack::InstanceMethods
  def initialize(*arg0); end
end
module Hanami::Action::Mime
  def accept; end
  def accept?(mime_type); end
  def accept_header?; end
  def best_q_match(q_value_header, available_mimes); end
  def charset; end
  def charset=(value); end
  def content_type; end
  def content_type_from_accept_header; end
  def content_type_with_charset; end
  def default_charset; end
  def default_content_type; end
  def default_response_type; end
  def detect_format; end
  def finish; end
  def format; end
  def format=(format); end
  def self.included(base); end
end
module Hanami::Action::Mime::ClassMethods
  def accept(*formats); end
  def content_type(*formats); end
  def format_to_mime_type(format); end
end
module Hanami::Action::Mime::InstanceMethods
  def initialize(*arg0); end
end
class Hanami::Action::Mime::RequestMimeWeight
  def <=>(other); end
  def calculate_priority(mime); end
  def format; end
  def index; end
  def initialize(mime, quality, index, format = nil); end
  def mime; end
  def priority; end
  def quality; end
  include Comparable
end
module Hanami::Action::Redirect
  def redirect_to(url, status: nil); end
end
module Hanami::Controller
  def self.configuration; end
  def self.configuration=(arg0); end
  def self.configure(&blk); end
  def self.dupe; end
  def self.duplicate(mod, controllers = nil, &blk); end
  def self.load!; end
  extend Hanami::Utils::ClassAttribute::ClassMethods
  include Hanami::Utils::ClassAttribute
end
class Hanami::Controller::Error < StandardError
end
class Hanami::Controller::IllegalExposureError < Hanami::Controller::Error
end
module Hanami::Action::Exposable
  def exposures; end
  def finish; end
  def self.included(base); end
end
module Hanami::Action::Exposable::Guard
  def self.included(base); end
end
module Hanami::Action::Exposable::Guard::ClassMethods
  def detect_reserved_words!(names); end
  def expose(*names); end
  def reserved_word?(name, namespace = nil); end
end
module Hanami::Action::Exposable::ClassMethods
  def _expose(*names); end
  def attr_reader?(name); end
  def expose(*names); end
  def exposures; end
end
module Hanami::Http
end
class Hanami::Http::Status
  def self.for_code(code); end
  def self.message_for(code); end
end
module Hanami::Action::Throwable
  def _dump_exception(exception); end
  def _exception_handler(exception); end
  def _handle_exception(exception); end
  def _reference_in_rack_errors(exception); end
  def _rescue; end
  def halt(code, message = nil); end
  def self.included(base); end
  def status(code, message); end
end
module Hanami::Action::Throwable::ClassMethods
  def handle_exception(exception); end
end
module Hanami::Action::Callbacks
  def self.included(base); end
end
module Hanami::Action::Callbacks::ClassMethods
  def after(*callbacks, &blk); end
  def append_after(*callbacks, &blk); end
  def append_before(*callbacks, &blk); end
  def before(*callbacks, &blk); end
  def prepend_after(*callbacks, &blk); end
  def prepend_before(*callbacks, &blk); end
  def self.extended(base); end
end
module Hanami::Action::Callbacks::InstanceMethods
  def _run_after_callbacks(params); end
  def _run_before_callbacks(params); end
  def call(params); end
end
class Hanami::Action::Params < Hanami::Action::BaseParams
  def _params; end
  def error_messages(error_set = nil); end
  def errors; end
  def initialize(env); end
  def raw; end
  def self._base_rules; end
  def self._messages; end
  def self._messages=(arg0); end
  def self._messages_path; end
  def self._messages_path=(arg0); end
  def self._namespace; end
  def self._namespace=(arg0); end
  def self._predicates; end
  def self._predicates=(arg0); end
  def self._predicates_module; end
  def self._predicates_module=(arg0); end
  def self.params(&blk); end
  def self.schema; end
  def self.schema=(arg0); end
  def to_h; end
  def to_hash; end
  def valid?; end
  extend Hanami::Utils::ClassAttribute::ClassMethods
  extend Hanami::Validations::ClassMethods
  extend Hanami::Validations::Form::ClassMethods
  include Hanami::Utils::ClassAttribute
  include Hanami::Validations
  include Hanami::Validations::Form
end
class Hanami::Action::Params::Errors < SimpleDelegator
  def _nested_attribute(keys, key); end
  def add(*args); end
  def initialize(errors = nil); end
end
module Hanami::Action::Validatable
  def self.included(base); end
end
module Hanami::Action::Validatable::ClassMethods
  def params(klass = nil, &blk); end
end
module Hanami::Action::Head
  def _requires_no_body?; end
  def finish; end
  def keep_response_header?(header); end
end
module Hanami::Action::Callable
  def call(env); end
  def finish; end
end
class Hanami::Controller::Configuration
  def _sort_handled_exceptions!; end
  def action_module(value = nil); end
  def action_module=(arg0); end
  def cookies(options = nil); end
  def cookies=(arg0); end
  def copy!(base); end
  def default_charset(charset = nil); end
  def default_charset=(arg0); end
  def default_headers(headers = nil); end
  def default_headers=(arg0); end
  def default_request_format(format = nil); end
  def default_request_format=(arg0); end
  def default_response_format(format = nil); end
  def default_response_format=(arg0); end
  def duplicate; end
  def exception_handler(exception); end
  def exception_handler_for(exception); end
  def format(hash); end
  def format_for(mime_type); end
  def formats; end
  def formats=(arg0); end
  def handle_exception(exception); end
  def handle_exceptions(value = nil); end
  def handle_exceptions=(arg0); end
  def handled_exception?(exception); end
  def handled_exceptions; end
  def handled_exceptions=(arg0); end
  def initialize; end
  def load!; end
  def mime_type_for(format); end
  def mime_types; end
  def modules; end
  def modules=(arg0); end
  def prepare(&blk); end
  def public_directory(value = nil); end
  def public_directory=(arg0); end
  def reset!; end
  def restrict_mime_types!(mime_types); end
  def root_directory; end
  def self.for(base); end
end
class Hanami::Controller::UnknownFormatError < Hanami::Controller::Error
  def initialize(format); end
end
class Hanami::Controller::MissingSessionError < Hanami::Controller::Error
  def initialize(session_method); end
end
module Hanami::Action::Glue
  def finish; end
  def renderable?; end
  def self.included(base); end
  def sending_file?; end
end
