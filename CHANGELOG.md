wp-cli CHANGELOG
================

0.2.0
-----
- [Stefan Rusu] Fix Chef 13 deprecation by removing the sensitive attribute (Property `sensitive` of resource `wp_cli_command` overwrites an existing method. Please use a different property name. This will raise an exception in Chef 13. (CHEF-11)).
- [Stefan Rusu] Use node.default in place of node.set.

0.1.4
-----
- [jespada] Enhance/hide sensitive data

0.1.3
-----

- [Maks3w] Recipe for bash completition.
- [Maks3w] Create a chef definition for abstract the use of wp-cli

0.1.2
-----
- [Maks3w] Use /usr/local for binaries and share
- [cimocimocimo] Fixes error with setting node attribute

0.1.1
-----
- [Rubem Nakamura] - Added license and Added metadata.json

0.1.0
-----
- [Rubem Nakamura] - Initial release of wp-cli
