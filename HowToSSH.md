# How to make SSH keys for github

## 1. Check SSH keys
"~/.ssh" is a folder for SSH keys.
You can check your ssh keys with this command
~~~
$ ls -al ~/.ssh
~~~

## 2. Making New SSH keys
~~~
$ ssh-keygen -t rsa -C "email@example.com(github email)"
~~~
When you've done it will ask you to enter file name and password.
~~~
Enter file in which to save the key:
~~~
If you just press enter, then this accepts the default file location.
~~~
Enter passphrase (empty for no passphrase):

Enter Again:
~~~

## 3. Adding SSH keys to ssh-agent
~~~
# start the ssh-agent in the background
$ eval "$(ssh-agent -s)"
~~~
And then add SSH key to the ssh-agent
~~~
$ ssh-add ~/.ssh/id_rsa(it is a SSH key file name)
~~~

## 4. Adding a new SSH key to GitHub
This is for linux(redhat, fedora). If you are using another platform, then goto [reference](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/ "help.github").

Copy your key to clipboard
~~~
# install xclip first
$ sudo dnf install xclip
$ xclip < ~/.ssh/id_rsa.pub(key filename)
# Copies the contents of the id_rsa.pub file to your clipboard
~~~

Go to your GitHub account profile settings.
~~~
Settings -> SSH keys -> New SSH key
~~~
In "Title" Field add a description of key. And paste your key into the "key" field.

Click Add SSH key. And Confirm.

Done.

Reference :
1. https://help.github.com/articles/checking-for-existing-ssh-keys/

2. https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

3. https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
