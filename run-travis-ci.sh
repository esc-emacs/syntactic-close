#!/bin/sh

# Author: Andreas Roehler <andreas.roehler@online.de>

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# Commentary:

# This script tests functions from python-mode.el.

# Code:

PDIR=$PWD

TESTDIR=$PDIR/test
export TESTDIR

echo "\$1: $1"

FILE=

SETUP=$TESTDIR/setup-ert-tests.el

TEST1=$TESTDIR/general-close-tests.el

if [ -s emacs24 ]; then
    EMACS=emacs24
else
    EMACS=emacs
fi

echo "\$EMACS: $EMACS"

# Form delivered by $SETUP is not used yet

$EMACS -Q --batch --eval "(message (emacs-version))" --eval "(add-to-list 'load-path \"$PDIR/\")" --eval "(add-to-list 'load-path \"$TESTDIR/\")" -l $PDIR/general-close.el -load $SETUP -l $TEST1 -f ert-run-tests-batch-and-exit
