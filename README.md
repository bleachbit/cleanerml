CleanerML Repository
====================

CleanerML
---------
CleanerML is a simple yet powerful markup language for writing cleaners. Most of BleachBit's cleaners are written in CleanerML, and you can write your own cleaners in CleanerML, too.

You can think of it as writing XML to delete files, but it is more powerful than that.



BleachBit
---------
BleachBit is an open source system cleaner for Windows and Linux.



How to contribute
-----------------
1.  Download [BleachBit](https://www.bleachbit.org).
2.  Read [Documentation on CleanerML](http://docs.bleachbit.org/doc/cleanerml.html).
3.  Read [Contributing a cleaner](https://www.bleachbit.org/contribute/cleaner).
4.  Help testing untested cleaners in [`pending/`](pending/) and submit an issue to have it moved to `release/`, or fixed.
4.  Write your own cleaner *or* review someone else's submission.


How to use
----------
In the future automated sync may be as easy as checking one option, but for now you must manually
download and copy the files to your personal cleaners directory.  The easiest way to find the
directory is to open BleachBit, click Help, click System Information, and look for personal_cleaner_dir.


Contents
--------
The directory `pending` contains cleaners that are waiting for someone to verify they are safe and effective.
The directory `release` contains cleaners that are considered safe and effective.


Additional information
--------
Your cleaners should retain the copyright and information header found in `release/*.xml`. Please edit the copyright information accordingly. If needed, you can also include extra maintenance information in the header, as found in [release/openshot.xml](https://github.com/az0/cleanerml/blob/master/openshot.xml):

    @url http://full.url.of/software-project
    @tested ok softwareversion, OSnameandversion
    @note Some notes for cleaner maintainers


License
-------
The contents of this repository are licensed under the 
[GNU General Public License](https://www.gnu.org/copyleft/gpl.html)
version 3 or later.  Do not submit work for which you do not own the copyright or
which cannot be licensed under the GNU GPL v3+.
