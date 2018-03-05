
file '/etc/motd' do
      content ' welcome to my server'
end

execute 'command-test' do
       
  command 'echo "blah" >> /etc/motd'
   only_if 'test -r /etc/motd'
end
execute 'command-test' do

   command 'echo "hello world" >> /etc/motd'
   not_if 'test -r /etc/motd'
end
