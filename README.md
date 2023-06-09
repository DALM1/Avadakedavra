
# Avadakedavra

USE FOR PERSONAL PURPOSE ONLY ATTACK DEFENSE SCRIPT 

This script works similarly to the previous version, but it uses a wildcard () to loop through all files in the current directory, regardless of file type. The if statement checks if the file is a regular file (i.e. not a directory) using the -f flag.

When encrypting files, the script uses the --cipher-algo AES256 flag to specify the encryption algorithm. This is a stronger encryption than the default algorithm used by GPG.

When decrypting files, the script uses the ${file%.gpg} syntax to remove the .gpg extension from the decrypted file name. This ensures that the decrypted file has the original file name and type.

Note that this script assumes that all files in the directory are intended to be encrypted and decrypted. If you want to limit the script to specific file types, you can modify the wildcard to match the desired file extension (e.g. .txt,.pdf, etc.).
```
chmod +x for.sh
```
```
touch input_file
```

BASH
```
openssl enc -aes-256-cbc -d -salt -in /home/garuda/Avadakedavra/input_file.enc -out /home/garuda/Avadakedavra/input_file_decrypted -pass pass:my_secret_password
```

or run decry.sh just change the path
```
./decry.sh
```

FISH

```
for file in /home/garuda/Avadakedavra/*.enc
    openssl enc -aes-256-cbc -d -salt -in "$file" -out "$(basename "$file" .enc)" -pass pass:my_secret_password
end; echo " (              (       *  "
echo " )\ )    (      )\ )  (  \`       )"
echo "(()/(    )\    (()/(  )\))(   ( /("
echo " /(_))((((_)(   /(_))((_)()\  )\())"
echo "(_))_  )\ _ )\ (_))  (_()((_)((_)\ "
echo " |   \ (_)_\(_)| |   |  \/  | / (_)"
echo " | |) | / _ \  | |__ | |\/| | | |  "
echo " |___/ /_/ \_\ |____||_|  |_| |_| "
```


# HELLOCKER
Winlocker on python


HELLOCKER
Winlocker written in Python.
DO NOT USE FOR EVIL PURPOSES!

Functional:

1.Banner in full screen on top of all windows

2. Complete blocking of the keyboard (the password can be entered by clicking on the graphic buttons)

3. Creating a bat file to add to startup

4. Call bsod when password attempts expire

detections:  https://antiscan.me/scan/new/result?id=waxnPp6SXDLi




Using:

1.Open the lock.py file in your code editor

2. Find the variables at the very beginning:
password, lock_text and count.

3. In password, instead of "123" in quotes, enter the password from numbers.

4. In lock_text in quotes, enter the banner text

5. In count, enter the number of attempts to enter the password, without quotes.

6. Open a command line, go to the folder with the repository, write

```
pip install -r requriments.txt
```

then

```
pyinstaller -F lock.py
```

go to the new dist folder then find the lock.exe file there. This is your build.




<img align="center" width="900" height="400"  src="https://media2.giphy.com/media/o8GKBm1mRWMYOIQuJd/giphy.gif"/>&emsp;







<!-- [README11.md](https://github.com/DALM1/Avadakedavra/files/11198982/README11.md)  -->
<!-- README11.md -->

```ignore
```
                                      ` (              (       *  "
                                      )\ )    (      )\ )  (  \`       )
                                      (()/(    )\    (()/(  )\))(   ( /("
                                      /(_))((((_)(   /(_))((_)()\  )\())
                                      (_))_  )\ _ )\ (_))  (_()((_)((_)\ 
                                      |   \ (_)_\(_)| |   |  \/  | / (_)
                                      | |) | / _ \  | |__ | |\/| | | |  
                                      |___/ /_/ \_\ |____||_|  |_| |_| "
 ```
 ```





