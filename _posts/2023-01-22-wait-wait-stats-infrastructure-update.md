---
layout: post
title:  "Wait Wait Stats Infrastructure Updates"
date:   2023-01-22 21:00:00 -0800
tags:   waitwait infrastructure
excerpt_separator: <!--more-->
---

Over the past couple of weeks, I have been looking at ways to simplify the infrastructure that hosts the [Wait Wait Stats Page](https://stats.wwdt.me) and related sites.

Up through today, the infrastructure is made up of a server that acts as a front-end NGINX load balancer/reverse proxy that handles traffic for the various sites; which, are served up by 3 servers that run NGINX to proxy requests to the Python web applications served through uWSGI or Gunicorn.
<!--more-->

One last server that hosts the Wait Wait Stats MySQL database.

![Diagram of the Wait Wait Stats Infrastructure in 2022](/assets/images/wait-wait-stats-infrastructure-2022.png "Diagram of the Wait Wait Stats Infrastructure in 2022")

The new simplified infrastructure will consist of a single server that will host both the Wait Wait Stats Page web application (served through NGINX with caching) and the Wait Wait Stats MySQL database. The Reports, Graphs and Stats API web applications will either migrate over to the new server or off-loaded to a smaller instance, depending on system load.

This allows me to shrink down the number of instances down to 1 or 2 instances (plus one for a lightweight staging instance) and reduce the database query times, as it no longer has to traverse the network. Even if the Reports, Graphs and Stats API applications are still hosted on a separate server, they don't receive as much traffic as the Stats Page.

If I need to handle more traffic for the Stats Page, I can either scale the size of the server up or clone the server and set up MySQL replication for the Wait Wait Stats database.
