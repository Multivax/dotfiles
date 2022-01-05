from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer
from qutebrowser.api import interceptor

config: ConfigAPI = config
config.load_autoconfig()
c: ConfigContainer = c

raw_git = "https://raw.githubusercontent.com/"

config.set(
    "content.blocking.adblock.lists",
    [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://easylist.to/easylist/fanboy-annoyance.txt",
        'https://easylist-downloads.adblockplus.org/easylistdutch.txt',
        'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt',
        'https://www.i-dont-care-about-cookies.eu/abp/',
        'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt',
        raw_git+"uBlockOrigin/uAssets/master/filters/filters.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/annoyances.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/badware.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/privacy.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
        raw_git+"uBlockOrigin/uAssets/master/filters/unbreak.txt",
    ],
)

# aliasses
c.aliases = {
    "w": "session-save --only-active-window",
    "q": "close",
    "l": "session-load"
}

# block youtube ads from playing. still have to skip them however.

# def filter_yt(info: interceptor.Request):
# 	"""Block the given request if necessary."""
# 	url = info.request_url
# 	if (url.host() == 'www.youtube.com' and
# 			url.path() == '/pagead' and
# 			'&adformat=' in url.query()):
# 		info.block()
# 
# 
# interceptor.register(filter_yt)
