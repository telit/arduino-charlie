## Installation instructions using Arduino IDE Boards Manager
### ==========================================================

- Stable release link: `https://raw.githubusercontent.com/telit/arduino-charlie/main/Arduino/package_Telit-board_index.json`

Starting with 1.6.4, Arduino allows installation of third-party platform packages using Boards Manager. We have packages available for Windows, Mac OS, and Linux (x86, amd64, armhf and arm64).

- Install the current upstream Arduino IDE at the 1.8 level or later. The current version is at the [Arduino website](http://www.arduino.cc/en/main/software).
- Start Arduino and open Preferences window.
- Enter the release link above into *Additional Board Manager URLs* field. 
- Open Boards Manager from Tools > Board menu and install *charlie* platform
- Select your Charlie board from Tools > Board menu after installation and start development.
