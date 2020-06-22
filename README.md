# Sidekiq example

## running sidekiq on single worker

- bundle exec sidekiq -r ./simple_worker.rb

## running interactive ruby to call worker

- bundle exec irb -r ./runner.rb

$ time ruby runner.rb                                                                                                      06/22/20 -  9:09 

________________________________________________________
Executed in    3,12 secs   fish           external 
   usr time    2,06 secs  303,00 micros    2,06 secs 
   sys time    0,79 secs  137,00 micros    0,79 secs 
