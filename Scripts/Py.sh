#!/bin/sh
zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo
zypper refresh
zypper install python-setuptools