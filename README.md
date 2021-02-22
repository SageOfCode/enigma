# Enigma
Mimics the enigma machine that Alan Turing was able to crack.

## How to Setup

> In your terminal, navigate to a folder to hold this project and run the following commands:
```
git clone git@github.com:SageOfCode/enigma.git
cd enigma
ruby lib/encrypt.rb message.txt altered.txt
```
> This will give you a message with a key and date.
```
ruby lib/decrypt.rb altered.txt original.txt {key} {date}
```
> You can name these files other names to encrypt and decrypt other messages.
> You can also try adding your own key and date to the encrypt line to use your own instead of the automatically generated ones.

## Information Flow 

> Use this directory to encrypt and decrypt files similar to the ones that Alan Turing cracked! This flowchart shows how information comes in through our runner files, goes our enigma hub class, passes through encrypting or decrypting classes, and uses the shiftable module to create the encrypted and decrypted files. 

<a href="https://ibb.co/8XFYcJS"><img src="https://i.ibb.co/cxzYLP7/Screen-Shot-2020-09-21-at-11-10-08-PM.png" alt="Screen-Shot-2020-09-21-at-11-10-08-PM" border="0"></a>

> Now you're ready to go and encrypt your own message! 

![alt text](https://media.giphy.com/media/1pA5l16w1t7qFR4ZAi/giphy.gif)
