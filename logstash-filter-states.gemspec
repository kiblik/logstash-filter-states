Gem::Specification.new do |s|
  s.name = 'logstash-filter-states'
  s.version         = '0.1'
  s.licenses = []
  s.summary = "This filter replaces long state name to state code."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Jozef Kovac", "Tomas Kubla"]
  s.email = 'jozef.kovac@telekom.sk'
#  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.5.0', '< 2.0.0'
  s.add_development_dependency 'logstash-devutils'
end
