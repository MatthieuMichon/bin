# Bash user scripts

This repository matches part of the `~/bin/` directory were is kept some bash scripts.

## `altera.sh`

This script is intended to facilitate switching between several different version of Altera's Quartus EDA tool.

### Usage

```
. altera.sh [QUARTUS_VERSION]
```

Since the `PATH` environment variable may be altered, this script should be properly sourced by adding a leading `.`.

The `QUARTUS_VERSION` parameter is optional, when absent the script will list all possible values; when present the script will alter the `PATH` environment variable by adding in the last position the directory `/opt/altera/<QUARTUS_VERSION>/quartus/bin`

### Examples

```
$ . ./bin/altera.sh
Available Quartus versions:
  quartus_web_15_0_1
$ 
```

```
$ . ./bin/altera.sh quartus_web_15_0_1
$ echo $PATH
/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/opt/altera/quartus_web_15_0_1/quartus/bin
$ 
```
