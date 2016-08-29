lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jwt/base/version'

Gem::Specification.new do |spec|
  spec.name          = 'jwt-base'
  spec.version       = JWT::Base::VERSION
  spec.authors       = ['Richard E. Dodson']
  spec.email         = ['richard.elias.dodson@gmail.com']

  spec.summary       = 'Ruby JSON Web Token (JWT) Wrapper'
  spec.homepage      = 'https://github.com/rdodson41/ruby-jwt-base'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split(/\x0/).reject { |file| file =~ /^(test|spec|features)\// }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |file| File.basename(file) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
