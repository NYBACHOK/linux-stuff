#!/bin/sh
zypper addrepo https://download.opensuse.org/repositories/devel:languages:python/openSUSE_Tumbleweed/devel:languages:python.repo
zypper refresh
zypper install python-setuptools