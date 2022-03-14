AC_PREREQ(2.52)

AC_INIT([Apertium Finnish-German], [0.1.0], [https://github.com/apertium/apertium-fin-deu/issues], [apertium-fin-deu], [https://wiki.apertium.org/wiki/Apertium-fin-deu])
AM_INIT_AUTOMAKE
AC_PROG_AWK

PKG_CHECK_MODULES(APERTIUM, apertium >= 3.6.1)
PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox >= 3.5.1)


PKG_CHECK_MODULES(HFST, hfst >= 3.15.1)

PKG_CHECK_MODULES(CG3, cg3 >= 1.3.1)
PKG_CHECK_MODULES(APERTIUM_LEX_TOOLS, apertium-lex-tools >= 0.2.3)



PKG_CHECK_MODULES(APERTIUM_RECURSIVE, apertium-recursive >= 0.0.1)

AC_PATH_PROGS(ZCAT, [gzcat zcat], [false])
AS_IF([test x$ZCAT = xfalse], [AC_MSG_ERROR([You don't have zcat nor gzcat installed])])

AC_PATH_PROG([NIST_BLEU13A], [mteval-v13a.pl], [false])
AC_PATH_PROG([WRAP_XML], [wrap-xml.prompsit-version.sh], [false])

AC_PATH_PROGS([SAXON], [saxon9-transform], [false])
AM_CONDITIONAL([CAN_SAXON], [test x$SAXON != xfalse])

m4_ifdef([AP_CHECK_LING],[],[AC_MSG_ERROR([AP_CHECK_LING not defined, is apertium.m4 in ACLOCAL_PATH? See: https://wiki.apertium.org/wiki/Installation_troubleshooting])])


AP_CHECK_LING([1], [apertium-fin])
AP_CHECK_LING([2], [apertium-deu])

PKG_CHECK_MODULES(REGTEST, apertium-regtest >= 0.0.1, [],
                  [AC_MSG_WARN([Running tests requires apertium-regtest])])

AP_MKINCLUDE

AC_CONFIG_FILES([Makefile docs/Makefile apertium-fin-deu.pc])

AC_OUTPUT
