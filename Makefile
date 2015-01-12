# Dependency versions
PYTHON_BIN=python3
BOOTSTRAP_VERSION=3.3.1

# Paths
TMP=/tmp

# Bins
MKDIR=mkdir -p
MV=mv -f
RM=rm -rf
UNZIP=unzip -u
WGET=wget --directory-prefix=$(TMP)

deps: dirs www/static/bootstrap

dirs: www/static
	$(MKDIR) $+

www/static/bootstrap:
	$(WGET) https://github.com/twbs/bootstrap/releases/download/v$(BOOTSTRAP_VERSION)/bootstrap-$(BOOTSTRAP_VERSION)-dist.zip
	$(UNZIP) -d www/static $(TMP)/bootstrap-3.3.1-dist.zip
	$(RM) $(TMP)/bootstrap-3.3.1-dist.zip
	$(MV) www/static/dist $@

virtualenv:
	virtualenv -p$$(which $(PYTHON_BIN)) env
