---
layout: post
title:  "Announcing Wait Wait Reports Site Version 3!"
date:   2024-11-02 18:45:00 -0700
tags:   waitwait updates
excerpt_separator: <!--more-->
---

Earlier this year, I migrated the [Wait Wait Stats Page](https://stats.wwdt.me) and the [Wait Wait Graphs Site](https://graphs.wwdt.me) from the Materialize frontend toolkit to the Bootstrap frontend toolkit. Today, I announce that the [Wait Wait Reports Site](https://reports.wwdt.me) version 3 has been released and uses Bootstrap.

<!--more-->

Before version 3, the Reports Site used [Pure CSS](https://pure-css.github.io/) to provide a lightweight, minimal look and feel for a data-intensive website. One downside of Pure CSS is its limited support for responsive tables, which would require significant work to replicate the responsive navigation and form layout features that Bootstrap has included.

| [![Wait Wait Reports Site v3 Main Page (Light Mode)](/assets/images/waitwait/20241102/reports-v3-main-light.png "Wait Wait Reports Site v3 Main Page")](/assets/images/waitwait/20241102/reports-v3-main-light.png) | [![Wait Wait Reports Site v3 Main Page (Dark Mode)](/assets/images/waitwait/20241102/reports-v3-main-dark.png "Wait Wait Reports Site v3 Main Page (Dark Mode)")](/assets/images/waitwait/20241102/reports-v3-main-dark.png) |
| <center>Main Page (Light Mode)</center> | <center>Main Page (Dark Mode)</center> |

The new version of the Reports Site uses the same theme as the Stats Page and Graphs Site, albeit with additional cards, forms, and alert box styles. The updated Reports Site also includes automatic light and dark mode support, with the option of choosing which mode to use.

| [![Wait Wait Reports Site v3 Shows Index Page](/assets/images/waitwait/20241102/reports-v3-shows-index.png "Wait Wait Reports Site v3 Shows Index Page")](/assets/images/waitwait/20241102/reports-v3-shows-index.png) | [![Wait Wait Reports Site v3 Panelist vs Panelist: All Report](/assets/images/waitwait/20241102/reports-v3-panelist-pvp.png "Wait Wait Reports Site v3 Panelist vs Panelist: All Report")](/assets/images/waitwait/20241102/reports-v3-panelist-pvp.png) |
| <center>Shows Index Page</center> | <center>Panelists vs Panelist: All Report</center> |

By leveraging Bootstrap's response design elements, the Reports Site will be easier to view and use on devices with smaller screens. Since all reports present data using tables, horizontal scrolling is available when viewing tables on smaller screens.

The new version of the Reports Site also includes behind-the-scenes changes and makes report URLs more consistent across the board. Links to the old bookmark URLs should still work, and the site should automatically redirect users to the new URL. If you find any links that return a page not found message, please [open an issue](https://github.com/questionlp/reports.wwdt.me/issues) on GitHub and provide the link you used.

| [![Wait Wait Reports Site v3 Shows Search Shows by Multiple Panelists Alert Message](/assets/images/waitwait/20241102/reports-v3-shows-search-alert.png "Wait Wait Reports Site v3 Shows Search Shows by Multiple Panelists Alert Message")](/assets/images/waitwait/20241102/reports-v3-shows-search-alert.png) | [![Wait Wait Reports Site v3 Shows Search Shows by Multiple Panelists Search Results](/assets/images/waitwait/20241102/reports-v3-shows-search-results.png "Wait Wait Reports Site v3 Shows Search Shows by Multiple Panelists Search Results")](/assets/images/waitwait/20241102/reports-v3-shows-search-results.png) |
| <center>Shows Search Shows by Multiple Panelists Alert Message</center> | <center>Shows Search Shows by Multiple Panelists Search Results</center> |

For additional information on what has changed and new features included in version 3, check out the [release notes](https://github.com/questionlp/reports.wwdt.me/releases/tag/v3.0.0).

Source code for the Wait Wait Reports Site is [available on GitHub](https://github.com/questionlp/reports.wwdt.me) and published under the terms of the [Apache License 2.0](https://github.com/questionlp/reports.wwdt.me/blob/main/LICENSE).