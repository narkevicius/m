# Vatcher

## Description

Super simple variable watcher for rails apps. Just type:

```ruby
vatch! interesting_variable_to_watch, another_one, and_another, and_so_on
```

anywhere in your app and you will get entry with timestamp and location of your call in `log/vatcher.log` made for you.

## Instalation

Add it to `Gemfile` of you Rails app:

```ruby
group :development, :test do
  gem 'vatcher'
end
```

and run `bundle`.
