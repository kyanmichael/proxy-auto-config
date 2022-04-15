/**
 * @see https://developer.mozilla.org/en-US/docs/web/http/proxy_servers_and_tunneling/proxy_auto-configuration_pac_file
 */
function FindProxyForURL(url, host) {

  const hostsToProxy = [
    // Example:
    // 'www.google.com'
  ];

  const hostsPatternsToProxy = [
    // Example:
    // /\.google\.com/
  ];

  if (hostsToProxy.includes(host)) {
    return 'PROXY localhost:8888';
  }

  for (const hostPattern of hostsPatternsToProxy) {
    if (host.match(hostPattern)) {
      return 'PROXY localhost:8888';
    }
  }

  return 'DIRECT';

}
