---
layout: post
title:  "New Mastodon and Bluesky Podcast Bot Application"
date:   2024-11-23 18:30:00 -0800
tags:   python mastodon bluesky podcast
excerpt_separator: <!--more-->
---

After I stood up my own Mastodon instance, [linh.social](https://linh.social/), I started work on creating a Python script that would create and publish posts when new episodes pop onto a couple of podcasts that I listen to. The project, [mastodon-podcast-bot](https://github.com/questionlp/mastodon-podcast-bot) pulls down and processes each feed and uses the [Mastodon.py](https://github.com/halcy/Mastodon.py) library to publish posts to my Mastodon instance. When the script encounters a new episode, it stores details of that episode in a SQLite database to prevent duplicate posts from being published.

Two months ago, as I became more active on [Bluesky](https://bsky.app/), I cloned the Mastodon Podcast Bot project, replaced the Mastodon-specific code with Bluesky-specific code, and created the [Bluesky Podcast Bot](https://github.com/questionlp/bluesky-podcast-bot). Instead of using Mastodon.py, the Bluesky version uses the [atproto](https://atproto.blue/en/latest/) Python library that handles connecting, authenticating, and posting to Bluesky.

<!--more-->

When it comes to checking each podcast feed for new episodes, the scripts will pull down a full copy of each feed and processes through each entry (with a configuration option to set a maximum number of entries to loop through) without checking to see if the `Last-Modified` value in the HTTP response header has been updated.

Instead of having to duplicate the effort across both projects, I decided to merge the two projects together and created [podcast-bot](https://github.com/questionlp/podcast-bot).

The combined application supports posting to both Mastodon and Bluesky, with the option to enable or disable specific feeds and an option to post to Mastodon and/or Bluesky. The application logic now does an HTTP `HEAD` request for each feed to check to see if the `Last-Modified` value has been updated since the last time it was checked.

If the value has been updated, it will continue to fetch a copy of the feed. The value is stored in a separate table in the same SQLite database that is used to store seen podcast episodes. For feeds that don't have a `Last-Modified` value, the current timestamp is stored to note the last time the feed was checked and processed.

If you are interested in following any of the podcast bot accounts that I've set up on Mastodon and on Bluesky, the accounts are listed below:

| Podcast | Mastodon Account | Bluesky Account |
| ------- | ---------------- | --------------- |
| **[After These Messages](https://soundcloud.com/afterthesemessagesshow)** | [@atm_podbot@linh.social](https://linh.social/@atm_podbot) | *N/A* |
| **[How To Do Everything](https://www.npr.org/podcasts/510384/how-to-do-everything)** | [@htde_podbot@linh.social](https://linh.social/@htde_podbot) | [@htde-podcast-bot.bsky.social](https://bsky.app/profile/htde-podcast-bot.bsky.social) |
| **[Live Wire with Luke Burbank](https://www.livewireradio.org/)** | [@livewire_podbot@linh.social](https://linh.social/@livewire_podbot) | [@lwr-podcast-bot.bsky.social](https://bsky.app/profile/lwr-podcast-bot.bsky.social) |
| **[Spotless](https://spotlesspod.com/)** | [@spotless_podbot@linh.social](https://linh.social/@spotless_podbot) | *N/A* |
| **[TBTL: Too Beautiful to Live](https://www.tbtl.net/)** | [@tbtl_podbot@linh.social](https://linh.social/@tbtl_podbot) | [@tbtl-podcart-bot.bsky.social](https://bsky.app/profile/tbtl-podcart-bot.bsky.social) |
| **[Text Me Back!](https://art19.com/shows/text-me-back)** | [@textmeback_podbot@linh.social](https://linh.social/@textmeback_podbot) | [@tmb-podcast-bot.bsky.social](https://bsky.app/profile/tmb-podcast-bot.bsky.social) |
| **[This American Life](https://www.thisamericanlife.org/)** | [@thisamerlife_podbot@linh.social](https://linh.social/@thisamerlife_podbot) | *N/A* |
| **[Wait Wait Don't Tell Me!](https://www.npr.org/programs/wait-wait-dont-tell-me)** | [@waitwait_podbot@linh.social](https://linh.social/@waitwait_podbot) | [@wwdtm-podcast-bot.bsky.social](https://bsky.app/profile/wwdtm-podcast-bot.bsky.social) |

There are no plans to add support for Twitter/X, Facebook, or Threads.

More information about the new podcast-bot application can be found in the [README](https://github.com/questionlp/podcast-bot/blob/main/README.md) file in the project's repository.

You can reach out on Mastodon at [@qlp@linh.social](https://linh.social/@qlp) or on Bluesky at [@linh.social](https://bsky.app/profile/linh.social).
