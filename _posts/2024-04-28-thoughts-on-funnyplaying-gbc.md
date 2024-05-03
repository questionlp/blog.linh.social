---
layout: post
title:  "Thoughts on the FunnyPlaying GBC"
date:   2024-04-28 14:30:00 -0800
tags:   video-games game-boy fpgbc review
excerpt_separator: <!--more-->
---

Over the past couple of years, I have been collecting several handheld game consoles that run custom builds of Linux, EmulationStation, and RetroArch so that I can play games from various 8-bit, 16-bit, and early 32-bit consoles without being tied to a computer or TV.

I have a trio of Anbernic devices: two that run [AmberELEC](https://amberelec.org) (RG351MP and RG552) and an RG35XX H running a custom build of [Batocera](https://rg35xx-cfw.github.io). Also within my collection is a RetroFlag [GPi Case 2](https://retroflag.com/gpi_case_2.html) with a Raspberry Pi 4 Compute Module and two [Steam Decks](https://www.steamdeck.com/en) (an original and a limited edition OLED model).

<!--more-->

Another device I can use to play games from the 8-bit and 16-bit era is an [Analogue Pocket](https://www.analogue.co/pocket). The difference between the Pocket and the other consoles listed above is that the Pocket uses an FPGA (field-programmable gate array) chip to emulate or simulate hardware that can run cores that mimic the behavior of original hardware.

## What is a FunnyPlaying GBC?

Recently, I heard about a cheaper and more accessible alternative to the expensive and perpetually out-of-stock Analogue Pocket. The alternative's foundation is a replacement board for a Nintendo Game Boy produced by [FunnyPlaying](https://funnyplaying.com) called the [FunnyPlaying GBC](https://funnyplaying.com/products/fpgbc-kit), also referred to as the FPGBC. Like the Analogue Pocket, the FPGBC uses an FPGA to run cores that can emulate or simulate the various chips of a Game Boy Color. Also, like the Analogue Pocket, the FPGBC includes a cartridge slot, a Game Link port, a USB Type-C connector for charging and firmware updates, and support for a color LCD.

Despite already owning two Game Boy Colors, I was intrigued by the FunnyPlaying GBC. However, I didn't want to modify my existing consoles. Luckily, FunnyPlaying sells an FPGBC bundle for 69.90 USD, including everything necessary to assemble a complete console: an FPGBC board, an IPS display, a rechargeable battery pack, a speaker, and an aftermarket Game Boy Color shell.

## Putting Together the FPGBC Kit

I ordered a kit with a translucent purple shell, a set of translucent buttons, and purple membrane pads for 83.60 USD. Shipping was free, and the package arrived about a week after I placed the order.

| [![Front of a FunnyPlaying GBC with a translucent purple case](/assets/images/fpgbc/fpgbc-front.jpg "Front of a FunnyPlaying GBC with a translucent purple case")](/assets/images/fpgbc/fpgbc-front.jpg) | [![Back of a FunnyPlaying GBC with a translucent purple case](/assets/images/fpgbc/fpgbc-back.jpg "Back of a FunnyPlaying GBC with a translucent purple case")](/assets/images/fpgbc/fpgbc-back.jpg) |

It is highly recommended that the board, display, battery, and speaker be tested before fully assembling the kit. When doing so, make sure to put a piece of paper between the IPS display and the board, as the back of the display could touch the pins for the cartridge slot on the other side and damage both parts.

After testing the parts, I started assembling the kit, including fitting the speaker and board to the back half of the shell. After screwing in the board to the shell, I slid in the power switch and IR window (I used the black one instead of the translucent one included with the shell), then attached the front half of the shell.

Next, connect the battery pack to the board and slot it in the battery. The connector is small and difficult to connect due to the small opening in the case, making it hard to ensure a secure connection. Connecting the display flat-flex cable to the board was even more fiddly due to the limited working angle. Thankfully, the FPGBC powered and booted up after buttoning everything up.

## First Impressions

Pushing in on the volume rocker brings up the settings menu, which provides settings for screen brightness, speaker volume, selection of either the GB or the GBC cores, choice of 12 color palettes for the GB core, toggling frame mixing and display compatibility fix (labeled `GB_CLRFIX`) options, device emulation speed slider, and displaying battery level and the installed firmware version.

| [![FunnyPlaying GBC running Final Fantasy Adventure with the GBC core](/assets/images/fpgbc/fpgbc-gbc-ffa.jpg "FunnyPlaying GBC running Final Fantasy Adventure with the GBC core")](/assets/images/fpgbc/fpgbc-gbc-ffa.jpg) | [![FunnyPlaying GBC running Final Fantasy Adventure with the GB core and color palette #4](/assets/images/fpgbc/fpgbc-menu-gb-color-4.jpg "FunnyPlaying GBC running Final Fantasy Adventure with the GB core and color palette #4")](/assets/images/fpgbc/fpgbc-menu-gb-color-4.jpg) |

My board, hardware revision 1.1, came with an older firmware version, and I wanted to upgrade it to [version 1.08](https://github.com/makhowastaken/GWGBC_FW/tree/main/HWv1_1/2024.03.25) before I would give it a fair shake. I downloaded a modified version of the 1.08 firmware that replaced the FunnyPlaying boot logo with the traditional Nintendo boot logo. Updating the firmware was as easy as connecting the FPGBC to my laptop using a USB Type-C cable, which showed up as a removable drive, copying over the `update.bin` file, and restarting the device.

Next, I left all the settings to the values set out of the box, and after the firmware update, including the selected GBC core, I started playing my copy of Tetris. While playing the game for a few minutes, I noticed no glitches or issues, though the new membrane pads were stiffer than I used to.

I switched to using the GB core to check out the different color palettes, settling on color palette #4, which looks like a DMG display modded with a backlight. I also switched the display from a 4x integer scale to using the full resolution of the display, which is not an integer scale. Using the display's full resolution caused enough shimmering when playing games with significant scrolling or fast-moving sprites. I switched to the 4x integer scale with pixel grid, `X4P`, to mimic the look of an older LCD. Combining the `X4P` scaling option with enabling frame mixing gives the best look when playing Game Boy and Game Boy Color games. The drawback of the 4x integer scale is that the image is not centered on the display, as it is anchored to the top and shifted to the left by a couple of pixels.

Version 1.08 of the firmware added a different version of the `X4`, `X4P`, and `FULL` display options, which have a more muted color scheme to mimic the original Game Boy Color display.

## Not All Smooth Sailing

After playing a bit of Tetris, I wanted to see how the FPGBC handled other games. The next game to try out was Super Mario Land 2: 6 Golden Coins using the GBC core. That is when the first issues appeared. With the `GB_CLRFIX` setting turned off, the sprite colors did not look right when entering Tree Zone or Turtle Zone. Enabling the `GB_CLRFIX` did fix the sprite color issue.

| [![Super Mario Land 2: 6 Golden Coins running on a FunnyPlaying GBC with the GBC core and CLRFIX off and a Game Boy Color with an IPS screen](/assets/images/fpgbc/fpgbc-gbc-sml2-clrfix-off.jpg "Super Mario Land 2: 6 Golden Coins running on a FunnyPlaying GBC with the GBC core and CLRFIX off and a Game Boy Color with an IPS screen")](/assets/images/fpgbc/fpgbc-gbc-sml2-clrfix-off.jpg) | [![Super Mario Land 2: 6 Golden Coins running on a FunnyPlaying GBC with the GBC core and CLRFIX on and a Game Boy Color with an IPS screen](/assets/images/fpgbc/fpgbc-gbc-sml2-clrfix-on.jpg "Super Mario Land 2: 6 Golden Coins running on a FunnyPlaying GBC with the GBC core and CLRFIX on and a Game Boy Color with an IPS screen")](/assets/images/fpgbc/fpgbc-gbc-sml2-clrfix-on.jpg) |

Leaving that setting enabled caused problems when I started playing Super Mario Bros. Deluxe, a Game Boy Color game. The Super Mario Bros. splash screen was corrupted, the title colors were incorrect on the title screen, and the colors were wrong when playing a level. Turning off `GB_CLRFIX` fixed the issue without requiring a restart.

When testing the frame mixing setting, I noticed that some sprites would flicker and not render correctly or at all when the frame mixing was turned off. This is quite apparent in the Game Boy version of The Legend of Zelda: Link's Awakening.

This may be due to the FunnyPlaying speaker that came with the kit or the audio portion of the core, but it sounds like a slight low-pass filter was applied. The low end of the audio through the speaker is slightly muddier compared to my Game Boy Color and Analogue Pocket.

There have been reports of the FPGBC having issues with certain flash carts, and some do not work. My EverDrive GB X7 running version 1.06 would boot up, load games, and create save states without noticeable issues. When trying to load a save state for a Game Boy game using the GBC core, I sometimes get audio, a blank white screen, and none of the Game Boy controls work. The issue does not appear when loading save states for Game Boy games when using the GB core or for Game Boy Color games when using the GBC core.

Switching the `GB_CLRFIX` setting back and forth gets even more frustrating when using the EverDrive with the GBC core. With the setting enabled, the text and UI element colors are incorrect. Turning off the setting corrects the colors, but the colors for Game Boy games are incorrect.

The mess that is the `GB_CLRFIX` setting makes me feel like I should stick with the GB core for Game Boy games and the GBC core for Game Boy Color games. These issues do not exist with the original Game Boy Color, the built-in Analogue Pocket core, or the Spiritualized Game Boy Color OpenFPGA core for the Pocket.

## Timing is Everything

Playing games on non-original hardware or emulation can also exhibit issues with the game's speed. For instance, the Super Game Boy cartridge for the Super Famicom and the Super Nintendo runs games a little over 2 percent faster than on the original DMG Game Boy (due to the use of the Super Nintendo clock speed as the base and dividing by 5 for the Game Boy hardware included in the cartridge). Nintendo would fix that with the Super Game Boy 2 for the Super Famicom.

The same issue exists when older video game consoles are modified to output digital video signals, or even FPGA-based consoles like the Analogue NT mini, where the original video clock is slightly off of the strict video clocks used by HDMI and other digital devices.

Software emulation complicates things even more, depending on how the emulators are programmed and if they prioritize code performance over accurately emulating the original hardware, emulation accuracy over reducing input latency, or due to a myriad of other variables.

In the case of the FPGBC, I wanted to see how it compares with my Game Boy Color with an IPS display side-by-side. I chose to use F-1 Race as the game to test if there was any difference in game speed since the game has a timer that includes fractions of a second. I loaded the game on my Game Boy Color using my EverDrive while using the original Game Boy cartridge on the FPGBC. I set the FPGBC to use the GBC core and set the speed slider to 2 clicks below maximum, the default value. I did my best to simultaneously start a time trial of the first track on both devices and took eight photos over 4 minutes.

| [![F-1 Race running on a Game Boy Color with an IPS screen and a FunnyPlaying GBC towards after about 25 seconds of lap time](/assets/images/fpgbc/gbc-fpgbc-f1-race-timer-1.jpg "F-1 Race running on a Game Boy Color with an IPS screen and a FunnyPlaying GBC towards after about 25 seconds of lap time")](/assets/images/fpgbc/gbc-fpgbc-f1-race-timer-1.jpg) | [![F-1 Race running on a Game Boy Color with an IPS screen and a FunnyPlaying GBC towards after about 4 minutes of lap time](/assets/images/fpgbc/gbc-fpgbc-f1-race-timer-8.jpg "F-1 Race running on a Game Boy Color with an IPS screen and a FunnyPlaying GBC towards after about 4 minutes of lap time")](/assets/images/fpgbc/gbc-fpgbc-f1-race-timer-8.jpg) |

I looked at the timer in each photo and noticed that the FPGBC was running faster than the Game Boy Color. Unfortunately, it was difficult to discern the hundreds digit most of the time, so there is a more considerable margin of error than I would have liked. I entered the numbers into a [Google Sheet](https://docs.google.com/spreadsheets/d/1I98u3_fprdgk1JUFVEC57Ab3CPIlr9DOnIUTkXzT4JE/) to compare the numbers. The calculations showed that the FPGBC ran the game approximately 0.9% faster than the Game Boy Color.

| # | Original Game Boy Color with IPS LCD | FPGBC with GBC Core | Delta | Delta (%) |
|:--|:--|:--|:--|:--|
| 1 | 0:25.98 | 0:26.30 | 0.32 | 1.2317 |
| 2 | 0:57.08 | 0:57.62 | 0.54 | 0.9460 |
| 3 | 1:20.02 | 1:20.75 | 0.73 | 0.9123 |
| 4 | 2:00.43 | 2:01.52 | 1.09 | 0.9051 |
| 5 | 2:58.82 | 3:00.45 | 1.63 | 0.9115 |
| 6 | 3:03.54 | 3:05.22 | 1.68 | 0.9153 |
| 7 | 2:42.75 | 2:44.90 | 2.15 | 0.9652 |
| 8 | 3:00.35 | 3:02.53 | 2.18 | 0.9070 |

***Note:** The numbers in the Google Sheet are entered as seconds while the above are converted to minutes, seconds, and hundredths of a second.*

This roughly aligns with [the results](https://mastodon.gamedev.place/@bbbbbr/111978579809048479) someone else ran using a custom program they wrote on their FPGBC with firmware version 1.06.

While less than 1% faster is better than the original Super Game Boy for the Super Famicom and Super Nintendo, it is hard to say whether that difference is consistent between games, cores, or firmware versions.

I have not noticed any issues with input latency compared to playing games using software emulation.

## Final Thoughts and Alternatives

Before purchasing the FunnyPlaying GBC kit, I read and watched a couple of reviews and knew that the product would be at a different level than the Analogue Pocket. With the low cost and the newness of the product and cores, my expectation was not set very high. The issues with the `GB_CLRFIX` setting, the faster game clock compared to original hardware or the Analogue Pocket, and problems with game and flash cart compatibility make the FPGBC feel like it was rushed out to the market with firmware that's still in its early beta stages of development and refinement.

Is the FPGBC kit worth the price and the effort to assemble? If you are a tinkerer and can wait for new firmware releases and tinker with settings, go for it. If you want something ready to go out of the box and not worry about compatibility issues, look for other options.

For around 100 USD, there are better options if playing games and do not mind using software emulators, then there are a myriad of handhelds available I would recommend looking at the devices that [Retro Game Corps](https://retrogamecorps.com) covered in their video, "[My Favorite Retro Handhelds Under $100](https://www.youtube.com/watch?v=6UGr42nOv54)".

For a couple hundred USD, several companies provide options for building a personalized Game Boy Color or Game Boy Advance with an IPS display, custom shell, buttons, membrane pads, and rechargeable batteries. Games will run the same as on un-modified devices since those devices still use the original mainboard with an original CPU. You will want to research display options due to graphical artifacts and ghosting issues with certain games.

If size and cost are not a concern, I recommend buying a Steam Deck and installing [EmuDeck](https://www.emudeck.com), EmulationStation, and various emulators. The combined processor and graphics expand the type of systems you can emulate and layer on various shaders and filters to customize the look and feel to your liking.

Devices that use software emulation do not have cartridge slots to load games. Instead, you will need a cartridge reader to create ROM and save files from a physical cartridge to load onto a memory card. I recommend the [Open Source Cartridge Reader](https://www.cartreader.net), which supports many different cartridge formats. I use an [Epilogue GB Operator](https://www.epilogue.co/product/gb-operator), which supports Game Boy, Game Boy Color, and Game Boy Advance cartridges, and it is compatible with Windows, macOS, and Linux.

I have [uploaded larger versions](https://www.flickr.com/gp/questionlp/767n6G0iF1) of the photos, including those in this post, along with other photos I took of the FPGBC, onto Flickr.
