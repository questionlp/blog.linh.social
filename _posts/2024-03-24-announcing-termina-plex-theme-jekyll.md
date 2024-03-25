---
layout: post
title:  "Announcing Termina Plex Theme for Jekyll"
date:   2024-03-24 18:30:00 -0800
tags:   jekyll theme web-design
excerpt_separator: <!--more-->
---

Just a year ago (give or take a couple of months), I published a Jekyll theme named "Minima Plex." The theme extends the Minima theme and features the [IBM Plex](https://www.ibm.com/plex/) family of fonts.

Although the theme has served me and this blog well, I started experimenting with migrating away from Jekyll to a different static site generator (including [11ty](https://www.11ty.dev), [Pelican](https://getpelican.com), and [Hugo](https://gohugo.io)). One of the themes I ran across for Hugo was [Nightfall](https://github.com/LordMathis/hugo-theme-nightfall/). I liked the minimal design, which took some inspiration from Unix and Unix-like shells and terminals.<!--more--> While I liked the theme, I could not say the same for Hugo.

| ![Landing page example for the Nightfall theme for Hugo](/assets/images/termina-plex/nightfall-theme.png) |
| :--: |
| *Landing page for Nightfall* |

After spending some time with 11ty and Pelican, I decided to stick with Jekyll for my blog and searched for themes with the same look and feel as Nightfall. Several themes were close enough, but they required heavier frameworks or a lot of tweaking to look how I wanted them. That is when I decided to port the Nightfall theme over to Jekyll.

To start the porting process, I cloned the Minima and Nightfall repositories. Once the repositories were cloned, I copied over the Sass CSS files from Nightfall and copied in the IBM Plex web font files for the Mono, Sans, and Serif variants. Retrofitting and extending the Minima layout files to make the core design look like Nightfall's took some work.

| ![Landing page example for the Termina Plex theme for Jekyll in dark mode](/assets/images/termina-plex/termina-plex-01-landing-page-dark.png) |
| :--: |
| *Landing page example for Termina Plex in dark mode* |

| ![Landing page example for the Termina Plex theme for Jekyll in light mode](/assets/images/termina-plex/termina-plex-02-landing-page-light.png) |
| :--: |
| *Landing page example for Termina Plex in light mode* |

One of the features of Nightfall that I decided to keep was a minimal landing page as the home page and a separate page listing the published blog posts. A feature I added that Nightfall and Minima should have included were links to previous and next blog posts that are commonly found in other blog software.

Instead of using Minima's different skins to handle color schemes, I created light and dark mode themes that inspire IBM's [Carbon design language](https://carbondesignsystem.com). Since I'm already going heavy with IBM Plex, adopting some minimalist Carbon design language, including grays, blues, and purples, made sense.

By default, the theme uses the `prefers-color-scheme` CSS feature to select the user's preferred mode. I added a toggle in the navigation bar, allowing users to toggle between light and dark modes. The toggle saves that preference in the Local Storage via the Web Storage APIs.

| ![Blog posts listing page example for the Termina Plex theme for Jekyll in dark mode](/assets/images/termina-plex/termina-plex-03-blog-post-listing-dark.png) |
| :--: |
| *Blog posts listing page example for Termina Plex in dark mode* |

| ![Blog posts listing page example for the Termina Plex theme for Jekyll in  light mode](/assets/images/termina-plex/termina-plex-04-blog-post-listing-light.png) |
| :--: |
| *Blog posts listing page example for Termina Plex in light mode* |

Another feature I ported from Nightfall was the post metadata block that displays the post author(s), published date, tags, and categories between the post's title and content. This is in contrast to Minima Plex, which listed the tags would be listed at the bottom of the page and did not display any category information.

| ![Blog post example for the Termina Plex theme for Jekyll in dark mode](/assets/images/termina-plex/termina-plex-05-blog-post-dark.png) |
| :--: |
| *Blog post example for Termina Plex in dark mode* |

| ![Blog post example for the Termina Plex theme for Jekyll in light mode](/assets/images/termina-plex/termina-plex-06-blog-post-light.png) |
| :--: |
| *Blog post example for Termina Plex in light mode* |

The new theme also marks the first time I have published a package to [RubyGems](https://rubygems.org). To install the theme for your Jekyll installation from RubyGems, you can add the following to your blog's `Gemfile`:

```ruby
gem "termina-plex"
```

You can also install the theme from the [GitHub repository](https://github.com/questionlp/termina-plex) by adding the following:

```ruby
gem "termina-plex", git: "https://github.com/questionlp/termina-plex.git"
```

For information on using and configuring the theme, refer to the [`README.md` file](https://github.com/questionlp/termina-plex/blob/main/README.md) included in the repository.
