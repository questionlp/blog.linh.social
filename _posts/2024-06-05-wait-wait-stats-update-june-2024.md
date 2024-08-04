---
layout: post
title:  "Wait Wait Stats Updates: June 2024"
date:   2024-06-05 18:00:00 -0700
tags:   waitwait update
excerpt_separator: <!--more-->
---

In the last [Wait Wait Stats Updates blog post]({% post_url 2024-04-24-wait-wait-stats-update-april-2024 %}), I mentioned adding support for storing preferred pronouns for show hosts, panelists, and scorekeepers in the Wait Wait Stats Database, the Wait Wait Stats Library, and the Wait Wait Stats API.

Today, the [Wait Wait Stats Page](https://stats.wwdt.me/) has been updated to display preferred pronouns for show hosts, panelists, and scorekeepers.

<!--more-->

| [![Screenshot of the Host Details page for Peter Grosz with his preferred pronouns](/assets/images/waitwait/20240605/host-preferred-pronouns.png "Screenshot of the Host Details page for Peter Grosz with his preferred pronouns")](/assets/images/waitwait/20240605/host-preferred-pronouns.png) | [![Screenshot of the Panelist Details page for Shantira Jackson with her preferred pronouns](/assets/images/waitwait/20240605/panelist-preferred-pronouns.png "Screenshot of the Panelist Details page for Shantira Jackson with her preferred pronouns")](/assets/images/waitwait/20240605/panelist-preferred-pronouns.png) |

The preferred pronouns are displayed on their corresponding details page next to the Database ID tag. If more than one set of preferred pronouns are provided, all will be listed within the tag.

I am sourcing their preferred pronouns from their profile information on their social media accounts, including Bluesky, Instagram, Threads, Facebook, and X. If they have yet to provide preferred pronouns, I will not add any entries to the database.

More information about the code changes is available in the [release notes](https://github.com/questionlp/stats.wwdt.me/releases/tag/v5.12.0) published on GitHub.
