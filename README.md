# PI-TEMPLATE
A template repo for [PI-CI](https://github.com/ptrsr/pi-ci): fork me for automated RPi builds!

This repository uses Github Actions to prepare Raspberry Pi images, enabling [configurations to be defined as code](https://www.redhat.com/en/topics/automation/what-is-infrastructure-as-code-iac) through Ansible.
Every commit represents a snapshot of a RPi configuration, which can be reproduced by flashing the image on an SD card and running the included Ansible playbook (provided in this repo).

- Create images that work from first boot
- No more need to create back-ups of SD cards
- Keep track of difficult configurations
- Returning to an older version
- Easily share configurations

## Usage
Flash the image provided in this repo as a demo! After flashing, log in as root (no password need) and run `./run.sh local`. The script will setup the environment defined in the `./inv/local.yml` inventory file. After the configuration is done, you can log in using `test-user` and `test-password`.
Forking this repo on GitHub will automatically enable and run the actions out of the box for your own, custom configuration.

### Pipeline
It is also possible to run the configuration pipeline locally, but it requires some software to be installed. To do so;
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
./run.sh ci
```

**NOTE**: Linux and Mac are supported, Windows through [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).

## Versions
Built and tested locally on `Ubuntu 22.04` (WSL), and should work with the following minimum versions;
| Software  | Version  | 
| ----------| -------- |
| Ansible   | 2.5.1    |
| docker-py | 4.4.4    |
| Docker    | 19.03.6  |

## License
PI-TEMPLATE is licensed under [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html).
