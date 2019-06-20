# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rack/all/rack.rbi
#
# rack-2.0.7
module Rack
  def self.release; end
  def self.version; end
end
module Rack::Auth
end
module Rack::Auth::Digest
end
module Rack::Session
end
class Rack::QueryParser
  def initialize(params_class, key_space_limit, param_depth_limit); end
  def key_space_limit; end
  def make_params; end
  def new_depth_limit(param_depth_limit); end
  def new_space_limit(key_space_limit); end
  def normalize_params(params, name, v, depth); end
  def param_depth_limit; end
  def params_hash_has_key?(hash, key); end
  def params_hash_type?(obj); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def self.make_default(key_space_limit, param_depth_limit); end
  def unescape(s); end
end
class Rack::QueryParser::ParameterTypeError < TypeError
end
class Rack::QueryParser::InvalidParameterError < ArgumentError
end
class Rack::QueryParser::Params
  def [](key); end
  def []=(key, value); end
  def initialize(limit); end
  def key?(key); end
  def to_params_hash; end
end
module Rack::Utils
  def add_cookie_to_header(header, key, value); end
  def add_remove_cookie_to_header(header, key, value = nil); end
  def best_q_match(q_value_header, available_mimes); end
  def build_nested_query(value, prefix = nil); end
  def build_query(params); end
  def byte_ranges(env, size); end
  def clean_path_info(path_info); end
  def clock_time; end
  def delete_cookie_header!(header, key, value = nil); end
  def escape(s); end
  def escape_html(string); end
  def escape_path(s); end
  def get_byte_ranges(http_range, size); end
  def make_delete_cookie_header(header, key, value); end
  def parse_cookies(env); end
  def parse_cookies_header(header); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def q_values(q_value_header); end
  def rfc2109(time); end
  def rfc2822(time); end
  def secure_compare(a, b); end
  def select_best_encoding(available_encodings, accept_encoding); end
  def self.add_cookie_to_header(header, key, value); end
  def self.add_remove_cookie_to_header(header, key, value = nil); end
  def self.best_q_match(q_value_header, available_mimes); end
  def self.build_nested_query(value, prefix = nil); end
  def self.build_query(params); end
  def self.byte_ranges(env, size); end
  def self.clean_path_info(path_info); end
  def self.clock_time; end
  def self.default_query_parser; end
  def self.default_query_parser=(arg0); end
  def self.delete_cookie_header!(header, key, value = nil); end
  def self.escape(s); end
  def self.escape_html(string); end
  def self.escape_path(s); end
  def self.get_byte_ranges(http_range, size); end
  def self.key_space_limit; end
  def self.key_space_limit=(v); end
  def self.make_delete_cookie_header(header, key, value); end
  def self.multipart_part_limit; end
  def self.multipart_part_limit=(arg0); end
  def self.param_depth_limit; end
  def self.param_depth_limit=(v); end
  def self.parse_cookies(env); end
  def self.parse_cookies_header(header); end
  def self.parse_nested_query(qs, d = nil); end
  def self.parse_query(qs, d = nil, &unescaper); end
  def self.q_values(q_value_header); end
  def self.rfc2109(time); end
  def self.rfc2822(time); end
  def self.secure_compare(a, b); end
  def self.select_best_encoding(available_encodings, accept_encoding); end
  def self.set_cookie_header!(header, key, value); end
  def self.status_code(status); end
  def self.unescape(s, encoding = nil); end
  def self.unescape_path(s); end
  def self.valid_path?(path); end
  def set_cookie_header!(header, key, value); end
  def status_code(status); end
  def unescape(s, encoding = nil); end
  def unescape_path(s); end
  def valid_path?(path); end
end
class Rack::Utils::Context
  def app; end
  def call(env); end
  def context(env, app = nil); end
  def for; end
  def initialize(app_f, app_r); end
  def recontext(app); end
end
class Rack::Utils::HeaderHash < Hash
  def [](k); end
  def []=(k, v); end
  def delete(k); end
  def each; end
  def has_key?(k); end
  def include?(k); end
  def initialize(hash = nil); end
  def initialize_copy(other); end
  def key?(k); end
  def member?(k); end
  def merge!(other); end
  def merge(other); end
  def names; end
  def replace(other); end
  def self.new(hash = nil); end
  def to_hash; end
end
class Rack::MediaType
  def self.params(content_type); end
  def self.strip_doublequotes(str); end
  def self.type(content_type); end
end
class Rack::Request
  def delete_param(k); end
  def initialize(env); end
  def params; end
  def update_param(k, v); end
  include Rack::Request::Env
  include Rack::Request::Helpers
end
module Rack::Request::Env
  def add_header(key, v); end
  def delete_header(name); end
  def each_header(&block); end
  def env; end
  def fetch_header(name, &block); end
  def get_header(name); end
  def has_header?(name); end
  def initialize(env); end
  def initialize_copy(other); end
  def set_header(name, v); end
end
module Rack::Request::Helpers
  def GET; end
  def POST; end
  def [](key); end
  def []=(key, value); end
  def accept_encoding; end
  def accept_language; end
  def authority; end
  def base_url; end
  def body; end
  def content_charset; end
  def content_length; end
  def content_type; end
  def cookies; end
  def default_session; end
  def delete?; end
  def delete_param(k); end
  def form_data?; end
  def forwarded_scheme; end
  def fullpath; end
  def get?; end
  def head?; end
  def host; end
  def host_with_port; end
  def ip; end
  def link?; end
  def logger; end
  def media_type; end
  def media_type_params; end
  def multithread?; end
  def options?; end
  def params; end
  def parse_http_accept_header(header); end
  def parse_multipart; end
  def parse_query(qs, d = nil); end
  def parseable_data?; end
  def patch?; end
  def path; end
  def path_info; end
  def path_info=(s); end
  def port; end
  def post?; end
  def put?; end
  def query_parser; end
  def query_string; end
  def referer; end
  def referrer; end
  def reject_trusted_ip_addresses(ip_addresses); end
  def request_method; end
  def scheme; end
  def script_name; end
  def script_name=(s); end
  def session; end
  def session_options; end
  def split_ip_addresses(ip_addresses); end
  def ssl?; end
  def trace?; end
  def trusted_proxy?(ip); end
  def unlink?; end
  def update_param(k, v); end
  def url; end
  def user_agent; end
  def values_at(*keys); end
  def xhr?; end
end
module Rack::Mime
  def match?(value, matcher); end
  def mime_type(ext, fallback = nil); end
  def self.match?(value, matcher); end
  def self.mime_type(ext, fallback = nil); end
end
class Rack::BodyProxy
  def close; end
  def closed?; end
  def each; end
  def initialize(body, &block); end
  def method_missing(method_name, *args, &block); end
  def respond_to?(method_name, include_all = nil); end
end
class Rack::Head
  def call(env); end
  def initialize(app); end
end
class Rack::File
  def call(env); end
  def fail(status, body, headers = nil); end
  def filesize(path); end
  def get(env); end
  def initialize(root, headers = nil, default_mime = nil); end
  def make_body(request, path, range); end
  def mime_type(path, default_mime); end
  def response_body; end
  def root; end
  def serving(request, path); end
end
class Rack::File::Iterator
  def close; end
  def each; end
  def initialize(path, range); end
  def path; end
  def range; end
  def to_path; end
end
class Rack::Builder
  def call(env); end
  def generate_map(default_app, mapping); end
  def initialize(default_app = nil, &block); end
  def map(path, &block); end
  def run(app); end
  def self.app(default_app = nil, &block); end
  def self.new_from_string(builder_script, file = nil); end
  def self.parse_file(config, opts = nil); end
  def to_app; end
  def use(middleware, *args, &block); end
  def warmup(prc = nil, &block); end
end
class Rack::CommonLogger
  def call(env); end
  def extract_content_length(headers); end
  def initialize(app, logger = nil); end
  def log(env, status, header, began_at); end
end
class Rack::Response
  def [](key); end
  def []=(key, v); end
  def body; end
  def body=(arg0); end
  def chunked?; end
  def close; end
  def delete_header(key); end
  def each(&callback); end
  def empty?; end
  def finish(&block); end
  def get_header(key); end
  def has_header?(key); end
  def header; end
  def headers; end
  def initialize(body = nil, status = nil, header = nil); end
  def length; end
  def length=(arg0); end
  def redirect(target, status = nil); end
  def set_header(key, v); end
  def status; end
  def status=(arg0); end
  def to_a(&block); end
  def to_ary(&block); end
  def write(str); end
  include Rack::Response::Helpers
end
module Rack::Response::Helpers
  def accepted?; end
  def add_header(key, v); end
  def bad_request?; end
  def cache_control; end
  def cache_control=(v); end
  def client_error?; end
  def content_length; end
  def content_type; end
  def created?; end
  def delete_cookie(key, value = nil); end
  def etag; end
  def etag=(v); end
  def forbidden?; end
  def include?(header); end
  def informational?; end
  def invalid?; end
  def location; end
  def location=(location); end
  def media_type; end
  def media_type_params; end
  def method_not_allowed?; end
  def moved_permanently?; end
  def no_content?; end
  def not_found?; end
  def ok?; end
  def precondition_failed?; end
  def redirect?; end
  def redirection?; end
  def server_error?; end
  def set_cookie(key, value); end
  def set_cookie_header; end
  def set_cookie_header=(v); end
  def successful?; end
  def unauthorized?; end
  def unprocessable?; end
end
class Rack::Response::Raw
  def delete_header(key); end
  def get_header(key); end
  def has_header?(key); end
  def headers; end
  def initialize(status, headers); end
  def set_header(key, v); end
  def status; end
  def status=(arg0); end
  include Rack::Response::Helpers
end
module Rack::Session::Abstract
end
class Rack::Session::Abstract::SessionHash
  def [](key); end
  def []=(key, value); end
  def clear; end
  def delete(key); end
  def destroy; end
  def each(&block); end
  def empty?; end
  def exists?; end
  def fetch(key, default = nil, &block); end
  def has_key?(key); end
  def id; end
  def id=(arg0); end
  def include?(key); end
  def initialize(store, req); end
  def inspect; end
  def key?(key); end
  def keys; end
  def load!; end
  def load_for_read!; end
  def load_for_write!; end
  def loaded?; end
  def merge!(hash); end
  def options; end
  def replace(hash); end
  def self.find(req); end
  def self.set(req, session); end
  def self.set_options(req, options); end
  def store(key, value); end
  def stringify_keys(other); end
  def to_hash; end
  def update(hash); end
  def values; end
  include Enumerable
end
class Rack::Session::Abstract::Persisted
  def call(env); end
  def commit_session(req, res); end
  def commit_session?(req, session, options); end
  def context(env, app = nil); end
  def current_session_id(req); end
  def default_options; end
  def delete_session(req, sid, options); end
  def extract_session_id(request); end
  def find_session(env, sid); end
  def force_options?(options); end
  def forced_session_update?(session, options); end
  def generate_sid(secure = nil); end
  def initialize(app, options = nil); end
  def initialize_sid; end
  def key; end
  def load_session(req); end
  def loaded_session?(session); end
  def make_request(env); end
  def prepare_session(req); end
  def security_matches?(request, options); end
  def session_class; end
  def session_exists?(req); end
  def set_cookie(request, res, cookie); end
  def sid_secure; end
  def write_session(req, sid, session, options); end
end
class Rack::Session::Abstract::ID < Rack::Session::Abstract::Persisted
  def delete_session(req, sid, options); end
  def find_session(req, sid); end
  def self.inherited(klass); end
  def write_session(req, sid, session, options); end
end
class Rack::Session::Cookie < Rack::Session::Abstract::Persisted
  def coder; end
  def delete_session(req, session_id, options); end
  def digest_match?(data, digest); end
  def extract_session_id(request); end
  def find_session(req, sid); end
  def generate_hmac(data, secret); end
  def initialize(app, options = nil); end
  def persistent_session_id!(data, sid = nil); end
  def secure?(options); end
  def unpacked_cookie_data(request); end
  def write_session(req, session_id, session, options); end
end
class Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(str); end
end
class Rack::Session::Cookie::Base64::Marshal < Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(str); end
end
class Rack::Session::Cookie::Base64::JSON < Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(obj); end
end
class Rack::Session::Cookie::Base64::ZipJSON < Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(obj); end
end
class Rack::Session::Cookie::Identity
  def decode(str); end
  def encode(str); end
end
