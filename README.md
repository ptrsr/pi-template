# PI-TEMPLATE
A template repo for [PI-CI](https://github.com/ptrsr/pi-ci): fork me for automated RPi builds!

This repository uses Github Actions to run tasks in a Raspberry Pi VM. The VM image is then uploaded as an artifact, ready to be flashed to an SD card and used by a real RPi.
Every commit represents a snapshot of a RPi configuration, resulting in reproducible images. This approach provides multiple advantages;

- No more need to create back-ups of SD cards
- Easily share images
- Create images that work from first boot
- keep track of difficult configurations (such as servers)
- Allows going back to older versions (if the newer one has problemsz)

## Prerequisites
Forking and pushing this repo on GitHub will automatically enable and run the actions out of the box!

### Local
It is also possible to run the VM locally, but it requires some software to be installed. To do so;
- Clone this repo.
- Have this repo as current working directory.
- Install `docker`.
- Install `ansible`.
- Install `python3`.
- Install `pip3`.
- Install `docker-py` pip module.
- Start `docker` service.

To run the project locally, run:
```sh
./run.sh virtual custom main
```

**NOTE**: Linux and Mac are supported, Windows through [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).

## Usage
Both **Ansible** and **Shell Script** can be used to configure the image. See `main.yml` and `main.sh`.
The current setup creates a `log.txt` file in the `pi` user's home directory with `Hello, Raspi!`.

## Versions
Built and tested locally on `Ubuntu 22.04` (WSL), and should work with the following minimum versions;
| Software  | Version  | 
| ----------| -------- |
| Ansible   | 2.5.1    |
| docker-py | 4.4.4    |
| Docker    | 19.03.6  |

## License
PI-TEMPLATE is licensed under [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html).
