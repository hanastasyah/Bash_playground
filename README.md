
# ════════୨ৎ══════════════════════════════════
# Bash Cheatsheet      𐔌՞. .՞𐦯
# ════════════════════════════════════════════

## 1. Navigation & Informations
```bash
- `cd dir` → change directory  
- `pwd` → print current directory  
- `ls` → list files and folders (default: alphabetically)
```  

**Ls flags :**

* `-l` → list files with details (permissions, owner, size, date)  
* `-lh` → list files with details and human-readable size (K, M, G)  
* `-la` → list all files, including hidden (.) files  
* `-lt` → list files sorted by modification time (newest first)  
* `-ltr` → list files sorted by modification time (oldest first)  
* `-lhS` → list files sorted by size (largest first) with human-readable size  
* `-a` → list all files (including hidden)  
* `-R` → lists all files and directories recursively  
* `-i` → shows the inode number of each file  
* `-F` → show file type:  
  * `/` → directory (folder)  
  * `*` → executable  
  * `@` → symbolic link  
  * No symbol → regular file  

```bash
du -h   # show disk usage
df -h   # show disk free space

````

💡Recommendation: Install tree to easily visualize folder hierarchies!

```bash
sudo apt install tree
tree   # show directory structure
```

Example:

```
Bash/
├── X
│   ├── a
│   └── b
└── Y
    ├── a
    └── b
```

---

## 2. Files & Folders

**Create:**

```bash
touch file           # create empty file
mkdir dir            # create directory
mkdir -p path/to/dir # create nested directories
```

Example:

```bash
mkdir -p ~/Bash_Projects/{T,A}/{1,2,3}
```

```
~/Bash/
├── T
│   ├── 1
│   ├── 2
│   └── 3
└── A
    ├── 1
    ├── 2
    └── 3
```

**Remove:**

```bash
rm file
rm -r dir   # delete recursively
```

**Copy:**

```bash
cp file1 file2
cp -r dir1 dir2
```

**Rename / Move:**

```bash
mv old_name new_name  # rename
mv file.txt ~/path/   # move file
mv folder ~/path/     # move folder
```

**Find:**

```bash
find                # lists all files recursively
```

**Find flags**

* `-name "file.txt"`
* `-type d`      # all directories
* `-type f `     # all files
* `-size +10M`  # files > 10MB
* `-perm 644`
* `-name "*.log" -exec rm {} \;`


---

## 3. Viewing & Editing

```bash
cat file     # display content
less file    # view page by page
head file    # first 10 lines
tail file    # last 10 lines
nano file    # edit file
```

**Write / Add text:**

```bash
echo "text" > file   # overwrite
echo "text" >> file  # append
echo "text"          # print text
```

**Echo flags:**

* `-n` → no newline
* `-e` → interpret special characters (\n, \t, ")
* `-E` → disable interpretation

**Read input:**

```bash
read a
```

**Read flags:**

* `-r` → raw input
* `-p "msg"` → prompt
* `-s` → silent input

---

## 4. Permissions

```bash
chmod XYZ file  # set permissions
stat -c %a file # check numeric permissions
```

* X = Owner, Y = Group, Z = Others
* 7 = read(4)+write(2)+execute(1)
* 5 = read(4)+execute(1), write denied

Example:

```bash
chmod 770 file
```

---

## 5. Time

```bash
date    # current date/time
uptime  # system uptime
history # command history
sleep X # pause for X seconds
```

---

## 6. Path of a command

```bash
which bash
which git node
```

---

## 7. Processes & System

```bash
ps
top
htop       # if installed
kill PID
killall process_name
pgrep -l file
whoami
```

---

## 8. Compression

```bash
zip file.zip folder/
unzip file.zip
```

---

## 9. Redirection & Pipes

```bash
>    # redirect output, overwrite
>>   # append to file
<    # use file as input
|    # pipe output
```

Examples:

```bash
ls -l | tee files.txt
cat file.txt | wc -l > line_count.txt
```

---

## 10. Colors & Styles

**Text Styles / Effects:**

```bash
RESET="\e[0m"
BOLD="\e[1m"
DIM="\e[2m"
ITALIC="\e[3m"
UNDERLINE="\e[4m"
BLINK="\e[5m"
BLINKFAST="\e[6m"
REVERSED="\e[7m"
HIDDEN="\e[8m"
STRIKE="\e[9m"
```

**Text Colors (Foreground):**

```bash
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"
```

**Bright / High-intensity text colors:**

```bash
BRIGHT_BLACK="\e[90m"
BRIGHT_RED="\e[91m"
BRIGHT_GREEN="\e[92m"
BRIGHT_YELLOW="\e[93m"
BRIGHT_BLUE="\e[94m"
BRIGHT_MAGENTA="\e[95m"
BRIGHT_CYAN="\e[96m"
BRIGHT_WHITE="\e[97m"
```

**Background Colors:**

```bash
BG_BLACK="\e[40m"
BG_RED="\e[41m"
BG_GREEN="\e[42m"
BG_YELLOW="\e[43m"
BG_BLUE="\e[44m"
BG_MAGENTA="\e[45m"
BG_CYAN="\e[46m"
BG_WHITE="\e[47m"
```

**Bright / High-intensity background:**

```bash
BG_BRIGHT_BLACK="\e[100m"
BG_BRIGHT_RED="\e[101m"
BG_BRIGHT_GREEN="\e[102m"
BG_BRIGHT_YELLOW="\e[103m"
BG_BRIGHT_BLUE="\e[104m"
BG_BRIGHT_MAGENTA="\e[105m"
BG_BRIGHT_CYAN="\e[106m"
BG_BRIGHT_WHITE="\e[107m"
```

**Examples:**

```bash
echo -e "${RED}This is red text${RESET}"
echo -e "${BOLD}${GREEN}Bold green text${RESET}"
echo -e "${YELLOW}${BG_BLUE}Yellow on blue background${RESET}"
```
