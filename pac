function FindProxyForURL(url, host) {

	var urlRegex = /\(?(?:(http|https|ftp):\/\/)?(?:((?:[^\W\s]|\.|-|[:]{1})+)@{1})?((?:www.)?(?:[^\W\s]|\.|-)+[\.][^\W\s]{2,4}|localhost(?=\/)|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})(?::(\d*))?([\/]?[^\s\?]*[\/]{1})*(?:\/?([^\s\n\?\[\]\{\}\#]*(?:(?=\.)){1}|[^\s\n\?\[\]\{\}\.\#]*)?([\.]{1}[^\s\?\#]*)?)?(?:\?{1}([^\s\n\#\[\]]*))?([\#][^\s\n]*)?\)?/gi;
	var urlArray = urlRegex.exec(url);
	var port = urlArray[4];

	var isIPv4addr = /^(\d+.){3}\d+$/;
	if (dnsDomainLevels(host)==0) return DIRECT;
	if (isIPv4addr.test(host)) return DIRECT;
	if (
		( (url.substring(0, 5) != "http:" && url.substring(0, 6) != "https:" ) ) ||
		( (port != 80) && (port != 443) && (port != undefined) )
	) {
		return "DIRECT";
	}
	if (
		(shExpMatch(host, "*.bbc.co.uk")) ||
		(shExpMatch(host, "*.bbc.com")) ||
		(shExpMatch(host, "*.bbci.co.uk")) ||
		(shExpMatch(host, "*.twitter.com")) ||
		(shExpMatch(host, "*.twimg.com")) ||
		(host == "twitter.com") ||
		(host == "facebook.com") ||
		(shExpMatch(host, "*.facebook.com")) ||
		(host == "www.spotify.com") ||
		(host == "www.pandora.com") ||
		(shExpMatch(host, "*.pandora.com")) ||
		(host == "hulu.com") ||
		(shExpMatch(host, "*.hulu.com")) ||
		(host == "netflix.com") ||
		(shExpMatch(host, "*.netflix.com")) ||
		(host == "ios.nccp.netflix.com") ||
		(host == "a1015.dscg.akamai.net") ||
		(host == "ais.channel4.com") ||
		(host == "watchlive.channel4.com") ||
		(shExpMatch(host, "*.v.fwmrm.net")) ||
		(shExpMatch(host, "*.youtube.com")) ||
		(host == "youtube.com") ||
		(shExpMatch(host, "*.ytimg.com")) ||
		(shExpMatch(host, "*.gstatic.com")) ||
		(shExpMatch(host, "*.googleusercontent.com")) ||
		(shExpMatch(host, "*.google.com")) ||
		(shExpMatch(host, "*.googleapis.com")) ||
		(shExpMatch(host, "*.ggpht.com")) ||
		(shExpMatch(host, "*.googlevideo.com")) ||
		(host == "12vpn.net") ||
		(host == "golang.org") ||
		(host == "hub.docker.com") ||
		(shExpMatch(host, "*.mktoresp.com")) ||
		(host == "www.yiiframework.com") ||
		(host == "fb.me")
	) {
		return "HTTPS hkgaa.securechromenetwork.com:443";
	}

}
