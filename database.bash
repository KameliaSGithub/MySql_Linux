debian@debian12:~$ sudo apt update
[sudo] password for debian: 
Hit:1 http://security.debian.org/debian-security bookworm-security InRelease
Hit:2 http://deb.debian.org/debian bookworm InRelease                          
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease                  
Hit:4 https://packages.microsoft.com/repos/code stable InRelease               
Ign:5 https://pkg.jenkins.io/debian-stable binary/ InRelease
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release [2,044 B]
Get:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Ign:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg
Reading package lists... Done
W: GPG error: https://pkg.jenkins.io/debian-stable binary/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 5BA31D57EF5975CA
E: The repository 'https://pkg.jenkins.io/debian-stable binary/ Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
debian@debian12:~$ sudo apt install mysql-server -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Package mysql-server is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

E: Package 'mysql-server' has no installation candidate
debian@debian12:~$ sudo systemctl statys mysql 
Unknown command verb statys.
debian@debian12:~$  sudo systemctl status mysql 
Unit mysql.service could not be found.
debian@debian12:~$ wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
OK
debian@debian12:~$ sudo apt update
Hit:1 http://security.debian.org/debian-security bookworm-security InRelease
Hit:2 http://deb.debian.org/debian bookworm InRelease                          
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease                  
Ign:4 https://pkg.jenkins.io/debian-stable binary/ InRelease                   
Get:5 https://pkg.jenkins.io/debian-stable binary/ Release [2,044 B]           
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Hit:7 https://packages.microsoft.com/repos/code stable InRelease
Ign:6 https://pkg.jenkins.io/debian-stable binary/ Release.gpg
Reading package lists... Done
W: GPG error: https://pkg.jenkins.io/debian-stable binary/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 5BA31D57EF5975CA
E: The repository 'https://pkg.jenkins.io/debian-stable binary/ Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
debian@debian12:~$ sudo apt install default-mysql-server -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following package was automatically installed and is no longer required:
  linux-image-6.1.0-25-amd64
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  galera-4 gawk libcgi-fast-perl libcgi-pm-perl libconfig-inifiles-perl
  libdaxctl1 libdbd-mariadb-perl libdbi-perl libfcgi-bin libfcgi-perl
  libfcgi0ldbl libhtml-template-perl libmariadb3 libndctl6 libpmem1
  libsigsegv2 libterm-readkey-perl liburing2 mariadb-client
  mariadb-client-core mariadb-common mariadb-plugin-provider-bzip2
  mariadb-plugin-provider-lz4 mariadb-plugin-provider-lzma
  mariadb-plugin-provider-lzo mariadb-plugin-provider-snappy mariadb-server
  mariadb-server-core mysql-common pv rsync socat
Suggested packages:
  gawk-doc libmldbm-perl libnet-daemon-perl libsql-statement-perl
  libipc-sharedcache-perl mailx mariadb-test netcat-openbsd doc-base
  python3-braceexpand
The following NEW packages will be installed:
  default-mysql-server galera-4 gawk libcgi-fast-perl libcgi-pm-perl
  libconfig-inifiles-perl libdaxctl1 libdbd-mariadb-perl libdbi-perl
  libfcgi-bin libfcgi-perl libfcgi0ldbl libhtml-template-perl libmariadb3
  libndctl6 libpmem1 libsigsegv2 libterm-readkey-perl liburing2 mariadb-client
  mariadb-client-core mariadb-common mariadb-plugin-provider-bzip2
  mariadb-plugin-provider-lz4 mariadb-plugin-provider-lzma
  mariadb-plugin-provider-lzo mariadb-plugin-provider-snappy mariadb-server
  mariadb-server-core mysql-common pv rsync socat
0 upgraded, 33 newly installed, 0 to remove and 21 not upgraded.
Need to get 18.9 MB of archives.
After this operation, 194 MB of additional disk space will be used.
Get:1 http://deb.debian.org/debian bookworm/main amd64 libsigsegv2 amd64 2.14-1 [37.2 kB]
Get:2 http://deb.debian.org/debian bookworm/main amd64 gawk amd64 1:5.2.1-2 [673 kB]
Get:3 http://deb.debian.org/debian bookworm/main amd64 mysql-common all 5.8+1.1.0 [6,636 B]
Get:4 http://deb.debian.org/debian bookworm/main amd64 mariadb-common all 1:10.11.6-0+deb12u1 [24.4 kB]
Get:5 http://deb.debian.org/debian bookworm/main amd64 galera-4 amd64 26.4.20-0+deb12u1 [836 kB]
Get:6 http://deb.debian.org/debian bookworm/main amd64 libdbi-perl amd64 1.643-4 [773 kB]
Get:7 http://deb.debian.org/debian bookworm/main amd64 libconfig-inifiles-perl all 3.000003-2 [45.9 kB]
Get:8 http://deb.debian.org/debian bookworm/main amd64 libmariadb3 amd64 1:10.11.6-0+deb12u1 [174 kB]
Get:9 http://deb.debian.org/debian bookworm/main amd64 mariadb-client-core amd64 1:10.11.6-0+deb12u1 [869 kB]
Get:10 http://deb.debian.org/debian bookworm/main amd64 mariadb-client amd64 1:10.11.6-0+deb12u1 [2,931 kB]
Get:11 http://deb.debian.org/debian bookworm/main amd64 libdaxctl1 amd64 76.1-1 [21.1 kB]
Get:12 http://deb.debian.org/debian bookworm/main amd64 libndctl6 amd64 76.1-1 [61.7 kB]
Get:13 http://deb.debian.org/debian bookworm/main amd64 libpmem1 amd64 1.12.1-2 [90.0 kB]
Get:14 http://deb.debian.org/debian bookworm/main amd64 liburing2 amd64 2.3-3 [12.6 kB]
Get:15 http://deb.debian.org/debian bookworm/main amd64 mariadb-server-core amd64 1:10.11.6-0+deb12u1 [7,249 kB]
Get:16 http://deb.debian.org/debian bookworm/main amd64 rsync amd64 3.2.7-1 [417 kB]
Get:17 http://deb.debian.org/debian bookworm/main amd64 socat amd64 1.7.4.4-2 [375 kB]
Get:18 http://deb.debian.org/debian bookworm/main amd64 mariadb-server amd64 1:10.11.6-0+deb12u1 [3,655 kB]
Get:19 http://deb.debian.org/debian bookworm/main amd64 default-mysql-server all 1.1.0 [2,860 B]
Get:20 http://deb.debian.org/debian bookworm/main amd64 libcgi-pm-perl all 4.55-1 [220 kB]
Get:21 http://deb.debian.org/debian bookworm/main amd64 libfcgi0ldbl amd64 2.4.2-2 [26.1 kB]
Get:22 http://deb.debian.org/debian bookworm/main amd64 libfcgi-perl amd64 0.82+ds-2 [25.2 kB]
Get:23 http://deb.debian.org/debian bookworm/main amd64 libcgi-fast-perl all 1:2.15-1 [12.1 kB]
Get:24 http://deb.debian.org/debian bookworm/main amd64 libdbd-mariadb-perl amd64 1.22-1+b1 [93.8 kB]
Get:25 http://deb.debian.org/debian bookworm/main amd64 libfcgi-bin amd64 2.4.2-2 [12.9 kB]
Get:26 http://deb.debian.org/debian bookworm/main amd64 libhtml-template-perl all 2.97-2 [66.5 kB]
Get:27 http://deb.debian.org/debian bookworm/main amd64 libterm-readkey-perl amd64 2.38-2+b1 [24.5 kB]
Get:28 http://deb.debian.org/debian bookworm/main amd64 mariadb-plugin-provider-bzip2 amd64 1:10.11.6-0+deb12u1 [24.8 kB]
Get:29 http://deb.debian.org/debian bookworm/main amd64 mariadb-plugin-provider-lz4 amd64 1:10.11.6-0+deb12u1 [24.7 kB]
Get:30 http://deb.debian.org/debian bookworm/main amd64 mariadb-plugin-provider-lzma amd64 1:10.11.6-0+deb12u1 [24.8 kB]
Get:31 http://deb.debian.org/debian bookworm/main amd64 mariadb-plugin-provider-lzo amd64 1:10.11.6-0+deb12u1 [24.7 kB]
Get:32 http://deb.debian.org/debian bookworm/main amd64 mariadb-plugin-provider-snappy amd64 1:10.11.6-0+deb12u1 [24.8 kB]
Get:33 http://deb.debian.org/debian bookworm/main amd64 pv amd64 1.6.20-1 [53.5 kB]
Fetched 18.9 MB in 13s (1,498 kB/s)                                            
Extracting templates from packages: 100%
Preconfiguring packages ...
Selecting previously unselected package libsigsegv2:amd64.
(Reading database ... 258250 files and directories currently installed.)
Preparing to unpack .../libsigsegv2_2.14-1_amd64.deb ...
Unpacking libsigsegv2:amd64 (2.14-1) ...
Setting up libsigsegv2:amd64 (2.14-1) ...
Selecting previously unselected package gawk.
(Reading database ... 258259 files and directories currently installed.)
Preparing to unpack .../00-gawk_1%3a5.2.1-2_amd64.deb ...
Unpacking gawk (1:5.2.1-2) ...
Selecting previously unselected package mysql-common.
Preparing to unpack .../01-mysql-common_5.8+1.1.0_all.deb ...
Unpacking mysql-common (5.8+1.1.0) ...
Selecting previously unselected package mariadb-common.
Preparing to unpack .../02-mariadb-common_1%3a10.11.6-0+deb12u1_all.deb ...
Unpacking mariadb-common (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package galera-4.
Preparing to unpack .../03-galera-4_26.4.20-0+deb12u1_amd64.deb ...
Unpacking galera-4 (26.4.20-0+deb12u1) ...
Selecting previously unselected package libdbi-perl:amd64.
Preparing to unpack .../04-libdbi-perl_1.643-4_amd64.deb ...
Unpacking libdbi-perl:amd64 (1.643-4) ...
Selecting previously unselected package libconfig-inifiles-perl.
Preparing to unpack .../05-libconfig-inifiles-perl_3.000003-2_all.deb ...
Unpacking libconfig-inifiles-perl (3.000003-2) ...
Selecting previously unselected package libmariadb3:amd64.
Preparing to unpack .../06-libmariadb3_1%3a10.11.6-0+deb12u1_amd64.deb ...
Unpacking libmariadb3:amd64 (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package mariadb-client-core.
Preparing to unpack .../07-mariadb-client-core_1%3a10.11.6-0+deb12u1_amd64.deb .
..
Unpacking mariadb-client-core (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package mariadb-client.
Preparing to unpack .../08-mariadb-client_1%3a10.11.6-0+deb12u1_amd64.deb ...
Unpacking mariadb-client (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package libdaxctl1:amd64.
Preparing to unpack .../09-libdaxctl1_76.1-1_amd64.deb ...
Unpacking libdaxctl1:amd64 (76.1-1) ...
Selecting previously unselected package libndctl6:amd64.
Preparing to unpack .../10-libndctl6_76.1-1_amd64.deb ...
Unpacking libndctl6:amd64 (76.1-1) ...
Selecting previously unselected package libpmem1:amd64.
Preparing to unpack .../11-libpmem1_1.12.1-2_amd64.deb ...
Unpacking libpmem1:amd64 (1.12.1-2) ...
Selecting previously unselected package liburing2:amd64.
Preparing to unpack .../12-liburing2_2.3-3_amd64.deb ...
Unpacking liburing2:amd64 (2.3-3) ...
Selecting previously unselected package mariadb-server-core.
Preparing to unpack .../13-mariadb-server-core_1%3a10.11.6-0+deb12u1_amd64.deb .
..
Unpacking mariadb-server-core (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package rsync.
Preparing to unpack .../14-rsync_3.2.7-1_amd64.deb ...
Unpacking rsync (3.2.7-1) ...
Selecting previously unselected package socat.
Preparing to unpack .../15-socat_1.7.4.4-2_amd64.deb ...
Unpacking socat (1.7.4.4-2) ...
Setting up mysql-common (5.8+1.1.0) ...
update-alternatives: using /etc/mysql/my.cnf.fallback to provide /etc/mysql/my.c
nf (my.cnf) in auto mode
Setting up mariadb-common (1:10.11.6-0+deb12u1) ...
update-alternatives: using /etc/mysql/mariadb.cnf to provide /etc/mysql/my.cnf (
my.cnf) in auto mode
Selecting previously unselected package mariadb-server.
(Reading database ... 258973 files and directories currently installed.)
Preparing to unpack .../00-mariadb-server_1%3a10.11.6-0+deb12u1_amd64.deb ...
Unpacking mariadb-server (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package default-mysql-server.
Preparing to unpack .../01-default-mysql-server_1.1.0_all.deb ...
Unpacking default-mysql-server (1.1.0) ...
Selecting previously unselected package libcgi-pm-perl.
Preparing to unpack .../02-libcgi-pm-perl_4.55-1_all.deb ...
Unpacking libcgi-pm-perl (4.55-1) ...
Selecting previously unselected package libfcgi0ldbl:amd64.
Preparing to unpack .../03-libfcgi0ldbl_2.4.2-2_amd64.deb ...
Unpacking libfcgi0ldbl:amd64 (2.4.2-2) ...
Selecting previously unselected package libfcgi-perl.
Preparing to unpack .../04-libfcgi-perl_0.82+ds-2_amd64.deb ...
Unpacking libfcgi-perl (0.82+ds-2) ...
Selecting previously unselected package libcgi-fast-perl.
Preparing to unpack .../05-libcgi-fast-perl_1%3a2.15-1_all.deb ...
Unpacking libcgi-fast-perl (1:2.15-1) ...
Selecting previously unselected package libdbd-mariadb-perl.
Preparing to unpack .../06-libdbd-mariadb-perl_1.22-1+b1_amd64.deb ...
Unpacking libdbd-mariadb-perl (1.22-1+b1) ...
Selecting previously unselected package libfcgi-bin.
Preparing to unpack .../07-libfcgi-bin_2.4.2-2_amd64.deb ...
Unpacking libfcgi-bin (2.4.2-2) ...
Selecting previously unselected package libhtml-template-perl.
Preparing to unpack .../08-libhtml-template-perl_2.97-2_all.deb ...
Unpacking libhtml-template-perl (2.97-2) ...
Selecting previously unselected package libterm-readkey-perl.
Preparing to unpack .../09-libterm-readkey-perl_2.38-2+b1_amd64.deb ...
Unpacking libterm-readkey-perl (2.38-2+b1) ...
Selecting previously unselected package mariadb-plugin-provider-bzip2.
Preparing to unpack .../10-mariadb-plugin-provider-bzip2_1%3a10.11.6-0+deb12u1_a
md64.deb ...
Unpacking mariadb-plugin-provider-bzip2 (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package mariadb-plugin-provider-lz4.
Preparing to unpack .../11-mariadb-plugin-provider-lz4_1%3a10.11.6-0+deb12u1_amd
64.deb ...
Unpacking mariadb-plugin-provider-lz4 (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package mariadb-plugin-provider-lzma.
Preparing to unpack .../12-mariadb-plugin-provider-lzma_1%3a10.11.6-0+deb12u1_am
d64.deb ...
Unpacking mariadb-plugin-provider-lzma (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package mariadb-plugin-provider-lzo.
Preparing to unpack .../13-mariadb-plugin-provider-lzo_1%3a10.11.6-0+deb12u1_amd
64.deb ...
Unpacking mariadb-plugin-provider-lzo (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package mariadb-plugin-provider-snappy.
Preparing to unpack .../14-mariadb-plugin-provider-snappy_1%3a10.11.6-0+deb12u1_
amd64.deb ...
Unpacking mariadb-plugin-provider-snappy (1:10.11.6-0+deb12u1) ...
Selecting previously unselected package pv.
Preparing to unpack .../15-pv_1.6.20-1_amd64.deb ...
Unpacking pv (1.6.20-1) ...
Setting up libconfig-inifiles-perl (3.000003-2) ...
Setting up galera-4 (26.4.20-0+deb12u1) ...
Setting up libfcgi0ldbl:amd64 (2.4.2-2) ...
Setting up gawk (1:5.2.1-2) ...
Setting up libcgi-pm-perl (4.55-1) ...
Setting up libfcgi-bin (2.4.2-2) ...
Setting up libhtml-template-perl (2.97-2) ...
Setting up socat (1.7.4.4-2) ...
Setting up libmariadb3:amd64 (1:10.11.6-0+deb12u1) ...
Setting up libdaxctl1:amd64 (76.1-1) ...
Setting up pv (1.6.20-1) ...
Setting up libndctl6:amd64 (76.1-1) ...
Setting up libfcgi-perl (0.82+ds-2) ...
Setting up libterm-readkey-perl (2.38-2+b1) ...
Setting up liburing2:amd64 (2.3-3) ...
Setting up libpmem1:amd64 (1.12.1-2) ...
Setting up libdbi-perl:amd64 (1.643-4) ...
Setting up rsync (3.2.7-1) ...
rsync.service is a disabled or a static unit, not starting it.
Setting up libcgi-fast-perl (1:2.15-1) ...
Setting up mariadb-client-core (1:10.11.6-0+deb12u1) ...
Setting up libdbd-mariadb-perl (1.22-1+b1) ...
Setting up mariadb-server-core (1:10.11.6-0+deb12u1) ...
Setting up mariadb-client (1:10.11.6-0+deb12u1) ...
Processing triggers for libc-bin (2.36-9+deb12u9) ...
Processing triggers for man-db (2.11.2-2) ...
Processing triggers for menu (2.1.49) ...
Setting up mariadb-server (1:10.11.6-0+deb12u1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/mariadb.service → /l
ib/systemd/system/mariadb.service.
Setting up mariadb-plugin-provider-bzip2 (1:10.11.6-0+deb12u1) ...
Setting up mariadb-plugin-provider-lzma (1:10.11.6-0+deb12u1) ...
Setting up mariadb-plugin-provider-lzo (1:10.11.6-0+deb12u1) ...
Setting up mariadb-plugin-provider-lz4 (1:10.11.6-0+deb12u1) ...
Setting up mariadb-plugin-provider-snappy (1:10.11.6-0+deb12u1) ...
Setting up default-mysql-server (1.1.0) ...
Processing triggers for mariadb-server (1:10.11.6-0+deb12u1) ...
debian@debian12:~$ sudo mysql status
ERROR 1049 (42000): Unknown database 'status'
debian@debian12:~$ debian@debian12:~$ sudo apt update
[sudo] password for debian: 
Hit:1 http://security.debian.org/debian-security bookworm-security InRelease
Hit:2 http://deb.debian.org/debian bookworm InRelease                          
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease                  
Hit:4 https://packages.microsoft.com/repos/code stable InRelease               
Ign:5 https://pkg.jenkins.io/debian-stable binary/ InRelease
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release [2,044 B]
Get:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Ign:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg
Reading package lists... Done
W: GPG error: https://pkg.jenkins.io/debian-stable binary/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 5BA31D57EF5975CA
E: The repository 'https://pkg.jenkins.io/debian-stable binary/ Release' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
debian@debian12:~$ sudo apt install mysql-server -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
debian@debian12:~$  Unknown database 'status'11.6-0+deb12u1) .......service → /l
bash: debian@debian12:~$: command not found
bash: [sudo]: command not found
bash: Hit:1: command not found
bash: Hit:2: command not found
bash: Hit:3: command not found
bash: Hit:4: command not found
bash: Ign:5: command not found
bash: Get:6: command not found
bash: Get:7: command not found
bash: Ign:7: command not found
bash: Reading: command not found
bash: W:: command not found
bash: syntax error near unexpected token `('
bash: debian@debian12:~$: command not found
bash: Reading: command not found
bash: Building: command not found
bash: Reading: command not found
bash: Package: command not found
bash: This: command not found
bash: is: command not found
bash: E:: command not found
bash: debian@debian12:~$: command not found
bash: Unknown: command not found
bash: debian@debian12:~$: command not found
bash: Unit: command not found
bash: debian@debian12:~$: command not found
Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
gpg: no valid OpenPGP data found.
bash: syntax error near unexpected token `('
bash: OK: command not found
bash: debian@debian12:~$: command not found
bash: Hit:1: command not found
bash: Hit:2: command not found
bash: Hit:3: command not found
bash: Ign:4: command not found
bash: Get:5: command not found
bash: Get:6: command not found
bash: Hit:7: command not found
bash: Ign:6: command not found
bash: Reading: command not found
bash: W:: command not found
bash: syntax error near unexpected token `('
bash: debian@debian12:~$: command not found
bash: Reading: command not found
bash: Building: command not found
bash: Reading: command not found
bash: The: command not found
bash: linux-image-6.1.0-25-amd64: command not found
bash: Use: command not found
bash: The: command not found
bash: galera-4: command not found
bash: libdaxctl1: command not found
bash: libfcgi0ldbl: command not found
bash: libsigsegv2: command not found
bash: mariadb-client-core: command not found
bash: mariadb-plugin-provider-lz4: command not found
bash: mariadb-plugin-provider-lzo: command not found
bash: mariadb-server-core: command not found
bash: Suggested: command not found
bash: gawk-doc: command not found
bash: libipc-sharedcache-perl: command not found
bash: python3-braceexpand: command not found
bash: The: command not found
bash: default-mysql-server: command not found
bash: libconfig-inifiles-perl: command not found
bash: libfcgi-bin: command not found
bash: libndctl6: command not found
bash: mariadb-client-core: command not found
bash: mariadb-plugin-provider-lz4: command not found
bash: mariadb-plugin-provider-lzo: command not found
bash: mariadb-server-core: command not found
bash: 0: command not found
bash: Need: command not found
bash: After: command not found
bash: Get:1: command not found
bash: Get:2: command not found
bash: Get:3: command not found
bash: Get:4: command not found
bash: Get:5: command not found
bash: Get:6: command not found
bash: Get:7: command not found
bash: Get:8: command not found
bash: Get:9: command not found
bash: Get:10: command not found
bash: Get:11: command not found
bash: Get:12: command not found
bash: Get:13: command not found
bash: Get:14: command not found
bash: Get:15: command not found
bash: Get:16: command not found
bash: Get:17: command not found
bash: Get:18: command not found
bash: Get:19: command not found
bash: Get:20: command not found
bash: Get:21: command not found
bash: Get:22: command not found
bash: Get:23: command not found
bash: Get:24: command not found
bash: Get:25: command not found
bash: Get:26: command not found
bash: Get:27: command not found
bash: Get:28: command not found
bash: Get:29: command not found
bash: Get:30: command not found
bash: Get:31: command not found
bash: Get:32: command not found
bash: Get:33: command not found
bash: syntax error near unexpected token `('
bash: Extracting: command not found
bash: Preconfiguring: command not found
bash: Selecting: command not found
bash: Reading: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Reading: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: ..: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: ..: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: update-alternatives:: command not found
bash: syntax error near unexpected token `my.cnf'
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `)'
bash: Selecting: command not found
bash: Reading: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: md64.deb: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: 64.deb: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: d64.deb: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: 64.deb: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: amd64.deb: command not found
bash: syntax error near unexpected token `('
bash: Selecting: command not found
bash: Preparing: command not found
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: rsync.service: command not found
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: Created: command not found
bash: ib/systemd/system/mariadb.service.: No such file or directory
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: syntax error near unexpected token `('
bash: debian@debian12:~$: command not found
bash: syntax error near unexpected token `('
bash: debian@debian12:~$: command not found
debian@debian12:~$ sudo mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 32
Server version: 10.11.6-MariaDB-0+deb12u1 Debian 12

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE my_database;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> 
