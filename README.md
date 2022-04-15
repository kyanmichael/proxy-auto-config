# Proxy Auto-Configuration (PAC)

PAC is a method for conditionally proxying HTTP/HTTPS network requests.  Each request is either allowed to continue
unproxied to its destination, or is forwarded to a specified proxy server, according to whether specific conditions are
met.  This is very useful for proxying only specific hosts/domains, or for sending specific requests to specific
proxies, etc.  If you use proxy tools such as [Proxyman](https://proxyman.io) or
[Charles](https://www.charlesproxy.com), you may find PAC useful.

In macOS, PAC is configured in `macOS System Preferences > Network > Advanced > Proxies > Automatic Proxy Configuration`,
and it can also be configured programmatically using the `networksetup` command-line tool.


## Documentation

* **MDN**  —  [Proxy Auto-Configuration (PAC) file](https://developer.mozilla.org/en-US/docs/web/http/proxy_servers_and_tunneling/proxy_auto-configuration_pac_file)
* **Wikipedia**  —  [Proxy auto-config](https://en.wikipedia.org/wiki/Proxy_auto-config)
* **Apple Support**
  * [Enter proxy server settings on Mac](https://support.apple.com/en-gb/guide/mac-help/mchlp25912/mac)
  * [Change proxy settings in Network preferences on Mac](https://support.apple.com/en-gb/guide/mac-help/mchlp2591/mac)


## Instructions

1. Install [**Node.js and NPM**](https://nodejs.org/en/download/) if you don't already have them installed (you may wish
   to use [NVM](https://github.com/nvm-sh/nvm) to do this).

2. Clone this git repo.

3. Within this repo's root directory, run [**`npm install`**](https://docs.npmjs.com/cli/v8/commands/npm-install).

4. Edit the [**`www/proxy-auto-config.pac`**](www/proxy-auto-config.pac) file to
   [configure your proxying conditions](https://developer.mozilla.org/en-US/docs/web/http/proxy_servers_and_tunneling/proxy_auto-configuration_pac_file).

5. Run **`./show-pac-and-start-server.sh`** — this will print the contents of `www/proxy-auto-config.pac` for
   reference, and then statically serve the PAC file at http://127.0.0.1:5252/proxy-auto-config.pac

6. To verify that the PAC file is being correctly served, you can run **`./check-pac-server.sh`** if you wish.

7. The following scripts are available for controlling the macOS PAC from the command-line.  Note that you'll probably
   need to edit these scripts to change the network service name from `'Wi-Fi'` to the name of your network service in
   `macOS System Preferences > Network`.
   * **`proxy-control-scripts/proxy-status.sh`**
   * **`proxy-control-scripts/enable-proxy.sh`**
   * **`proxy-control-scripts/disable-proxy.sh`**
     * Remember to run this when you've finished your proxying work!
   * **`proxy-control-scripts/reload-proxy.sh`**
     * Useful if you've just edited `www/proxy-auto-config.pac` when the macOS PAC is already enabled.

8. You can also view and modify the macOS PAC status in
   `macOS System Preferences > Network > Advanced > Proxies > Automatic Proxy Configuration`.
