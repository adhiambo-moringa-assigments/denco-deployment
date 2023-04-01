# You can also remove all the silencers if you're trying to debug a problem that might stem from framework code
# by setting BACKTRACE=1 before calling your invocation, like "BACKTRACE=1 ./bin/rails runner 'MyClass.perform'".
Rails.backtrace_cleaner.remove_silencers! if ENV["BACKTRACE"]