# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rom/all/rom.rbi
#
# rom-3.3.3
module ROM
  def self.container(*args, &block); end
  extend ROM::Global
  include Dry::Core::Constants
end
class ROM::AdapterLoadError < StandardError
end
class ROM::AdapterNotPresentError < StandardError
  def initialize(adapter, component); end
end
class ROM::EnvAlreadyFinalizedError < StandardError
end
class ROM::RelationAlreadyDefinedError < StandardError
end
class ROM::NoRelationError < StandardError
end
class ROM::CommandError < StandardError
end
class ROM::KeyMissing < ROM::CommandError
end
class ROM::TupleCountMismatchError < ROM::CommandError
end
class ROM::MapperMissingError < StandardError
end
class ROM::UnknownPluginError < StandardError
end
class ROM::UnsupportedRelationError < StandardError
end
class ROM::MissingAdapterIdentifierError < StandardError
end
class ROM::MissingSchemaClassError < StandardError
  def initialize(klass); end
end
class ROM::DuplicateConfigurationError < StandardError
end
class ROM::DuplicateContainerError < StandardError
end
class ROM::InvalidOptionValueError < StandardError
end
class ROM::InvalidOptionKeyError < StandardError
end
class ROM::PluginBase
  def apply_to(_base); end
  def initialize(mod, options); end
  def mod; end
  def options; end
  def relation?; end
  def type; end
end
class ROM::ConfigurationPlugin < ROM::PluginBase
  def apply_to(configuration, options = nil); end
end
module ROM::Configurable
  def config; end
  def configure; end
end
class ROM::Configurable::Config
  def [](name); end
  def dup; end
  def dup_settings(settings); end
  def freeze; end
  def initialize(settings = nil); end
  def key?(name); end
  def method_missing(meth, *args, &_block); end
  def respond_to_missing?(_name, _include_private = nil); end
  def settings; end
  def to_hash; end
  def writer?(name); end
end
class ROM::Plugin < ROM::PluginBase
  def apply_to(klass); end
  include ROM::Configurable
end
module ROM::Initializer
  def self.extended(base); end
end
module ROM::Initializer::InstanceMethods
  def options; end
end
module ROM::AutoCurry
  def auto_curried_methods; end
  def auto_curry(name, &block); end
  def auto_curry_busy?; end
  def auto_curry_guard; end
  def self.extended(klass); end
end
module ROM::Types
  def self.Constructor(primitive, &block); end
  def self.Definition(primitive); end
  def self.included(other); end
  include Anonymous_Module_54
end
module Anonymous_Module_54
end
module ROM::Types::Methods
  def ForeignKey(relation, type = nil); end
end
module ROM::Pipeline
  def as(*names); end
  def map_with(*names); end
  include ROM::Pipeline::Operator
end
module ROM::Pipeline::Operator
  def >>(other); end
  def composite_class; end
end
module ROM::Pipeline::Proxy
  def decorate?(response); end
  def method_missing(name, *args, &block); end
  def respond_to_missing?(name, include_private = nil); end
end
class ROM::Pipeline::Composite
  def >>(other); end
  def initialize(left, right); end
  def left; end
  def right; end
  include Anonymous_Dry_Equalizer_55
  include Dry::Equalizer::Methods
  include ROM::Pipeline::Proxy
end
module Anonymous_Dry_Equalizer_55
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Relation
  def [](name); end
  def associations; end
  def call; end
  def combine(*args, &block); end
  def composite_class; end
  def curried?; end
  def each(&block); end
  def graph(*others); end
  def graph?; end
  def new(dataset, new_opts = nil); end
  def schema?; end
  def schemas; end
  def to_a; end
  def with(new_options); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_58
  extend Anonymous_Module_57
  extend Anonymous_Module_59
  extend Dry::Core::ClassAttributes
  extend Dry::Core::Deprecations::Interface
  extend ROM::Initializer
  extend ROM::Relation::ClassInterface
  include Anonymous_Dry_Equalizer_60
  include Anonymous_Module_56
  include Dry::Equalizer::Methods
  include Dry::Initializer::InstanceDSL
  include ROM::Initializer::InstanceMethods
  include ROM::Pipeline
  include ROM::Relation::Materializable
end
class ROM::Relation::Name
  def dataset; end
  def initialize(relation, dataset = nil); end
  def inspect; end
  def relation; end
  def self.[](*args); end
  def self.cache; end
  def to_s; end
  def to_sym; end
  def with(relation); end
  include Anonymous_Dry_Equalizer_61
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_61
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module ROM::Relation::Materializable
  def call(*arg0); end
  def each(&block); end
  def first; end
  def one!; end
  def one; end
  def to_a; end
  def to_ary; end
end
class ROM::Relation::Curried
  def [](*args); end
  def __new__(relation, new_opts = nil); end
  def call(*args); end
  def composite_class; end
  def curried?; end
  def method_missing(meth, *args, &block); end
  def name; end
  def respond_to_missing?(name, include_private = nil); end
  def to_a; end
  def to_ary; end
  extend Anonymous_Module_63
  extend ROM::Initializer
  include Anonymous_Module_62
  include Dry::Initializer::InstanceDSL
  include ROM::Initializer::InstanceMethods
  include ROM::Pipeline
  include ROM::Relation::Materializable
end
module Anonymous_Module_63
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_62
  def __coercers__; end
  def __defaults__; end
  def __initialize__(relation, **__options__); end
  def arity; end
  def curry_args; end
  def name; end
  def relation; end
end
class ROM::Relation::ViewDSL
  def call; end
  def initialize(name, schema, &block); end
  def name; end
  def new_schema; end
  def relation(&block); end
  def relation_block; end
  def schema(&block); end
end
class ROM::Schema
  def +(other); end
  def [](key, src = nil); end
  def append(*new_attributes); end
  def associations; end
  def attr_class; end
  def attributes; end
  def call(relation); end
  def count_index; end
  def each(&block); end
  def empty?; end
  def exclude(*names); end
  def finalize!(gateway: nil, relations: nil, &block); end
  def foreign_key(relation); end
  def inferrer; end
  def initialize(name, options); end
  def key?(name); end
  def merge(other); end
  def name; end
  def name_index; end
  def new(attributes); end
  def options; end
  def prefix(prefix); end
  def primary_key; end
  def project(*names); end
  def relations; end
  def rename(mapping); end
  def self.attributes(attributes, attr_class); end
  def self.define(name, attr_class: nil, attributes: nil, associations: nil, inferrer: nil); end
  def source_index; end
  def to_ary; end
  def to_h; end
  def to_input_hash; end
  def to_output_hash; end
  def uniq(&block); end
  def with(new_options); end
  def wrap(prefix = nil); end
  include Anonymous_Dry_Equalizer_64
  include Anonymous_Dry_Equalizer_65
  include Dry::Equalizer::Methods
  include Dry::Equalizer::Methods
  include Enumerable
  include Enumerable
end
class ROM::Schema::Attribute
  def [](input); end
  def alias; end
  def aliased(name); end
  def aliased?; end
  def as(name); end
  def eql?(other); end
  def foreign_key?; end
  def inspect; end
  def key; end
  def meta(opts = nil); end
  def method_missing(meth, *args, &block); end
  def name; end
  def prefixed(prefix = nil); end
  def pretty_inspect; end
  def primary_key?; end
  def read?; end
  def respond_to_missing?(name, include_private = nil); end
  def source; end
  def target; end
  def to_read_type; end
  def wrapped(name = nil); end
  def wrapped?; end
  extend Anonymous_Module_68
  extend ROM::Initializer
  include Anonymous_Dry_Equalizer_66
  include Anonymous_Module_67
  include Dry::Equalizer::Methods
  include Dry::Initializer::InstanceDSL
  include ROM::Initializer::InstanceMethods
end
module Anonymous_Dry_Equalizer_66
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_68
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_67
  def __coercers__; end
  def __defaults__; end
  def __initialize__(type, __options__ = nil); end
  def type; end
end
class ROM::Schema::AttributeAlreadyDefinedError < StandardError
end
module Anonymous_Dry_Equalizer_64
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Schema::DSL < BasicObject
  def attribute(name, type, options = nil); end
  def attributes; end
  def call; end
  def inferrer; end
  def initialize(relation, schema_class: nil, inferrer: nil, &block); end
  def primary_key(*names); end
  def relation; end
  def schema_class; end
end
class ROM::Registry
  def [](key); end
  def each(&block); end
  def elements; end
  def fetch(key); end
  def initialize(elements = nil, name = nil); end
  def key?(name); end
  def method_missing(name, *arg1); end
  def name; end
  def respond_to_missing?(name, include_private = nil); end
  include Anonymous_Dry_Equalizer_69
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_69
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Registry::ElementNotFoundError < KeyError
  def initialize(key, name); end
end
class ROM::AssociationSet < ROM::Registry
  def [](name); end
  def singularize(key); end
  def try(name, &block); end
end
class ROM::Schema::MissingAttributesError < StandardError
  def initialize(name, attributes); end
end
module Anonymous_Dry_Equalizer_65
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module ROM::Relation::ClassInterface
  def [](adapter); end
  def curried; end
  def default_name; end
  def default_schema(relation); end
  def finalize(registry, relation); end
  def forward(*methods); end
  def inherited(klass); end
  def schema(dataset = nil, as: nil, infer: nil, &block); end
  def schemas; end
  def use(plugin, _options = nil); end
  def view(*args, &block); end
  def view_methods; end
  extend Anonymous_Dry_Core_Deprecations_Tagged_70
  extend Dry::Core::Deprecations::Interface
  include Dry::Core::Constants
end
module Anonymous_Dry_Core_Deprecations_Tagged_70
end
class ROM::MapperRegistry < ROM::Registry
  def [](name); end
  def []=(name, mapper); end
  def by_path(path); end
  def key?(name); end
  def paths(path); end
end
class ROM::Relation::Loaded
  def collection; end
  def each(&block); end
  def empty?; end
  def initialize(source, collection = nil); end
  def new(collection); end
  def one!; end
  def one; end
  def pluck(key); end
  def primary_keys; end
  def source; end
  def to_ary(*arg0); end
  include Enumerable
end
class ROM::Relation::Composite < ROM::Pipeline::Composite
  def [](*args); end
  def call(*args); end
  def decorate?(response); end
  include ROM::Relation::Materializable
end
class ROM::Relation::Graph
  def call(*args); end
  def combine(*args, &block); end
  def composite_class; end
  def decorate?(other); end
  def graph(*others); end
  def graph?; end
  def initialize(root, nodes); end
  def left; end
  def nodes; end
  def right; end
  def root; end
  def self.build(root, nodes); end
  def with_nodes(nodes); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_71
  extend Dry::Core::Deprecations::Interface
  include ROM::Pipeline
  include ROM::Pipeline::Proxy
  include ROM::Relation::Materializable
end
module Anonymous_Dry_Core_Deprecations_Tagged_71
end
module Anonymous_Module_57
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_56
  def __coercers__; end
  def __defaults__; end
  def __initialize__(dataset, **__options__); end
  def dataset; end
  def input_schema; end
  def mappers; end
  def output_schema; end
  def schema; end
end
module Anonymous_Dry_Core_Deprecations_Tagged_58
end
module Anonymous_Module_59
  def inherited(klass); end
  def schema_class(value = nil); end
  def schema_dsl(value = nil); end
  def schema_inferrer(value = nil); end
end
module Anonymous_Dry_Equalizer_60
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Command
  def [](*args, &block); end
  def after(*hooks); end
  def after_hooks; end
  def apply_hooks(hooks, tuples, *args); end
  def before(*hooks); end
  def before_hooks; end
  def call(*args, &block); end
  def combine(*others); end
  def composite_class; end
  def curried?; end
  def curry(*args); end
  def execute(*arg0); end
  def gateway; end
  def graph?; end
  def hooks?; end
  def lazy?; end
  def many?; end
  def name; end
  def new(new_relation); end
  def one?; end
  def with(*args); end
  def with_opts(new_opts); end
  def wrap_dataset(dataset); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_75
  extend Anonymous_Module_73
  extend Anonymous_Module_76
  extend Anonymous_Module_77
  extend Anonymous_Module_78
  extend Anonymous_Module_79
  extend Anonymous_Module_80
  extend Anonymous_Module_81
  extend Dry::Core::ClassAttributes
  extend Dry::Core::Deprecations::Interface
  extend ROM::Command::ClassInterface
  extend ROM::Initializer
  include Anonymous_Dry_Equalizer_74
  include Anonymous_Module_72
  include Dry::Equalizer::Methods
  include Dry::Initializer::InstanceDSL
  include ROM::Commands
  include ROM::Initializer::InstanceMethods
  include ROM::Pipeline::Operator
end
module ROM::Command::ClassInterface
  def [](adapter); end
  def adapter_namespace(adapter); end
  def after(*hooks); end
  def before(*hooks); end
  def build(relation, options = nil); end
  def create_class(name, type, &block); end
  def default_name; end
  def extend_for_relation(relation); end
  def inherited(klass); end
  def options; end
  def relation_methods_mod(relation_class); end
  def self.extended(klass); end
  def set_hooks(type, hooks); end
  def use(plugin, _options = nil); end
end
module ROM::Commands
end
class ROM::Commands::Composite < ROM::Pipeline::Composite
  def [](*args); end
  def call(*args); end
  def decorate?(response); end
  def graph?; end
  def result; end
end
class ROM::Commands::Graph
  def call(*args); end
  def composite_class; end
  def graph?; end
  def left; end
  def right; end
  def with(new_options); end
  extend Anonymous_Module_83
  extend ROM::Commands::Graph::ClassInterface
  extend ROM::Initializer
  include Anonymous_Dry_Equalizer_84
  include Anonymous_Module_82
  include Dry::Equalizer::Methods
  include Dry::Initializer::InstanceDSL
  include ROM::Initializer::InstanceMethods
  include ROM::Pipeline
  include ROM::Pipeline::Proxy
end
class ROM::Commands::Graph::InputEvaluator
  def call(*args); end
  def exclude_proc; end
  def excluded_keys; end
  def initialize(tuple_path, excluded_keys); end
  def self.build(tuple_path, nodes); end
  def self.exclude_proc(excluded_keys); end
  def self.extract_excluded_keys(nodes); end
  def tuple_path; end
  include Anonymous_Dry_Equalizer_85
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_85
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module ROM::Commands::Graph::ClassInterface
  def build(registry, options, path = nil); end
  def build_command(registry, spec, other, path); end
end
module Anonymous_Module_83
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_82
  def __coercers__; end
  def __defaults__; end
  def __initialize__(root, nodes, **__options__); end
  def mappers; end
  def name; end
  def nodes; end
  def root; end
end
module Anonymous_Dry_Equalizer_84
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Commands::Lazy
  def >>(other); end
  def call(*args); end
  def combine(*others); end
  def command; end
  def command_proc; end
  def evaluator; end
  def initialize(command, evaluator, command_proc = nil); end
  def lazy?; end
  def method_missing(name, *args, &block); end
  def respond_to_missing?(name, include_private = nil); end
  def self.[](command); end
  def unwrap; end
  include Anonymous_Dry_Equalizer_86
  include Dry::Equalizer::Methods
end
class ROM::Commands::Lazy::Create < ROM::Commands::Lazy
  def call(*args); end
end
class ROM::Commands::Lazy::Update < ROM::Commands::Lazy
  def call(*args); end
end
class ROM::Commands::Lazy::Delete < ROM::Commands::Lazy
  def call(*args); end
end
module Anonymous_Dry_Equalizer_86
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_73
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_72
  def __coercers__; end
  def __defaults__; end
  def __initialize__(relation, **__options__); end
  def curry_args; end
  def input; end
  def relation; end
  def result; end
  def source; end
  def type; end
end
module Anonymous_Dry_Equalizer_74
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Dry_Core_Deprecations_Tagged_75
end
module Anonymous_Module_76
  def adapter(value = nil); end
  def inherited(klass); end
end
module Anonymous_Module_77
  def inherited(klass); end
  def relation(value = nil); end
end
module Anonymous_Module_78
  def inherited(klass); end
  def result(value = nil); end
end
module Anonymous_Module_79
  def inherited(klass); end
  def input(value = nil); end
end
module Anonymous_Module_80
  def inherited(klass); end
  def register_as(value = nil); end
end
module Anonymous_Module_81
  def inherited(klass); end
  def restrictable(value = nil); end
end
module Anonymous_Module_87
  def __coercers__; end
  def __defaults__; end
  def __initialize__(relation, **__options__); end
  def curry_args; end
  def input; end
  def relation; end
  def result; end
  def source; end
  def type; end
end
class ROM::Commands::Create < ROM::Command
  include Anonymous_Module_87
end
module Anonymous_Module_88
  def __coercers__; end
  def __defaults__; end
  def __initialize__(relation, **__options__); end
  def curry_args; end
  def input; end
  def relation; end
  def result; end
  def source; end
  def type; end
end
class ROM::Commands::Update < ROM::Command
  include Anonymous_Module_88
end
module Anonymous_Module_89
  def __coercers__; end
  def __defaults__; end
  def __initialize__(relation, **__options__); end
  def curry_args; end
  def input; end
  def relation; end
  def result; end
  def source; end
  def type; end
end
class ROM::Commands::Delete < ROM::Command
  include Anonymous_Module_89
end
class ROM::PluginRegistry
  def commands; end
  def configuration; end
  def initialize; end
  def mappers; end
  def plugins_for(type, adapter); end
  def register(name, mod, options = nil); end
  def relations; end
end
class ROM::PluginRegistryBase < ROM::Registry
  def [](name); end
end
class ROM::ConfigurationPluginRegistry < ROM::PluginRegistryBase
  def fetch(name); end
  def register(name, mod, options); end
end
class ROM::AdapterPluginRegistry < ROM::PluginRegistryBase
  def register(name, mod, options); end
end
class ROM::InternalPluginRegistry
  def [](name, adapter_name = nil); end
  def adapter(name); end
  def fetch(name, adapter_name = nil); end
  def initialize; end
  def registries; end
end
module ROM::Global
  def adapters; end
  def plugin_registry; end
  def plugins(*args, &block); end
  def register_adapter(identifier, adapter); end
  def self.extended(rom); end
end
class ROM::Global::PluginDSL
  def adapter(type, &block); end
  def defaults; end
  def initialize(registry, defaults = nil, &block); end
  def register(name, mod, options = nil); end
  def registry; end
end
class ROM::Transaction
  def rollback!; end
  def run(opts = nil); end
end
class ROM::Transaction::Rollback < StandardError
end
class ROM::Gateway
  def adapter; end
  def connection; end
  def disconnect; end
  def extend_command_class(klass, _dataset); end
  def logger; end
  def schema; end
  def self.class_from_symbol(type); end
  def self.setup(gateway_or_scheme, *args); end
  def transaction(opts = nil, &block); end
  def transaction_runner(_); end
  def use_logger(*arg0); end
  extend Anonymous_Module_90
  extend Dry::Core::ClassAttributes
end
module Anonymous_Module_90
  def adapter(value = nil); end
  def inherited(klass); end
end
class ROM::Environment
  def configure_gateways(*args); end
  def gateways; end
  def gateways_map; end
  def initialize(*args); end
  def load_config(config, hash); end
  def normalize_gateway_args(*args); end
  def normalize_gateways(gateways_config); end
  include ROM::Configurable
end
module ROM::AutoRegistrationStrategies
end
class ROM::AutoRegistrationStrategies::Base
  extend Anonymous_Module_92
  extend ROM::Initializer
  include Anonymous_Module_91
  include Dry::Initializer::InstanceDSL
  include ROM::Initializer::InstanceMethods
end
module Anonymous_Module_92
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_91
  def __coercers__; end
  def __defaults__; end
  def __initialize__(__options__ = nil); end
  def file; end
end
module Anonymous_Module_93
  def __coercers__; end
  def __defaults__; end
  def __initialize__(__options__ = nil); end
  def directory; end
  def entity; end
  def file; end
end
class ROM::AutoRegistrationStrategies::NoNamespace < ROM::AutoRegistrationStrategies::Base
  def call; end
  include Anonymous_Module_93
end
module Anonymous_Module_94
  def __coercers__; end
  def __defaults__; end
  def __initialize__(__options__ = nil); end
  def directory; end
  def file; end
end
class ROM::AutoRegistrationStrategies::WithNamespace < ROM::AutoRegistrationStrategies::Base
  def call; end
  include Anonymous_Module_94
end
module Anonymous_Module_95
  def __coercers__; end
  def __defaults__; end
  def __initialize__(__options__ = nil); end
  def directory; end
  def file; end
  def namespace; end
end
class ROM::AutoRegistrationStrategies::CustomNamespace < ROM::AutoRegistrationStrategies::Base
  def call; end
  def file_path; end
  def filename; end
  def name_error_message(attempted); end
  def ns_const; end
  def path_arr; end
  include Anonymous_Module_95
end
class ROM::AutoRegistration
  def commands; end
  def load_entities(entity); end
  def mappers; end
  def relations; end
  extend Anonymous_Module_97
  extend ROM::Initializer
  include Anonymous_Module_96
  include Dry::Initializer::InstanceDSL
  include ROM::Initializer::InstanceMethods
end
module Anonymous_Module_97
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_96
  def __coercers__; end
  def __defaults__; end
  def __initialize__(directory, **__options__); end
  def component_dirs; end
  def directory; end
  def globs; end
  def namespace; end
end
class ROM::Setup
  def auto_registration(directory, options = nil); end
  def command_classes; end
  def initialize; end
  def mapper_classes; end
  def plugins; end
  def register_command(*klasses); end
  def register_mapper(*klasses); end
  def register_plugin(plugin); end
  def register_relation(*klasses); end
  def relation_classes; end
end
module ROM::ConfigurationDSL
  def commands(name, &block); end
  def mappers(&block); end
  def plugin(adapter, spec, &block); end
  def plugin_registry; end
  def relation(name, options = nil, &block); end
end
class ROM::ConfigurationDSL::Relation
  def self.build_class(name, options = nil); end
end
class ROM::ConfigurationDSL::Mapper
  def self.build_class(name, mapper_registry, options = nil, &block); end
end
class ROM::ConfigurationDSL::MapperDSL
  def define(name, options = nil, &block); end
  def initialize(registry, mapper_classes, block); end
  def mapper_classes; end
  def register(relation, mappers); end
  def registry; end
end
class ROM::ConfigurationDSL::Command
  def self.build_class(name, relation, options = nil, &block); end
  def self.generate_class_name(adapter, command_type, relation); end
end
class ROM::ConfigurationDSL::CommandDSL
  def adapter; end
  def command_classes; end
  def define(name, options = nil, &block); end
  def initialize(relation, adapter = nil, &block); end
  def relation; end
end
class ROM::Configuration
  def [](name); end
  def adapter_for_gateway(gateway); end
  def auto_registration(*args, &block); end
  def command_classes(*args, &block); end
  def config(*args, &block); end
  def configure(*args, &block); end
  def default_adapter; end
  def default_gateway; end
  def environment; end
  def gateways(*args, &block); end
  def gateways_map(*args, &block); end
  def initialize(*args, &block); end
  def mapper_classes(*args, &block); end
  def method_missing(name, *arg1); end
  def register_command(*args, &block); end
  def register_mapper(*args, &block); end
  def register_plugin(*args, &block); end
  def register_relation(*args, &block); end
  def relation_classes(*args, &block); end
  def respond_to?(name, include_all = nil); end
  def setup; end
  def use(plugin, options = nil); end
  extend Forwardable
  include ROM::ConfigurationDSL
end
class ROM::Configuration::NoDefaultAdapterError < StandardError
end
class ROM::Commands::Graph::Builder
  def initialize(container); end
  def method_missing(*args, &block); end
end
class ROM::Commands::Graph::Builder::UnspecifiedRelationError < StandardError
end
class ROM::Commands::Graph::Builder::DoubleRestrictionError < StandardError
end
class ROM::Commands::Graph::Builder::Node
  def command(name, relation = nil, key = nil, proc = nil, &block); end
  def initialize; end
  def method_missing(*args, &block); end
  def restrict(name, &block); end
  def to_ast; end
end
class ROM::Commands::Graph::Builder::Node::Restriction < Struct
  def proc; end
  def proc=(_); end
  def relation; end
  def relation=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class ROM::Commands::Graph::Builder::Node::Command < Struct
  def key; end
  def key=(_); end
  def name; end
  def name=(_); end
  def proc; end
  def proc=(_); end
  def relation; end
  def relation=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class ROM::Commands::Graph::Builder::CommandNode < ROM::Commands::Graph::Builder::Node
  def command(*args, &block); end
  def each(&block); end
  def initialize(command = nil); end
  def to_ast; end
end
class ROM::Commands::Graph::Builder::RestrictionNode < ROM::Commands::Graph::Builder::Node
  def command(name, options = nil, &block); end
  def initialize(restriction, parent_node = nil); end
  def restrict(*args, &block); end
  def restriction; end
end
class ROM::Commands::Graph::Builder::RootNode < ROM::Commands::Graph::Builder::Node
  def command(*args, &block); end
  def to_ast; end
end
class ROM::Commands::Graph::Builder::BuilderNode < ROM::Commands::Graph::Builder::RootNode
  def command(*args, &block); end
  def initialize(container); end
end
class ROM::Container
  def command(options = nil); end
  def commands; end
  def disconnect; end
  def gateways; end
  def initialize(gateways, relations, mappers, commands); end
  def mappers; end
  def relation(name, &block); end
  def relations; end
  extend Anonymous_Dry_Core_Deprecations_Tagged_98
  extend Dry::Core::Deprecations::Interface
  include Anonymous_Dry_Equalizer_99
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Core_Deprecations_Tagged_98
end
module Anonymous_Dry_Equalizer_99
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class ROM::Commands::Result
  def error; end
  def failure?; end
  def success?; end
  def to_a; end
  def to_ary; end
  def value; end
end
class ROM::Commands::Result::Success < ROM::Commands::Result
  def >(other); end
  def initialize(value); end
  def to_ary; end
end
class ROM::Commands::Result::Failure < ROM::Commands::Result
  def >(_other); end
  def initialize(error); end
  def to_ary; end
end
class ROM::CommandRegistry
  def [](name); end
  def as(mapper_name); end
  def fetch_command(name); end
  def method_missing(name, *arg1); end
  def respond_to_missing?(name, include_private = nil); end
  def try(&block); end
  def with(new_options); end
  extend Anonymous_Dry_Core_Deprecations_Tagged_102
  extend Anonymous_Module_101
  extend Dry::Core::Deprecations::Interface
  extend ROM::Initializer
  include Anonymous_Module_100
  include Dry::Initializer::InstanceDSL
  include ROM::Commands
  include ROM::Initializer::InstanceMethods
end
module Anonymous_Module_101
  extend Dry::Initializer::ClassDSL
  include Dry::Initializer
end
module Anonymous_Module_100
  def __coercers__; end
  def __defaults__; end
  def __initialize__(relation_name, registry, **__options__); end
  def mapper; end
  def mappers; end
  def registry; end
  def relation_name; end
end
module Anonymous_Dry_Core_Deprecations_Tagged_102
end
class ROM::CommandRegistry::CommandNotFoundError < KeyError
end
class ROM::Finalize
  def adapter_for(gateway); end
  def command_classes; end
  def config; end
  def datasets; end
  def gateway_map; end
  def gateways; end
  def infer_relation?(gateway, name); end
  def infer_relations; end
  def inferrable_relations(gateway); end
  def initialize(options); end
  def initialize_datasets; end
  def load_commands(relations); end
  def load_mappers; end
  def load_relations(mappers); end
  def mapper_classes; end
  def mapper_objects; end
  def plugins; end
  def relation_classes; end
  def repo_adapter; end
  def run!; end
end
class ROM::Finalize::FinalizeCommands
  def initialize(relations, gateways, command_classes); end
  def run!; end
end
class ROM::RelationRegistry < ROM::Registry
  def initialize(elements = nil, name = nil); end
end
class ROM::Finalize::FinalizeRelations
  def build_relation(klass, registry); end
  def initialize(gateways, relation_classes, mappers: nil, plugins: nil); end
  def plugin_options; end
  def run!; end
end
class ROM::Finalize::FinalizeMappers
  def initialize(mapper_classes, mapper_objects); end
  def run!; end
end
class ROM::CreateContainer
  def container; end
  def finalize(environment, setup); end
  def initialize(environment, setup); end
end
class ROM::InlineCreateContainer < ROM::CreateContainer
  def initialize(*args, &block); end
end
module ROM::ConfigurationPlugins
end
module ROM::ConfigurationPlugins::ConfigurationDSL
  def self.apply(configuration, options = nil); end
end
module ROM::Plugins
end
module ROM::Plugins::Relation
end
module ROM::Plugins::Relation::RegistryReader
  def method_missing(name, *arg1); end
  def respond_to_missing?(name, _include_private = nil); end
  def self.included(klass); end
end
module ROM::Plugins::Relation::Instrumentation
  def instrument(&block); end
  def notification_payload(relation); end
  def self.included(klass); end
  extend Anonymous_Module_103
  extend Dry::Core::ClassAttributes
end
module Anonymous_Module_103
  def inherited(klass); end
  def mixin(value = nil); end
end
module ROM::Plugins::Relation::Instrumentation::ClassInterface
  def instrument(*methods); end
end
module ROM::Plugins::Command
end
module ROM::Plugins::Command::Schema
  def self.included(klass); end
end
module ROM::Plugins::Command::Schema::ClassInterface
  def build(relation, options = nil); end
end
module ROM::Plugins::Relation::KeyInference
  def base_name; end
  def foreign_key(other = nil); end
end
