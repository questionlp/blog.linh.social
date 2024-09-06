---
layout: post
title:  "Announcing Wait Wait Stats Page Version 6!"
date:   2024-08-31 11:00:00 -0700
tags:   waitwait update
excerpt_separator: <!--more-->
---

It was about 2.5 years ago that I published version 5.0 of the [Wait Wait Stats Page](https://stats.wwdt.me/), which two significant changes behind the scenes: migrating to version 2 of the Wait Wait Stats Library ([wwdtm](https://github.com/questionlp/wwdtm)) and using Flask Blueprints.

Since then, I have added several new features, including support for multiple Bluff the Listener segments, support for non-integer panelist scores, and adding location maps and coordinates to location details pages.

<!--more-->

## Goodbye Materialize, Hello Bootstrap

Both versions 4 and 5 of the Stats Page use version 1 of the [Materialize](https://materializecss.com/) frontend toolkit to provide a foundation for building responsive websites for various devices, especially smartphones. The team that [forked](https://materializeweb.com/) the original Materialize toolkit has since announced version 2 with significant breaking changes. The amount of work to get the Stats Page working and looking how I wanted would be similar to switching to a different frontend toolkit, such as Bootstrap.

I created a proof-of-concept to test different Bootstrap components, utilities, and theming options and to set a design similar to the one using Materialize. While I wanted the new version to look similar to version 5, making the site more accessible was an important goal.

| [![Wait Wait Stats Page v6 Main Page](/assets/images/waitwait/20240903/wait-wait-stats-v6-home.png "Wait Wait Stats Page v6 Main Page")](/assets/images/waitwait/20240903/wait-wait-stats-v6-home.png) | [![Wait Wait Stats Page v6 Location Details](/assets/images/waitwait/20240903/wait-wait-stats-v6-location.png "Wait Wait Stats Page v6 Location Details")](/assets/images/waitwait/20240903/wait-wait-stats-v6-location.png) |
| <center>v6 Landing Page</center> | <center>v6 Location Page</center> |

## What's New in Version 6?

Some of the new features and changes included in version 6 include:

* Incorporating the color palette from [IBM's Design Language](https://www.ibm.com/design/language/)
* Increasing the color contrast of the background and text colors in dark mode to improve readability
* Simplify the site navigation by using a unified and collapsible main navigation
* Increase spacing between certain elements to make each one stand out more
* Use flexible font sizes that respond to the viewport width
* Removal of right arrows from links to reduce clutter
* Add Bootstrap tooltips to Not My Job guest score exception, Regular and All Show labels, and location coordinates
* Removing the "Home" link in breadcrumbs
* Show descriptions and notes are now rendered as Markdown instead of plain text

| [![Wait Wait Stats Page v5 Panelist Details](/assets/images/waitwait/20240903/wait-wait-stats-v5-panelist-dark.png "Wait Wait Stats Page v5 Panelist Details")](/assets/images/waitwait/20240903/wait-wait-stats-v5-panelist-dark.png) | [![Wait Wait Stats Page v6 Panelist Details](/assets/images/waitwait/20240903/wait-wait-stats-v6-panelist-dark.png "Wait Wait Stats Page v6 Panelist Details")](/assets/images/waitwait/20240903/wait-wait-stats-v6-panelist-dark.png) |
| <center>v5 Panelist Details in Dark Mode</center> | <center>v6 Panelist Details in Dark Mode</center> |

The new version of the Stats Page also includes a color theme selector, which allows users to view the site in light or dark mode or respect the browser's preferred color mode. By default, the site will use the preferred color mode, and changing the color theme will store the selection in the browser's local storage.

The site now hosts copies of the Bootstrap Icons and IBM Plex web fonts instead of depending on Google Fonts to remove dependencies for third-party services and further limit data collection. As part of an earlier release, I replaced Google Analytics with an instance of [Umami Analytics](https://umami.is/), which I run and maintain.

| [![Wait Wait Stats Page v5 Mobile](/assets/images/waitwait/20240903/wait-wait-stats-v5-show-mobile.png "Wait Wait Stats Page v5 Mobile")](/assets/images/waitwait/20240903/wait-wait-stats-v5-show-mobile.png) | [![Wait Wait Stats Page v5 Nav Menu](/assets/images/waitwait/20240903/wait-wait-stats-v5-nav-mobile.png "Wait Wait Stats Page v5 Nav Menu")](/assets/images/waitwait/20240903/wait-wait-stats-v5-nav-mobile.png) | [![Wait Wait Stats Page v6 Mobile](/assets/images/waitwait/20240903/wait-wait-stats-v6-show-mobile.png "Wait Wait Stats Page v6 Mobile")](/assets/images/waitwait/20240903/wait-wait-stats-v6-show-mobile.png) | [![Wait Wait Stats Page v6 Nav Menu](/assets/images/waitwait/20240903/wait-wait-stats-v6-nav-mobile.png "Wait Wait Stats Page v6 Nav Menu")](/assets/images/waitwait/20240903/wait-wait-stats-v6-nav-mobile.png) |
| <center>v5 Mobile</center> | <center>v5 Mobile Nav Menu</center> | <center>v6 Mobile</center> | <center>v6 Mobile Nav Menu</center> |

## Next Steps for the Stats Page

As I worked on replacing Materialize with Bootstrap, I tested the changes on several different devices and browsers, including different operating systems, laptops, smartphones, and browsers (which even included testing graceful degradation with text-only browsers and old and unsupported browsers).

But, as with any significant update, there are bound to be issues or problems that slip by or will need to be addressed.

One problem that is on my radar is column formatting issues when printing or saving pages as PDF files. Depending on the target page width, rows with elements split into two columns print out as a single column. Another area of improvement would be the list of appearances and recordings on details pages, including badges and rankings.

As you use the site and encounter problems or have suggestions, please open an [issue](https://github.com/questionlp/stats.wwdt.me/issues) on GitHub. Recording issues and suggestions using GitHub will help me keep track of ongoing work and any problems.

## Additional Updates

Since the [Wait Wait Graphs Site](https://graphs.wwdt.me/) also uses the Materialize toolkit, I will work on migrating it to Bootstrap in the coming months.

The source code for the Wait Wait Stats Page is available on GitHub under the [stats.wwdt.me](https://github.com/questionlp/stats.wwdt.me) repository.

In addition to the Wait Wait Stats Page updates, I have updated the [Wait Wait Reports](https://reports.wwdt.me/) site to include two new reports: a show descriptions report and a show notes report. The source code for the Wait Wait Reports site is available on GitHub under the [reports.wwdt.me_v2](https://github.com/questionlp/reports.wwdt.me_v2) repository.

## Supporting the Wait Wait Stats Project

If you enjoy using the Wait Wait Stats Page and find the project helpful, please consider sponsoring my work via the links below to help cover ongoing development and hosting costs. Any donation or token of support is greatly appreciated!

* [GitHub Sponsor](https://github.com/sponsors/questionlp)
* [Patreon](https://patreon.com/Linh_Pham)
* [Ko-fi](https://ko-fi.com/questionlp)