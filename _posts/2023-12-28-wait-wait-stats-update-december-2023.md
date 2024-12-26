---
layout: post
title:  "Wait Wait Stats Updates: December 2023"
date:   2023-12-28 17:45:00 -0800
tags:   waitwait update
excerpt_separator: <!--more-->
---

In the past month since my last Wait Wait Stats Update post, I have finished listening through all of the 1998 shows, of which I have audio recordings. I entered the data into the database using the notes I had written down for those shows. However, I ran into a slight problem: the Wait Stats Database needed to be updated to store Bluff the Listener-like segment numbers to the chosen and correct stories.

<!--more-->

![Photo of written show notes for the show that aired on 1998-09-26 containing host, scorekeeper, panelists and scoring details](/assets/images/waitwait/20231228/show-notes-1998-09-26.jpg "Written show notes for the show that aired on 1998-09-26")

When I started collecting Bluff the Listener data for [Wait Wait... Don't Tell Me!](https://waitwait.npr.org/), the show's format only included one Bluff the Listener segment, and the Stats Database was built around that assumption. Now that I have access to the show audio from 1998 through 1999, I needed to make a few changes, including decimal scores and tracking information for multiple Bluff the Listener segments.

I added a new column to the `ww_showbluffmap` database table to store Bluff segment numbers to distinguish which panelist was chosen and which had the correct story belongs to which segment. The Stats Library was updated to return a list of dictionary objects instead of a singular dictionary object with the corresponding Bluff information.

![Screenshot of the Wait Wait Stats Page showing appearances and scores for the show that aired on 1998-01-03](/assets/images/waitwait/20231228/stats-multiple-bluffs.png "Information for the show that aired on 1998-01-03")

The Stats Page and the Stats API were then updated to include multiple Bluff segment information. The Bluff segment number and available Chosen and Correct panelist information are now listed on the Stats Page for each show. For the Stats API, the `bluff` property was changed to `bluffs` to reflect the potential of multiple segments.

Neither the Graphs nor the Reports web applications required any updates to take into account the new `segments` column, though I did update the required version of the Stats Library for the Graphs web application to keep it consistent with the Stats API and the Stats Page applications (the Graphs web application does not depend on the Stats Library).

Additional information on the changes is available in the release notes for the Stats Library and each of the applications:

* Wait Wait Stats Library: [v2.6.1](https://github.com/questionlp/wwdtm/releases/tag/v2.6.1)
* Wait Wait Stats API: [v2.7.1](https://github.com/questionlp/api.wwdt.me_v2/releases/tag/v2.7.1)
* Wait Wait Graphs: [v2.7.1](https://github.com/questionlp/graphs.wwdt.me/releases/tag/v2.7.1)
* Wait Wait Stats: [v5.8.0](https://github.com/questionlp/stats.wwdt.me/releases/tag/v5.8.0)
