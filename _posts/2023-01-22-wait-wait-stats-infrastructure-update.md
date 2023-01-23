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

The new simplified infrastructure will consist of a single server that will host all of the Wait Wait Stats-related web applications (each served through NGINX with caching) and the Wait Wait Stats MySQL database. If the load on the system starts to grow, I can easily spin up another server that can host the Reports, Graphs and/or Stats API web applications.

This allows me to shrink down the number of instances down to a single server for production, as well as a lightweight server for staging. This also has a side effect of reducing database query times; due to, not having to traverse a network with potentially inconsistent latency.

Later on, if I want to have some form of redundancy or load balancing, I can spin up another server and use MySQL replication to keep the databases synchronized. Instead of having the two servers be fronted by another server running NGINX, I will opt for DNS load balancing.
