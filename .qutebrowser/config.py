from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer

config: ConfigAPI = config
c: ConfigContainer = c

raw_git = "https://raw.githubusercontent.com/"

config.set(
    "content.blocking.adblock.lists",
    [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://easylist.to/easylist/fanboy-annoyance.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/filters.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/annoyances.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/badware.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/privacy.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/unbreak.txt",
    ],
)
