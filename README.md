# StrongLoop Workspace for Windows
Saggaf Arsyad <saggaf@area54labs.net>

### Requirements
1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](http://downloads.vagrantup.com/)
3. [Git for Windows](https://git-scm.com/download/win)

### How to Use
1. Open __Git Bash__ in Administrator Mode
2. Clone this repo
3. `cd strongloop-workspace`
4. `./start.sh`

### After Vagrant Box is up
1. Vagrantfile configures private network at `http://33.33.33.10/`
2. Place your StrongLoop node apps in workspace folder

## What's Inside
1. Node.js 4.x.x LTS
2. MongoDB
3. StrongLoop

### ConEmu Tasks
1. Task parameters

        /dir "<path_to_repo>"`

2. Commands

        "<path_to_git>\bin\bash.exe" --login -i "<path_to_repo>\start.sh" -new_console:t:Strongloop -new_console:a

### Further Reading
- [StrongLoop](http://StrongLoop.com)
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
- [MongoDB](http://mongodb.org)
