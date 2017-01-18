# compat

This module provides a resource type for managing compat mode entries in 
/etc/passwd and /etc/group files, used to manage UNIX access for LDAP and
NIS users and netgroups.

#### Table of Contents

1. [Setup - The basics of getting started with compat](#setup)
    * [What compat affects](#what-compat-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with compat](#beginning-with-compat)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Setup

### Setup Requirements

Since compat includes a new resource type, it does require pluginsync to be
enabled.

### Beginning with compat

Simply install the module using `puppet module install robzr-compat`, and
write at least one resource definition using the Compat resource type.

## Usage

After installing the compat module, you simply declare some compat resources,
like:
```
compat {
  '+@admin':
    position => first;
  '+@developers':
    format  => second;
  ['+user1', '+user2']:
    position => tenth;
  '+::::::/bin/false':
    position => last;
}
```

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most users don't read it per
se.

## Limitations

This is where you list OS compatibility, version compatibility, etc. If there
are Known Issues, you might want to include them under their own heading here.

## Development

Contact me [via GitHub](https://github.com/robzr/compat/issues) with requests,
issues, or if you would like to contribute.

## Release Notes/Contributors/Etc. **Optional**

- 0.1.0 - Initial release

### TODO

- Add ability to manage group file
