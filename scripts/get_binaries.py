"""
This script is used to download & extract the binary CLI tools
from GitHub releases
"""

import urllib.requests as requests

"""
TODO: Download & move the binaries into their proper place i.e "c:/tools"

For future reference:
    - The endpoint to perform a GET request to is at:
      https://api.github.com/repos/{org_name}/{repo_name}/releases/latest
    - Documentation to refer to download the latest release asset is available
      at: https://docs.github.com/en/rest/reference/repos#get-the-latest-release
"""
