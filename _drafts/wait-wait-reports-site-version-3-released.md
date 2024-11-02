---
layout: post
title:  "Wait Wait Reports Site Version 3 Released"
date:   2024-11-02 15:15:00 -0700
tags:   waitwait updates
excerpt_separator: <!--more-->
---

Earlier this year, I migrated the [Wait Wait Stats Page](https://stats.wwdt.me) and the [Wait Wait Graphs Site](https://graphs.wwdt.me) from the Materialize frontend toolkit to the Bootstrap frontend toolkit. Today, I announce that the [Wait Wait Reports Site](https://reports.wwdt.me) version 3 has been released and uses Bootstrap.

<!--more-->

Prior to version 3, the Reports Site used [Pure CSS](https://pure-css.github.io/) to provide a lightweight, minimal look and feel for a data-intensive website. The one downside of Pure CSS is its limited support for responsive tables, which would require a significant amount of work to replicate the responsive navigation and form layout features that Bootstrap has included.

The new Reports Site uses the same theme as the Stats Page and Graphs Site, albeit with additional cards, forms, and alert box styles. Instead of depending on Google Fonts, the site hosts a local copy of the Bootstrap Icons and IBM Plex web fonts.

By leveraging Bootstrap's response design elements, the Reports Site will be easier to view and use on devices with smaller screens. Since all of the reports present data using tables, horizontal scrolling is available when viewing wider tables on smaller screens.

The new version of the Reports Site also includes behind-the-scenes changes, as well as making report URLs more consistent across the board. Links to the old bookmark URLs should still work and the site should automatically redirect to the new URL. If you find any links that return a page not found message, please [open an issue](https://github.com/questionlp/reports.wwdt.me/issues) on GitHub and provide the link you used.

For additional information on what has changed and new features included in version 3, check out the [release notes](https://github.com/questionlp/reports.wwdt.me/releases/tag/v3.0.0).
