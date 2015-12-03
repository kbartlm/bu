
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1m' do
  puts "alive"
end

scheduler.cron '0 0 5 * *' do
 puts "email"
end

scheduler.cron '0 0 6 * *' do
 puts "sync"
end