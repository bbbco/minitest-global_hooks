minitest-global_hooks
=====================

Minitest Global Hooks for Setup/Teardown

## Description

Minitest Global Hooks plugin provides `global_setup` and `global_teardown`
hooks that you can use in your test helper to run a block of code to execute
immediately before all of your tests start and immediately after all of your 
tests have completed.

## Usage

Include in your Gemfile:

````
gem "minitest-global_hooks"
````

Require in your test helper:

````
require 'minitest/autorun'
require 'minitest-global_hooks'
````

Then, in your test helper, override the methods as needed:

````
def global_setup
  ## Code to run before start of all tests
end

def global_teardown
  ## Code to run after all tests have completed
end
````


