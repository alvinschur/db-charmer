# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{db-charmer}
  s.version = "1.7.0.pre5"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexey Kovyrin"]
  s.date = %q{2011-06-21}
  s.description = %q{ActiveRecord Connections Magic (slaves, multiple connections, etc)}
  s.email = %q{alexey@kovyrin.net}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "CHANGES",
    "LICENSE",
    "Makefile",
    "README.rdoc",
    "Rakefile",
    "db-charmer.gemspec",
    "init.rb",
    "lib/db_charmer.rb",
    "lib/db_charmer/abstract_adapter/log_formatting.rb",
    "lib/db_charmer/action_controller/force_slave_reads.rb",
    "lib/db_charmer/active_record/association_preload.rb",
    "lib/db_charmer/active_record/class_attributes.rb",
    "lib/db_charmer/active_record/connection_switching.rb",
    "lib/db_charmer/active_record/db_magic.rb",
    "lib/db_charmer/active_record/finder_overrides.rb",
    "lib/db_charmer/active_record/migration/multi_db_migrations.rb",
    "lib/db_charmer/active_record/multi_db_proxy.rb",
    "lib/db_charmer/active_record/named_scope/scope_proxy.rb",
    "lib/db_charmer/active_record/sharding.rb",
    "lib/db_charmer/connection_factory.rb",
    "lib/db_charmer/connection_proxy.rb",
    "lib/db_charmer/core_extensions.rb",
    "lib/db_charmer/force_slave_reads.rb",
    "lib/db_charmer/sharding.rb",
    "lib/db_charmer/sharding/connection.rb",
    "lib/db_charmer/sharding/method.rb",
    "lib/db_charmer/sharding/method/db_block_group_map.rb",
    "lib/db_charmer/sharding/method/db_block_map.rb",
    "lib/db_charmer/sharding/method/hash_map.rb",
    "lib/db_charmer/sharding/method/range.rb",
    "lib/db_charmer/sharding/stub_connection.rb",
    "lib/db_charmer/version.rb",
    "lib/tasks/databases.rake"
  ]
  s.homepage = %q{http://github.com/kovyrin/db-charmer}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{ActiveRecord Connections Magic}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.2"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 2.2"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 2.2"])
    else
      s.add_dependency(%q<activesupport>, ["~> 2.2"])
      s.add_dependency(%q<activerecord>, ["~> 2.2"])
      s.add_dependency(%q<actionpack>, ["~> 2.2"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 2.2"])
    s.add_dependency(%q<activerecord>, ["~> 2.2"])
    s.add_dependency(%q<actionpack>, ["~> 2.2"])
  end
end

