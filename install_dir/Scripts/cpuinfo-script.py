#!E:\NewCura2\cura-build-environment\install_dir\bin\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'py-cpuinfo==7.0.0','console_scripts','cpuinfo'
__requires__ = 'py-cpuinfo==7.0.0'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('py-cpuinfo==7.0.0', 'console_scripts', 'cpuinfo')()
    )
