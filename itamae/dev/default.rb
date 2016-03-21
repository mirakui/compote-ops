package 'git'
package 'nodejs'
package 'htop'
package 'dstat'

package 'mariadb'
remote_file '/etc/mysql/my.cnf' do
  mode '644'
  owner 'root'
  group 'root'
end

user 'mirakui' do
  create_home true
end

directory '/home/mirakui/.ssh/' do
  mode '700'
  owner 'mirakui'
  group 'mirakui'
end

file '/home/mirakui/.ssh/authorized_keys' do
  mode '400'
  owner 'mirakui'
  group 'mirakui'
  content "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCr8gsSCgDFgSRaxlw3uwmoUEQS4gCLGXiRGVl4DxCVuF09V9j6QH6nQn7m8sNl+MMPw+auVfdYA19pcPkFJ24aIvEFygmbjbdT0fIkm4iTBJ1or6v8fUYejUAiVuj/JWZb8WeiDAXunskhpP5MY6T9Z+CHS2ZloxXk7tjCuhxNe/zkzF/JiU9NPmYPGUnPSd9TCRUECVkOG4hET41ipK7mifeQolX+p50YJfqN9DRw4/WXLjpYlO9yRGr408Yk+C3KrmM3U9RCmKcb4pNMtayGminTyIxGqQ6zMAYDEgGrk8yQsHg6RNFh08oi1b+jZMdNcUgGvGOsn+OrWWcH4oaV\n"
end

remote_file '/home/mirakui/.bashrc' do
  mode '644'
  owner 'mirakui'
  group 'mirakui'
end

remote_file '/etc/sudoers' do
  mode '440'
  owner 'root'
  group 'root'
end

