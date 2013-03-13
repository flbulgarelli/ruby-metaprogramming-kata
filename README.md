ruby-metaprogramming-kata
=========================

Kata about metaprogamming in Ruby, consisting of implementing some design patterns

# GOF Patterns

## Singleton 

### Minimum requirements

Allow any class to understand a ```singletonize``` message, which adds to it a instance/get_instance method, which returns always the same instance of the class. 

### Example

```ruby
class Foo
  singletonize
  
  #... rest of definitions
end

Foo.instance == Foo.instance #should be true
```

### Optional requirements: 
  * remove, hide or rename the new method. 
  * implement trivial - nont thread safe - lazy loading
  * allow to parameterize the get_instance selector

## Decorator / Interceptor

## NullObject 

### Minimum requirements

Allow to instantiate a object that answers itself whenever a message is send to it

### Optional Requirements
  * Allow to inherit from a null object class

# Non GOF Patterns

## Pattern Matching

### Minimum Requirement

Implement pattern matching for regular expressions, binding regex groups

### Optional requirements

Generalize this to any object, not just regexps

## Multimethod

### Example

```ruby

class Foo
   multidef :bar, [Baz, FooBar] do |x, y| 
      1
   end
   
   multidef :bar, [FooBaz, Baz] do |x, y|
     2
   end
end

Foo.new.bar(Baz.new, FooBar.new) #should return 1
Foo.new.bar(FooBaz.new, Baz.new) #should return 2
Foo.new.bar(FooBaz.new, 2) #should fail, since there is no overloaded version of method bar for Number as second argument

```



## DeafMethod 

### Minimum requirement

Allow to define methods using a ```deaf``` keyword instead of ```def```. Such methods does not have any body, since their implementation is empty, and take no arguments.

### Example
     
```ruby

class Foo
  deaf :foo
end

```

should be equivalent to:

```ruby
class Foo
  def foo
  end
end
```
   
### Optional requirements

Allow deaf methods to take any number of arguments
  
