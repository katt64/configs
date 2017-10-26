# *configs* &mdash; My best battlestation configurations

<a href="https://i.imgur.com/Wo74HQl.png" target="_blank">
<img src="https://i.imgur.com/Wo74HQl.png" alt="My battlestation screenshotted
from userland" style="display: block; width: 90%; margin: 5vh auto;">
</a>

## Screenshot description
The screenshot is my battlestation screnshotted from userland (not from the
screen) using `screenfetch -s`. The operating supervisor is Gentoo, configured
from scratch, running on a native system (not under any kind of hypervisor).

The following are the windows I have running and what they are doing (top-down,
left-right order):

- *xdvik* (app-text/xdvik) &mdash; showing a large facetious message.
  :p
- *vim* (app-editors/vim) &mdash; editing an Nroff source file for the
  facetious message.
- *htop* (sys-process/htop) &mdash; showing how selfish Firefox can be.
- *glxgears* (x11-apps/mesa-progs) &mdash; Hmm&hellip; I don't know what it's
  showing&hellip; Do you? ;p
- *ranger* (app-misc/ranger) &mdash; browsing some files pertaining to PARI/GP's
  compilation process
- *screenfetch* (app-misc/screenfetch) &mdash; Captures the screen at the
  instance *you* can see now.

A few subtleties include:

- [The wallpaper in the
  background](https://vsco.co/katt64/media/59e8cd0855f6ec424cf50516). It's about
  a trivial problem, really. :p
- The VPN provider I'm using provides me with IPv6!!! <3
- I'm running this battlestation on one laptop connected to an external
  keyboard, wireless mouse, HDMI monitor, and occasionally an external floppy
  disk drive to retrieve legacy data. :3

## This!
This repository intends to openly and freely share with the public domain (you
and everyone) an idea of a *minimal, but very useful* configuration that I'm
using everyday on my setup (c.f. previous section), and also give me a nice
repository to store my configuration files that I've worked my blood and sweat
on **literally**!

All my configuration files are curated from the rootfs `/`, because it has been
found that `/etc/` contains quite a few interesting configurations I've made.
Thus, user configurations start in `configs://home/katt/`, where `configs://`
denotes the rootfs of this repository. Files that could be a concern for my
security have not been included. You may use the `tree` (app-text/tree) utility
to visualize the directory hierarchy.

So, there you go. Browse away, it's here for ya. You may modify it to fit your
needs.

## Any strings attached?
*Long answer short: no. Are you human, though?*

I don't assume any rights on any of my configuration work present in this
repository. However, if any files in here are protected by someone else's
copyright (this happens with software written by other people), then that
entity's copyright rules apply, but I just won't mention it because I don't know
much about laws 'n shit. (I'm a rebel!) :p

So, You can use my configuration files however you want. It's literally just
free, no strings attached, but just be mindful of other people's
already-imposed copyright that we might not know about. You **need not** credit
me when using my configurations from here, but if you want to, of course, you
can! :) Just don't let creditting work bother you; life is too short to be
bothered by other people's shit.

Oh, one slight caveat I'd like to point out is that, I really urge that you be
mindful and very polite when commenting or reporting "issues" in my
configurations. Don't roast, troll, negatively criticize me, or hurt my
feelings; that's happened before and it's just not cool. If you have "issues"
with my configurations, it means you have issues with my preferences; my
preferences are mine, and if it bothers you, it's your problem! Right? Let's be
honest about that. So, just &hellip; **be human, be nice**.

Of course, I'd like to hear suggestions if it's easy for me to digest and use in
my everyday life. The general rule is just that: if you are greater than 50%
certain that what you're about to say to me will not make me a better person,
but will in fact make me much worse off, **don't say it**.

### "But &hellip; Your setup is lame!"
*So, you really wanna break my heart, huh? Haha. It's okey. :p*

I mean, seriously, I know that other guys' setups are much more sophisticated
and powerful than mine, but this really is the best I can come up with, it is
simple, and it fucking works! I've never been happier in my life with my setup.
So, what more can I ask?!

This setup works for me just fine. I'm just putting it here to see to it that it
works for you too, perhaps even better than it does me. I'm using it everyday
and I'm even earning money from it. I've got a few freelance jobs as a web
developer (haha, as if I'm so good at it) and I'm using Nroff to typeset
worksheets and exercises for my mom's students at a school she works. :p

If you are just here to say that my setup is lame, then you'd better scram,
boii; but if you wanna make a few constructive suggestions that might make my
life easier, then shoot! I'm quite a busy person. I spend most of my days trying
to be productive and studying for high school even though I seem to be behind
everyone no matter what I do. I still cannot fathom how most people can spend so
much time having the best of all UNIX setups and yet seem to live out life so
fine. So, understand that.

## Subtleties
Below this, you'll find some subtleties regarding my setup. If you don't
really care about the specifics or details, you may happily skip; but if you do,
this section may very well provide for much of your needs.

### Gentoo's portage stuff
#### `emerge`'s information
Running `emerge --info`, I get some information on the inner-workings of
`emerge` .

```
Portage 2.3.8 (python 3.4.5-final-0, default/linux/amd64/13.0, gcc-5.4.0, glibc-2.23-r4, 4.12.12-gentoo x86_64)
=================================================================
System uname: Linux-4.12.12-gentoo-x86_64-Intel-R-_Core-TM-_i5-2450M_CPU_@_2.50GHz-with-gentoo-2.4.1
KiB Mem:     8083980 total,   6864756 free
KiB Swap:          0 total,         0 free
Timestamp of repository gentoo: Sun, 22 Oct 2017 00:45:01 +0000
Head commit of repository gentoo: 0d07663c199183c31d038261bec0cf8c550e61de
sh bash 4.3_p48-r1
ld GNU ld (Gentoo 2.28.1 p1.0) 2.28.1
app-shells/bash:          4.3_p48-r1::gentoo
dev-lang/perl:            5.24.3::gentoo
dev-lang/python:          2.7.12::gentoo, 3.4.5::gentoo
dev-util/cmake:           3.8.2::gentoo
dev-util/pkgconfig:       0.28-r2::gentoo
sys-apps/baselayout:      2.4.1-r2::gentoo
sys-apps/openrc:          0.32.1::gentoo
sys-apps/sandbox:         2.10-r3::gentoo
sys-devel/autoconf:       2.13::gentoo, 2.69::gentoo
sys-devel/automake:       1.11.6-r1::gentoo, 1.15-r2::gentoo
sys-devel/binutils:       2.28.1::gentoo
sys-devel/gcc:            5.4.0-r3::gentoo
sys-devel/gcc-config:     1.8-r1::gentoo
sys-devel/libtool:        2.4.6-r3::gentoo
sys-devel/make:           4.2.1::gentoo
sys-kernel/linux-headers: 4.4::gentoo (virtual/os-headers)
sys-libs/glibc:           2.23-r4::gentoo
Repositories:

gentoo
    location: /usr/portage
    sync-type: rsync
    sync-uri: rsync://rsync.gentoo.org/gentoo-portage
    priority: -1000

4nykey
    location: /var/lib/layman/4nykey
    masters: gentoo
    priority: 50

eva
    location: /var/lib/layman/eva
    masters: gentoo
    priority: 50

jorgicio
    location: /var/lib/layman/jorgicio
    masters: gentoo
    priority: 50

ABI="amd64"
ABI_X86="64"
ACCEPT_KEYWORDS="amd64"
ACCEPT_LICENSE="* -@EULA"
ACCEPT_PROPERTIES="*"
ACCEPT_RESTRICT="*"
ALSA_CARDS="ali5451 als4000 atiixp atiixp-modem bt87x ca0106 cmipci emu10k1x ens1370 ens1371 es1938 es1968 fm801 hda-intel intel8x0 intel8x0m maestro3 trident usb-audio via82xx via82xx-modem ymfpci"
APACHE2_MODULES="authn_core authz_core socache_shmcb unixd actions alias auth_basic authn_alias authn_anon authn_dbm authn_default authn_file authz_dbm authz_default authz_groupfile authz_host authz_owner authz_user autoindex cache cgi cgid dav dav_fs dav_lock deflate dir disk_cache env expires ext_filter file_cache filter headers include info log_config logio mem_cache mime mime_magic negotiation rewrite setenvif speling status unique_id userdir usertrack vhost_alias"
ARCH="amd64"
AUTOCLEAN="yes"
BOOTSTRAP_USE="cxx unicode internal-glib python_targets_python3_4 python_targets_python2_7 multilib"
CALLIGRA_FEATURES="kexi words flow plan sheets stage tables krita karbon braindump author"
CBUILD="x86_64-pc-linux-gnu"
CFLAGS="-march=native -O2 -pipe"
CFLAGS_amd64="-m64"
CFLAGS_x32="-mx32"
CFLAGS_x86="-m32"
CHOST="x86_64-pc-linux-gnu"
CHOST_amd64="x86_64-pc-linux-gnu"
CHOST_x32="x86_64-pc-linux-gnux32"
CHOST_x86="i686-pc-linux-gnu"
CLEAN_DELAY="5"
COLLECTD_PLUGINS="df interface irq load memory rrdtool swap syslog"
COLLISION_IGNORE="/lib/modules/* *.py[co] *$py.class */dropin.cache"
COLORFGBG="7;default;0"
COLORTERM="yes"
CONFIG_PROTECT="/etc /usr/share/gnupg/qualified.txt"
CONFIG_PROTECT_MASK="/etc/ca-certificates.conf /etc/env.d /etc/fonts/fonts.conf /etc/gconf /etc/gentoo-release /etc/revdep-rebuild /etc/sandbox.d /etc/terminfo /etc/texmf/language.dat.d /etc/texmf/language.def.d /etc/texmf/updmap.d /etc/texmf/web2c /usr/bin/pass /usr/bin/startx"
CPU_FLAGS_X86="aes avx mmx mmxext pclmul popcnt sse sse2 sse3 sse4_1 sse4_2 ssse3"
CXXFLAGS="-march=native -O2 -pipe"
DEFAULT_ABI="amd64"
DESKTOP_STARTUP_ID="i3/urxvtc/10138-12-gentoo_TIME2211260"
DISPLAY=":0"
DISTDIR="/usr/portage/distfiles"
EDITOR="/usr/bin/vi"
ELIBC="glibc"
EMERGE_DEFAULT_OPTS="--ask --verbose"
EMERGE_WARNING_DELAY="10"
EPREFIX=""
EROOT="/"
FCFLAGS="-march=native -O2 -pipe"
FEATURES="assume-digests binpkg-logs candy clean-logs config-protect-if-modified distlocks ebuild-locks fail-clean fixlafiles merge-sync multilib-strict news parallel-fetch parallel-install preserve-libs protect-owned sandbox sfperms strict stricter unknown-features-warn unmerge-logs unmerge-orphans userfetch userpriv usersandbox usersync webrsync-gpg xattr"
FETCHCOMMAND="wget -t 3 -T 60 --passive-ftp -O "${DISTDIR}/${FILE}" "${URI}""
FETCHCOMMAND_RSYNC="rsync -avP "${URI}" "${DISTDIR}/${FILE}""
FETCHCOMMAND_SFTP="bash -c "x=\${2#sftp://} ; host=\${x%%/*} ; port=\${host##*:} ; host=\${host%:*} ; [[ \${host} = \${port} ]] && port= ; eval \"declare -a ssh_opts=(\${3})\" ; exec sftp \${port:+-P \${port}} \"\${ssh_opts[@]}\" \"\${host}:/\${x#*/}\" \"\$1\"" sftp "${DISTDIR}/${FILE}" "${URI}" "${PORTAGE_SSH_OPTS}""
FETCHCOMMAND_SSH="bash -c "x=\${2#ssh://} ; host=\${x%%/*} ; port=\${host##*:} ; host=\${host%:*} ; [[ \${host} = \${port} ]] && port= ; exec rsync --rsh=\"ssh \${port:+-p\${port}} \${3}\" -avP \"\${host}:/\${x#*/}\" \"\$1\"" rsync "${DISTDIR}/${FILE}" "${URI}" "${PORTAGE_SSH_OPTS}""
FFLAGS="-march=native -O2 -pipe"
GCC_SPECS=""
GENTOO_MIRRORS="ftp://mirror.mdfnet.se/gentoo http://mirror.mdfnet.se/gentoo"
GPSD_PROTOCOLS="ashtech aivdm earthmate evermore fv18 garmin garmintxt gpsclock isync itrax mtk3301 nmea ntrip navcom oceanserver oldstyle oncore rtcm104v2 rtcm104v3 sirf skytraq superstar2 timing tsip tripmate tnt ublox ubx"
GRUB_PLATFORMS="pc"
HOME="/home/katt"
HUSHLOGIN="FALSE"
INFOPATH="/usr/share/gcc-data/x86_64-pc-linux-gnu/5.4.0/info:/usr/share/binutils-data/x86_64-pc-linux-gnu/2.28.1/info:/usr/share/info"
INPUT_DEVICES="libinput keyboard mouse"
IUSE_IMPLICIT="abi_x86_64 prefix prefix-chain prefix-guest"
KERNEL="linux"
L10N="en sv"
LANG="en_US.utf8"
LCD_DEVICES="bayrad cfontz cfontz633 glk hd44780 lb216 lcdm001 mtxorb ncurses text"
LC_MESSAGES="C"
LDFLAGS="-Wl,-O1 -Wl,--as-needed"
LDFLAGS_amd64="-m elf_x86_64"
LDFLAGS_x32="-m elf32_x86_64"
LDFLAGS_x86="-m elf_i386"
LESS="-R -M --shift 5"
LESSOPEN="|lesspipe %s"
LESS_TERMCAP_mb="[01;31m"
LESS_TERMCAP_md="[01;31m"
LESS_TERMCAP_me="[0m"
LESS_TERMCAP_se="[0m"
LESS_TERMCAP_so="[01;44;33m"
LESS_TERMCAP_ue="[0m"
LESS_TERMCAP_us="[01;32m"
LIBDIR_amd64="lib64"
LIBDIR_x32="libx32"
LIBDIR_x86="lib32"
LIBREOFFICE_EXTENSIONS="presenter-console presenter-minimizer"
LINGUAS="en sv"
LOGNAME="katt"
LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.cfg=00;32:*.conf=00;32:*.diff=00;32:*.doc=00;32:*.ini=00;32:*.log=00;32:*.patch=00;32:*.pdf=00;32:*.ps=00;32:*.tex=00;32:*.txt=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"
MAIL="/var/mail/katt"
MAKEOPTS="-j4"
MANPAGER="manpager"
MANPATH="/usr/share/gcc-data/x86_64-pc-linux-gnu/5.4.0/man:/usr/share/binutils-data/x86_64-pc-linux-gnu/2.28.1/man:/usr/local/share/man:/usr/share/man"
MULTILIB_ABIS="amd64 x86"
MULTILIB_STRICT_DENY="64-bit.*shared object"
MULTILIB_STRICT_DIRS="/lib32 /lib /usr/lib32 /usr/lib /usr/kde/*/lib32 /usr/kde/*/lib /usr/qt/*/lib32 /usr/qt/*/lib /usr/X11R6/lib32 /usr/X11R6/lib"
MULTILIB_STRICT_EXEMPT="(perl5|gcc|gcc-lib|binutils|eclipse-3|debug|portage|udev|systemd|clang|python-exec|llvm)"
MYVIMRC="/home/katt/.vimrc"
NETBEANS="apisupport cnd groovy gsf harness ide identity j2ee java mobility nb php profiler soa visualweb webcommon websvccommon xml"
NOCOLOR="true"
OFFICE_IMPLEMENTATION="libreoffice"
OLDPWD="/home/katt/configs"
OPENGL_PROFILE="xorg-x11"
PAGER="/usr/bin/less"
PATH="/usr/local/bin:/usr/bin:/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/5.4.0:/opt/bin:/home/katt/.local/bin"
PHP_TARGETS="php5-6"
PKGDIR="/usr/portage/packages"
PORTAGE_ARCHLIST="alpha amd64 amd64-fbsd amd64-linux arm arm-linux arm64 arm64-linux hppa ia64 m68k m68k-mint mips nios2 ppc ppc-aix ppc-macos ppc64 ppc64-linux riscv s390 sh sparc sparc-fbsd sparc-solaris sparc64-solaris x64-cygwin x64-macos x64-solaris x86 x86-cygwin x86-fbsd x86-linux x86-macos x86-solaris x86-winnt"
PORTAGE_BIN_PATH="/usr/lib/portage/python3.4"
PORTAGE_COMPRESS_EXCLUDE_SUFFIXES="css gif htm[l]? jp[e]?g js pdf png"
PORTAGE_CONFIGROOT="/"
PORTAGE_DEBUG="0"
PORTAGE_DEPCACHEDIR="/var/cache/edb/dep"
PORTAGE_ELOG_CLASSES="log warn error"
PORTAGE_ELOG_MAILFROM="portage@localhost"
PORTAGE_ELOG_MAILSUBJECT="[portage] ebuild log for ${PACKAGE} on ${HOST}"
PORTAGE_ELOG_MAILURI="root"
PORTAGE_ELOG_SYSTEM="save_summary:log,warn,error,qa echo"
PORTAGE_FETCH_CHECKSUM_TRY_MIRRORS="5"
PORTAGE_FETCH_RESUME_MIN_SIZE="350K"
PORTAGE_GID="250"
PORTAGE_GPG_DIR="/var/lib/gentoo/gkeys/keyrings/gentoo/release"
PORTAGE_GPG_SIGNING_COMMAND="gpg --sign --digest-algo SHA256 --clearsign --yes --default-key "${PORTAGE_GPG_KEY}" --homedir "${PORTAGE_GPG_DIR}" "${FILE}""
PORTAGE_INST_GID="0"
PORTAGE_INST_UID="0"
PORTAGE_INTERNAL_CALLER="1"
PORTAGE_OVERRIDE_EPREFIX=""
PORTAGE_PYM_PATH="/usr/lib64/python3.4/site-packages"
PORTAGE_PYTHONPATH="/usr/lib64/python3.4/site-packages"
PORTAGE_RSYNC_OPTS="--recursive --links --safe-links --perms --times --omit-dir-times --compress --force --whole-file --delete --stats --human-readable --timeout=180 --exclude=/distfiles --exclude=/local --exclude=/packages --exclude=/.git"
PORTAGE_RSYNC_RETRIES="-1"
PORTAGE_SYNC_STALE="30"
PORTAGE_TMPDIR="/var/tmp"
PORTAGE_VERBOSE="1"
PORTAGE_WORKDIR_MODE="0700"
PORTAGE_XATTR_EXCLUDE="btrfs.* security.evm security.ima 	security.selinux system.nfs4_acl"
PORT_LOGDIR_CLEAN="find "${PORT_LOGDIR}" -type f ! -name "summary.log*" -mtime +7 -delete"
POSTGRES_TARGETS="postgres9_5"
PROFILE_ONLY_VARIABLES="ARCH ELIBC IUSE_IMPLICIT KERNEL USERLAND USE_EXPAND_IMPLICIT USE_EXPAND_UNPREFIXED USE_EXPAND_VALUES_ARCH USE_EXPAND_VALUES_ELIBC USE_EXPAND_VALUES_KERNEL USE_EXPAND_VALUES_USERLAND"
PWD="/home/katt/configs"
PYTHONDONTWRITEBYTECODE="1"
PYTHON_SINGLE_TARGET="python3_4"
PYTHON_TARGETS="python2_7 python3_4"
RESUMECOMMAND="wget -c -t 3 -T 60 --passive-ftp -O "${DISTDIR}/${FILE}" "${URI}""
RESUMECOMMAND_RSYNC="rsync -avP "${URI}" "${DISTDIR}/${FILE}""
RESUMECOMMAND_SSH="bash -c "x=\${2#ssh://} ; host=\${x%%/*} ; port=\${host##*:} ; host=\${host%:*} ; [[ \${host} = \${port} ]] && port= ; exec rsync --rsh=\"ssh \${port:+-p\${port}} \${3}\" -avP \"\${host}:/\${x#*/}\" \"\$1\"" rsync "${DISTDIR}/${FILE}" "${URI}" "${PORTAGE_SSH_OPTS}""
ROOT="/"
ROOTPATH="/usr/x86_64-pc-linux-gnu/gcc-bin/5.4.0:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin"
RPMDIR="/usr/portage/rpm"
RUBY_TARGETS="ruby22"
RXVT_SOCKET="/tmp/urxvt-socket"
SHELL="/bin/zsh"
SHLVL="3"
SYMLINK_LIB="yes"
TERM="rxvt-unicode-256color"
TERM_CMD="urxvtc"
TWISTED_DISABLE_WRITING_OF_PLUGIN_CACHE="1"
UNINSTALL_IGNORE="/lib/modules/* /var/run /var/lock"
USE="X acl alsa amd64 berkdb bzip2 cli cracklib crypt cxx dri fortran gdbm hardened iconv ipv6 logrotate modules multilib ncurses nls nptl openmp pam pcre readline seccomp secure-delete session ssl tcpd unicode xattr zlib zsh-completion" ABI_X86="64" ALSA_CARDS="ali5451 als4000 atiixp atiixp-modem bt87x ca0106 cmipci emu10k1x ens1370 ens1371 es1938 es1968 fm801 hda-intel intel8x0 intel8x0m maestro3 trident usb-audio via82xx via82xx-modem ymfpci" APACHE2_MODULES="authn_core authz_core socache_shmcb unixd actions alias auth_basic authn_alias authn_anon authn_dbm authn_default authn_file authz_dbm authz_default authz_groupfile authz_host authz_owner authz_user autoindex cache cgi cgid dav dav_fs dav_lock deflate dir disk_cache env expires ext_filter file_cache filter headers include info log_config logio mem_cache mime mime_magic negotiation rewrite setenvif speling status unique_id userdir usertrack vhost_alias" CALLIGRA_FEATURES="kexi words flow plan sheets stage tables krita karbon braindump author" COLLECTD_PLUGINS="df interface irq load memory rrdtool swap syslog" CPU_FLAGS_X86="aes avx mmx mmxext pclmul popcnt sse sse2 sse3 sse4_1 sse4_2 ssse3" ELIBC="glibc" GPSD_PROTOCOLS="ashtech aivdm earthmate evermore fv18 garmin garmintxt gpsclock isync itrax mtk3301 nmea ntrip navcom oceanserver oldstyle oncore rtcm104v2 rtcm104v3 sirf skytraq superstar2 timing tsip tripmate tnt ublox ubx" GRUB_PLATFORMS="pc" INPUT_DEVICES="libinput keyboard mouse" KERNEL="linux" L10N="en sv" LCD_DEVICES="bayrad cfontz cfontz633 glk hd44780 lb216 lcdm001 mtxorb ncurses text" LIBREOFFICE_EXTENSIONS="presenter-console presenter-minimizer" LINGUAS="en sv" OFFICE_IMPLEMENTATION="libreoffice" PHP_TARGETS="php5-6" POSTGRES_TARGETS="postgres9_5" PYTHON_SINGLE_TARGET="python3_4" PYTHON_TARGETS="python2_7 python3_4" RUBY_TARGETS="ruby22" USERLAND="GNU" VIDEO_CARDS="intel nouveau" XTABLES_ADDONS="quota2 psd pknock lscan length2 ipv4options ipset ipp2p iface geoip fuzzy condition tee tarpit sysrq steal rawnat logmark ipmark dhcpmac delude chaos account"
USER="katt"
USERLAND="GNU"
USE_EXPAND="ABI_MIPS ABI_PPC ABI_S390 ABI_X86 ALSA_CARDS APACHE2_MODULES APACHE2_MPMS CALLIGRA_EXPERIMENTAL_FEATURES CALLIGRA_FEATURES CAMERAS COLLECTD_PLUGINS CPU_FLAGS_ARM CPU_FLAGS_X86 CROSSCOMPILE_OPTS CURL_SSL ELIBC ENLIGHTENMENT_MODULES FFTOOLS GPSD_PROTOCOLS GRUB_PLATFORMS INPUT_DEVICES KERNEL L10N LCD_DEVICES LIBREOFFICE_EXTENSIONS LINGUAS LIRC_DEVICES LLVM_TARGETS MONKEYD_PLUGINS NETBEANS_MODULES NGINX_MODULES_HTTP NGINX_MODULES_MAIL NGINX_MODULES_STREAM OFED_DRIVERS OFFICE_IMPLEMENTATION OPENMPI_FABRICS OPENMPI_OFED_FEATURES OPENMPI_RM PHP_TARGETS POSTGRES_TARGETS PYTHON_SINGLE_TARGET PYTHON_TARGETS QEMU_SOFTMMU_TARGETS QEMU_USER_TARGETS ROS_MESSAGES RUBY_TARGETS SANE_BACKENDS USERLAND UWSGI_PLUGINS VIDEO_CARDS VOICEMAIL_STORAGE XFCE_PLUGINS XTABLES_ADDONS"
USE_EXPAND_HIDDEN="ABI_MIPS ABI_PPC ABI_S390 CPU_FLAGS_ARM CROSSCOMPILE_OPTS ELIBC KERNEL USERLAND"
USE_EXPAND_IMPLICIT="ARCH ELIBC KERNEL USERLAND"
USE_EXPAND_UNPREFIXED="ARCH"
USE_EXPAND_VALUES_ARCH="alpha amd64 amd64-fbsd amd64-linux arm arm-linux arm64 hppa ia64 m68k m68k-mint mips nios2 ppc ppc64 ppc64-linux ppc-aix ppc-macos riscv s390 sh sparc sparc64-solaris sparc-fbsd sparc-solaris x64-cygwin x64-macos x64-solaris x86 x86-cygwin x86-fbsd x86-linux x86-macos x86-solaris x86-winnt"
USE_EXPAND_VALUES_ELIBC="AIX bionic Cygwin Darwin DragonFly FreeBSD glibc HPUX Interix mingw mintlib musl NetBSD OpenBSD SunOS uclibc Winnt"
USE_EXPAND_VALUES_KERNEL="AIX Darwin FreeBSD freemint HPUX linux NetBSD OpenBSD SunOS Winnt"
USE_EXPAND_VALUES_USERLAND="BSD GNU"
USE_ORDER="env:pkg:conf:defaults:pkginternal:repo:env.d"
VIDEO_CARDS="intel nouveau"
VIM="/usr/share/vim"
VIMRUNTIME="/usr/share/vim/vim80"
VIM_PLEASE_SET_TITLE="yes"
WINDOWID="14680375"
WINDOWPATH="7"
XAUTHORITY="/home/katt/.Xauthority"
XTABLES_ADDONS="quota2 psd pknock lscan length2 ipv4options ipset ipp2p iface geoip fuzzy condition tee tarpit sysrq steal rawnat logmark ipmark dhcpmac delude chaos account"
```

#### List of installed packages
Running `equery list "*"`, I get a list of all the packages I have installed on
my computer. Feel free to pick them as you wish. :p

```
app-accessibility/at-spi2-atk-2.22.0
app-accessibility/at-spi2-core-2.22.1
app-admin/eselect-1.4.8
app-admin/logrotate-3.12.3-r1
app-admin/pass-1.7.1
app-admin/perl-cleaner-2.25
app-admin/sudo-1.8.20_p2
app-admin/sysklogd-1.5.1
app-arch/bzip2-1.0.6-r8
app-arch/cpio-2.12-r1
app-arch/gzip-1.8
app-arch/libarchive-3.3.1
app-arch/rpm2targz-9.0.0.5g
app-arch/tar-1.29-r1
app-arch/unzip-6.0_p20
app-arch/xz-utils-5.2.3
app-arch/zip-3.0-r3
app-crypt/gentoo-keys-201607021514
app-crypt/gnupg-2.1.20-r1
app-crypt/pinentry-0.9.7-r1
app-crypt/rhash-1.3.5
app-dicts/aspell-en-2016.11.20.0
app-dicts/aspell-sv-0.51.0
app-dicts/myspell-en-20170101
app-dicts/myspell-sv-2.14
app-editors/hexedit-1.2.13
app-editors/vim-8.0.0386
app-editors/vim-core-8.0.0386
app-eselect/eselect-ctags-1.18
app-eselect/eselect-fontconfig-1.1
app-eselect/eselect-lib-bin-symlink-0.1.1
app-eselect/eselect-mesa-0.0.10-r1
app-eselect/eselect-opengl-1.3.1-r4
app-eselect/eselect-pinentry-0.7
app-eselect/eselect-python-20160516
app-eselect/eselect-vi-1.1.9
app-i18n/unicode-data-9.0.0
app-misc/c_rehash-1.7-r1
app-misc/ca-certificates-20161130.3.30.2
app-misc/editor-wrapper-4
app-misc/mime-types-9
app-misc/pax-utils-1.1.7
app-misc/ranger-1.8.1
app-misc/screenfetch-3.7.0
app-office/calcurse-4.2.1
app-portage/cpuid2cpuflags-1
app-portage/elt-patches-20170422
app-portage/gentoolkit-0.4.0
app-portage/layman-2.4.2
app-portage/portage-utils-0.64
app-shells/bash-4.3_p48-r1
app-shells/gentoo-zsh-completions-20150103
app-shells/zsh-5.3.1
app-text/asciidoc-8.6.9-r2
app-text/aspell-0.60.6.1-r3
app-text/build-docbook-catalog-1.19.1
app-text/docbook-xml-dtd-4.1.2-r6
app-text/docbook-xml-dtd-4.2-r2
app-text/docbook-xml-dtd-4.3-r1
app-text/docbook-xml-dtd-4.4-r2
app-text/docbook-xml-dtd-4.5-r1
app-text/docbook-xsl-stylesheets-1.79.1-r1
app-text/dvipsk-5.997_p20170524
app-text/ghostscript-gpl-9.21
app-text/hunspell-1.6.1-r1
app-text/libpaper-1.1.24-r2
app-text/libspectre-0.2.7
app-text/manpager-1
app-text/openjade-1.3.2-r7
app-text/opensp-1.5.2-r3
app-text/po4a-0.47-r1
app-text/poppler-0.57.0
app-text/poppler-data-0.4.7
app-text/ps2pkm-1.8_p20170524
app-text/sgml-common-0.6.3-r5
app-text/texlive-core-2016-r5
app-text/tree-1.7.0
app-text/xdvik-22.87.03
app-text/xmlto-0.0.26-r1
app-text/zathura-0.3.7
app-text/zathura-pdf-poppler-0.2.7
app-text/zathura-ps-0.2.4
app-vim/gentoo-syntax-20170225
dev-db/sqlite-3.19.3
dev-lang/perl-5.24.3
dev-lang/python-2.7.12
dev-lang/python-3.4.5
dev-lang/python-exec-2.4.4
dev-lang/sassc-3.4.5
dev-lang/swig-3.0.12
dev-lang/yasm-1.3.0
dev-libs/atk-2.22.0
dev-libs/confuse-3.0
dev-libs/dbus-glib-0.108
dev-libs/expat-2.2.1
dev-libs/girara-0.2.7
dev-libs/glib-2.50.3-r1
dev-libs/gmp-6.1.0
dev-libs/gobject-introspection-1.50.0
dev-libs/gobject-introspection-common-1.50.0
dev-libs/icu-58.2-r1
dev-libs/iniparser-3.1-r1
dev-libs/json-c-0.12
dev-libs/kpathsea-6.2.3_p20170524
dev-libs/libassuan-2.4.3-r1
dev-libs/libbsd-0.8.6
dev-libs/libcroco-0.6.12-r1
dev-libs/libdaemon-0.14-r2
dev-libs/libev-4.23
dev-libs/libevdev-1.5.7
dev-libs/libevent-2.1.8
dev-libs/libffi-3.2.1
dev-libs/libgcrypt-1.8.1
dev-libs/libgpg-error-1.27-r1
dev-libs/libgudev-231
dev-libs/libinput-1.7.3
dev-libs/libksba-1.3.5-r1
dev-libs/libltdl-2.4.6
dev-libs/libnl-3.2.28
dev-libs/libpcre-8.41
dev-libs/libpipeline-1.4.0
dev-libs/libpthread-stubs-0.4
dev-libs/libsass-3.4.5
dev-libs/libtasn1-4.12-r1
dev-libs/libunistring-0.9.7
dev-libs/libxml2-2.9.4-r3
dev-libs/libxslt-1.1.29-r1
dev-libs/lzo-2.09
dev-libs/mpc-1.0.2-r1
dev-libs/mpfr-3.1.3_p4
dev-libs/nettle-3.3-r2
dev-libs/npth-1.3
dev-libs/nspr-4.13.1
dev-libs/nss-3.29.5
dev-libs/openssl-1.0.2l
dev-libs/popt-1.16-r2
dev-libs/vala-common-0.34.8
dev-libs/yajl-2.1.0
dev-libs/zziplib-0.13.62-r2
dev-perl/AnyEvent-7.120.0
dev-perl/AnyEvent-I3-0.170.0
dev-perl/Authen-SASL-2.160.0-r1
dev-perl/Canary-Stability-2006
dev-perl/DBD-SQLite-1.500.0
dev-perl/DBI-1.636.0
dev-perl/Digest-HMAC-1.30.0-r1
dev-perl/Error-0.170.240
dev-perl/IO-Socket-SSL-2.24.0
dev-perl/JSON-XS-3.10.0
dev-perl/Locale-gettext-1.50.0-r1
dev-perl/Module-Build-0.421.600
dev-perl/Net-Daemon-0.480.0-r1
dev-perl/Net-SMTP-SSL-1.30.0
dev-perl/Net-SSLeay-1.810.0
dev-perl/PlRPC-0.202.0-r2
dev-perl/SGMLSpm-1.03-r7
dev-perl/TermReadKey-2.330.0
dev-perl/Text-CharWidth-0.40.0-r1
dev-perl/Text-Unidecode-1.270.0
dev-perl/Text-WrapI18N-0.60.0-r1
dev-perl/Types-Serialiser-1.0.0
dev-perl/Unicode-EastAsianWidth-1.330.0-r1
dev-perl/XML-Parser-2.440.0
dev-perl/common-sense-3.740.0
dev-perl/libintl-perl-1.240.0-r2
dev-python/PySocks-1.6.7
dev-python/appdirs-1.4.3
dev-python/asn1crypto-0.22.0
dev-python/certifi-2017.4.17
dev-python/cffi-1.9.1
dev-python/chardet-3.0.4
dev-python/cryptography-2.0.2
dev-python/dbus-python-1.2.4
dev-python/docutils-0.13.1
dev-python/enum34-1.1.6
dev-python/idna-2.5
dev-python/ipaddress-1.0.18
dev-python/m2crypto-0.24.0
dev-python/markdown-2.6.5
dev-python/ndg-httpsclient-0.4.0
dev-python/packaging-16.8
dev-python/pip-9.0.1-r1
dev-python/ply-3.9
dev-python/pyGPG-0.2
dev-python/pyasn1-0.2.3
dev-python/pycparser-2.14
dev-python/pygments-2.1.1
dev-python/pygobject-2.28.6-r55
dev-python/pyopenssl-17.2.0
dev-python/pyparsing-2.2.0
dev-python/pyxattr-0.5.5
dev-python/requests-2.18.2-r1
dev-python/setuptools-34.0.2-r1
dev-python/six-1.10.0
dev-python/ssl-fetch-0.4
dev-python/urllib3-1.22
dev-python/urwid-1.3.1
dev-tex/bibtexu-3.71_p20170524
dev-texlive/texlive-basic-2016
dev-texlive/texlive-fontsrecommended-2016
dev-texlive/texlive-fontutils-2016
dev-texlive/texlive-genericrecommended-2016
dev-texlive/texlive-latex-2016
dev-texlive/texlive-latexrecommended-2016
dev-util/cmake-3.8.2
dev-util/ctags-20161028
dev-util/desktop-file-utils-0.23
dev-util/gdbus-codegen-2.50.3
dev-util/gperf-3.0.4
dev-util/gtk-doc-am-1.25-r1
dev-util/gtk-update-icon-cache-3.22.2
dev-util/intltool-0.51.0-r1
dev-util/ninja-1.7.2
dev-util/pkgconfig-0.28-r2
dev-util/re2c-0.16
dev-vcs/git-2.13.6
gnome-base/gsettings-desktop-schemas-3.22.0
gnome-base/librsvg-2.40.18
media-fonts/dejavu-2.35
media-fonts/emojione-color-font-1.3-r4
media-fonts/encodings-1.0.4
media-fonts/font-alias-1.0.3-r1
media-fonts/font-misc-misc-1.1.2
media-fonts/font-util-1.3.1
media-fonts/ttf-bitstream-vera-1.10-r3
media-fonts/urw-fonts-2.4.9
media-gfx/feh-2.18.3
media-gfx/gimp-2.8.22
media-gfx/graphite2-1.3.10
media-gfx/qrencode-3.4.4-r1
media-gfx/scrot-0.8_p13
media-libs/alsa-lib-1.1.2
media-libs/babl-0.1.18
media-libs/fontconfig-2.12.4
media-libs/freetype-2.8
media-libs/gegl-0.2.0-r2
media-libs/giblib-1.2.4
media-libs/giflib-5.1.4
media-libs/glew-1.13.0
media-libs/glu-9.0.0-r1
media-libs/harfbuzz-1.4.6-r2
media-libs/imlib2-1.4.9
media-libs/jbig2dec-0.13-r4
media-libs/lcms-2.8-r1
media-libs/libepoxy-1.4.2
media-libs/libexif-0.6.21-r1
media-libs/libid3tag-0.15.1b-r4
media-libs/libjpeg-turbo-1.5.1
media-libs/libpng-1.6.29
media-libs/libsamplerate-0.1.9
media-libs/mesa-17.0.6
media-libs/openjpeg-2.3.0
media-libs/tiff-4.0.8
media-sound/alsa-utils-1.1.2
media-video/ffmpeg-3.3.4
net-dns/libidn-1.33
net-dns/libidn2-2.0.4
net-dns/openresolv-3.9.0
net-firewall/iptables-1.4.21-r1
net-im/bitlbee-3.5.1
net-irc/weechat-1.9.1
net-libs/gnutls-3.5.15
net-libs/libmnl-1.0.4
net-libs/libotr-4.1.1
net-misc/curl-7.55.1
net-misc/dhcpcd-6.11.3
net-misc/iputils-20151218
net-misc/netifrc-0.5.1
net-misc/ntp-4.2.8_p10-r1
net-misc/openssh-7.5_p1-r1
net-misc/rsync-3.1.2
net-misc/wget-1.19.1-r1
net-misc/wicd-1.7.4-r2
net-vpn/openvpn-2.4.4
net-wireless/crda-3.18-r1
net-wireless/rfkill-0.5
net-wireless/wireless-regdb-20170307
net-wireless/wireless-tools-30_pre9
net-wireless/wpa_supplicant-2.6-r3
perl-core/File-Path-2.130.0
perl-core/File-Temp-0.230.400-r1
sys-apps/acl-2.2.52-r1
sys-apps/attr-2.4.47-r2
sys-apps/baselayout-2.4.1-r2
sys-apps/busybox-1.25.1
sys-apps/coreutils-8.26
sys-apps/dbus-1.10.18
sys-apps/debianutils-4.7
sys-apps/diffutils-3.5
sys-apps/ed-1.13
sys-apps/file-5.32
sys-apps/findutils-4.6.0-r1
sys-apps/gawk-4.1.3
sys-apps/gentoo-functions-0.12
sys-apps/grep-3.0
sys-apps/groff-1.22.2
sys-apps/help2man-1.47.4
sys-apps/hwids-20170328
sys-apps/ifplugd-0.28-r10
sys-apps/install-xattr-0.5
sys-apps/iproute2-4.4.0
sys-apps/kbd-2.0.3
sys-apps/kmod-23
sys-apps/less-487
sys-apps/man-db-2.7.6.1-r2
sys-apps/man-pages-4.09
sys-apps/man-pages-posix-2013a
sys-apps/mlocate-0.26-r2
sys-apps/net-tools-1.60_p20161110235919
sys-apps/openrc-0.32.1
sys-apps/opentmpfiles-0.1.3
sys-apps/portage-2.3.8
sys-apps/rasdaemon-0.5.9
sys-apps/sandbox-2.10-r3
sys-apps/sed-4.2.2
sys-apps/shadow-4.5
sys-apps/sysvinit-2.88-r9
sys-apps/texinfo-6.3
sys-apps/util-linux-2.28.2
sys-apps/which-2.21
sys-auth/pambase-20150213
sys-boot/grub-2.02
sys-devel/autoconf-2.13
sys-devel/autoconf-2.69
sys-devel/autoconf-wrapper-13
sys-devel/automake-1.11.6-r1
sys-devel/automake-1.15-r2
sys-devel/automake-wrapper-10
sys-devel/bc-1.06.95-r1
sys-devel/binutils-2.28.1
sys-devel/binutils-config-5-r3
sys-devel/bison-3.0.4-r1
sys-devel/flex-2.6.1
sys-devel/gcc-5.4.0-r3
sys-devel/gcc-config-1.8-r1
sys-devel/gettext-0.19.8.1
sys-devel/gnuconfig-20161104
sys-devel/libtool-2.4.6-r3
sys-devel/llvm-3.9.1-r1
sys-devel/m4-1.4.17
sys-devel/make-4.2.1
sys-devel/patch-2.7.5
sys-fs/e2fsprogs-1.43.3-r1
sys-fs/eudev-3.1.5
sys-fs/udev-init-scripts-32
sys-kernel/gentoo-sources-4.12.12
sys-kernel/linux-firmware-20170314
sys-kernel/linux-headers-4.4
sys-libs/binutils-libs-2.28.1
sys-libs/cracklib-2.9.6-r1
sys-libs/db-5.3.28-r2
sys-libs/e2fsprogs-libs-1.43.3
sys-libs/gdbm-1.11
sys-libs/glibc-2.23-r4
sys-libs/libcap-2.24-r2
sys-libs/libseccomp-2.3.2
sys-libs/mtdev-1.1.5
sys-libs/ncurses-6.0-r1
sys-libs/pam-1.2.1
sys-libs/readline-6.3_p8-r3
sys-libs/timezone-data-2017a
sys-libs/zlib-1.2.11-r1
sys-power/acpid-2.0.28
sys-process/cronbase-0.3.7-r6
sys-process/cronie-1.5.0-r1
sys-process/htop-2.0.2
sys-process/procps-3.3.12
sys-process/psmisc-22.21-r3
virtual/acl-0-r2
virtual/cron-0-r1
virtual/dev-manager-0
virtual/editor-0
virtual/ffmpeg-9-r2
virtual/freedesktop-icon-theme-0-r2
virtual/glu-9.0-r1
virtual/jpeg-0-r2
virtual/latex-base-1.0
virtual/libc-1
virtual/libffi-3.0.13-r1
virtual/libgudev-230
virtual/libiconv-0-r2
virtual/libintl-0-r2
virtual/libudev-232
virtual/logger-0
virtual/man-0-r1
virtual/modutils-0
virtual/opengl-7.0-r1
virtual/os-headers-0
virtual/package-manager-0
virtual/pager-0
virtual/pam-0-r1
virtual/perl-CPAN-Meta-2.150.5-r1
virtual/perl-CPAN-Meta-YAML-0.18.0-r2
virtual/perl-Data-Dumper-2.160.0-r1
virtual/perl-Digest-MD5-2.540.0-r3
virtual/perl-Digest-SHA-5.950.100_rc-r4
virtual/perl-ExtUtils-CBuilder-0.280.225-r2
virtual/perl-ExtUtils-Install-2.40.0-r3
virtual/perl-ExtUtils-MakeMaker-7.100.200_rc-r2
virtual/perl-ExtUtils-Manifest-1.700.0-r4
virtual/perl-ExtUtils-ParseXS-3.310.0-r1
virtual/perl-File-Path-2.130.0
virtual/perl-File-Spec-3.630.100_rc-r2
virtual/perl-File-Temp-0.230.400-r5
virtual/perl-Getopt-Long-2.480.0-r1
virtual/perl-JSON-PP-2.273.0.100_rc-r4
virtual/perl-MIME-Base64-3.150.0-r3
virtual/perl-Module-Metadata-1.0.31-r1
virtual/perl-Parse-CPAN-Meta-1.441.700.100_rc-r2
virtual/perl-Perl-OSType-1.9.0-r1
virtual/perl-Scalar-List-Utils-1.420.200_rc-r1
virtual/perl-Storable-2.560.100_rc-r2
virtual/perl-Sys-Syslog-0.330.100_rc-r4
virtual/perl-Test-Harness-3.360.100_rc-r2
virtual/perl-Text-ParseWords-3.300.0-r3
virtual/perl-libnet-3.80.100_rc-r2
virtual/perl-version-0.991.600-r1
virtual/pkgconfig-0-r1
virtual/python-ipaddress-1.0-r1
virtual/service-manager-0
virtual/shadow-0
virtual/ssh-0
virtual/tmpfiles-0
virtual/ttf-fonts-1-r1
virtual/udev-217
virtual/yacc-0
www-client/firefox-52.4.0
www-client/links-2.14
x11-apps/bdftopcf-1.0.5
x11-apps/iceauth-1.0.7
x11-apps/mesa-progs-8.3.0
x11-apps/mkfontdir-1.0.7
x11-apps/mkfontscale-1.1.2
x11-apps/rgb-1.0.6
x11-apps/xauth-1.0.10
x11-apps/xbacklight-1.2.1-r1
x11-apps/xev-1.2.2
x11-apps/xhost-1.0.7
x11-apps/xinit-1.3.4-r1
x11-apps/xkbcomp-1.4.0
x11-apps/xrandr-1.5.0
x11-apps/xrdb-1.1.0
x11-base/xorg-drivers-1.19
x11-base/xorg-server-1.19.4
x11-drivers/xf86-input-keyboard-1.9.0
x11-drivers/xf86-input-libinput-0.25.1
x11-drivers/xf86-input-mouse-1.9.2
x11-drivers/xf86-video-intel-2.99.917_p20170313
x11-drivers/xf86-video-nouveau-1.0.15
x11-libs/cairo-1.14.8
x11-libs/gdk-pixbuf-2.36.9
x11-libs/gtk+-2.24.31-r1
x11-libs/gtk+-3.22.16
x11-libs/libICE-1.0.9-r1
x11-libs/libSM-1.2.2-r1
x11-libs/libX11-1.6.5
x11-libs/libXScrnSaver-1.2.2-r1
x11-libs/libXau-1.0.8
x11-libs/libXaw-1.0.13
x11-libs/libXcomposite-0.4.4-r1
x11-libs/libXcursor-1.1.14
x11-libs/libXdamage-1.1.4-r1
x11-libs/libXdmcp-1.1.2-r1
x11-libs/libXext-1.3.3
x11-libs/libXfixes-5.0.3
x11-libs/libXfont-1.5.2
x11-libs/libXfont2-2.0.1
x11-libs/libXft-2.3.2
x11-libs/libXi-1.7.9
x11-libs/libXinerama-1.1.3
x11-libs/libXmu-1.1.2
x11-libs/libXp-1.0.3
x11-libs/libXpm-3.5.12
x11-libs/libXrandr-1.5.1
x11-libs/libXrender-0.9.10
x11-libs/libXt-1.1.5
x11-libs/libXtst-1.2.3
x11-libs/libXv-1.0.11
x11-libs/libXxf86vm-1.1.4
x11-libs/libdrm-2.4.80
x11-libs/libfontenc-1.1.3
x11-libs/libpciaccess-0.13.4
x11-libs/libxcb-1.12-r2
x11-libs/libxkbcommon-0.7.1
x11-libs/libxkbfile-1.0.9
x11-libs/libxshmfence-1.2
x11-libs/pango-1.40.6
x11-libs/pixman-0.34.0
x11-libs/startup-notification-0.12-r1
x11-libs/xcb-util-0.4.0
x11-libs/xcb-util-cursor-0.1.3-r1
x11-libs/xcb-util-image-0.4.0
x11-libs/xcb-util-keysyms-0.4.0
x11-libs/xcb-util-renderutil-0.3.9-r1
x11-libs/xcb-util-wm-0.4.1-r1
x11-libs/xcb-util-xrm-1.2
x11-libs/xtrans-1.3.5
x11-misc/i3lock-2.8
x11-misc/i3status-2.11
x11-misc/rofi-1.3.1
x11-misc/shared-mime-info-1.8
x11-misc/urxvt-perls-2.2
x11-misc/util-macros-1.19.1
x11-misc/xbitmaps-1.1.1-r1
x11-misc/xclip-0.13
x11-misc/xkeyboard-config-2.20
x11-misc/xsel-1.2.0-r1
x11-proto/bigreqsproto-1.1.2
x11-proto/compositeproto-0.4.2-r1
x11-proto/damageproto-1.2.1-r1
x11-proto/dri2proto-2.8-r1
x11-proto/dri3proto-1.0
x11-proto/fixesproto-5.0-r1
x11-proto/fontsproto-2.1.3
x11-proto/glproto-1.4.17-r1
x11-proto/inputproto-2.3.2
x11-proto/kbproto-1.0.7
x11-proto/presentproto-1.1
x11-proto/printproto-1.0.5-r1
x11-proto/randrproto-1.5.0
x11-proto/recordproto-1.14.2-r1
x11-proto/renderproto-0.11.1-r1
x11-proto/resourceproto-1.2.0
x11-proto/scrnsaverproto-1.2.2-r1
x11-proto/trapproto-3.4.3
x11-proto/videoproto-2.3.3
x11-proto/xcb-proto-1.12-r2
x11-proto/xcmiscproto-1.2.2
x11-proto/xextproto-7.3.0
x11-proto/xf86bigfontproto-1.2.0-r1
x11-proto/xf86dgaproto-2.1-r2
x11-proto/xf86driproto-2.1.1-r1
x11-proto/xf86rushproto-1.1.2-r1
x11-proto/xf86vidmodeproto-2.3.1-r1
x11-proto/xineramaproto-1.2.1-r1
x11-proto/xproto-7.0.31
x11-terms/rxvt-unicode-9.21
x11-themes/adwaita-icon-theme-3.22.0-r2
x11-themes/gnome-themes-standard-3.22.3
x11-themes/gtk-engines-adwaita-3.22.3
x11-themes/hicolor-icon-theme-0.15
x11-wm/i3-4.13-r1
```

### Installed Vim plugins
Vim plugins are installed with the help of
[tpope/vim-pathogen](https://github.com/tpope/vim-pathogen). Here are all the
Vim plugin's installed, placed in `~/.vim/bundle`. They are not included in this
configurations repository.

```
/home/katt/.vim/bundle/
├── conque.vim
├── emmet-vim
├── lean.vim
├── lightline.vim
├── linediff.vim
└── loremipsum

6 directories, 0 files
```

### `iptables` rules
Some `iptables` (net-firewall/iptables) rules. I don't know where to put them.

```
katt@gentoo ~ % sudo iptables -S 
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p tcp -m tcp --dport 6667 -j ACCEPT

katt@gentoo ~ % sudo ip6tables -S 
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p tcp -m tcp --dport 6667 -j ACCEPT
```
