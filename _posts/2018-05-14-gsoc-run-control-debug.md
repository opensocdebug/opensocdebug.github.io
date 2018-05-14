---
title: Run-Control Debug ahead!
type: document
author: philipp
---

Stop the engines!
This command will be understood by Open SoC Debug soon as Shivam Aggarwal ([@shivmgg](https://github.com/shivmgg)) adds run-control debug support to Open SoC Debug.
Run-control debug, or "stop and stare debugging" is known to many when using a debugger such as GDB to set breakpoints and inspect the program state once the executed halted.
Up to now, Open SoC Debug focused on tracing, leaving this other important debugging technique on the wishlist.
But not any longer.

Shivam, who does this work as part of his [Google Summer of Code (GSoC) project](https://summerofcode.withgoogle.com/projects/#4747401538043904) with [TimVideos.us](https://code.timvideos.us/home/), already [started creating a specification](https://github.com/opensocdebug/osd-doc/pull/8) for the necessary debug module (which will be called Core Debug Module for or1k, short CDM-OR1K).
Next up will be the implementation of this module both in our hardware and software reference implementations.

Shivam will be co-mentored by the [Stafford Horne](http://stffrdhrn.github.io/), the maintainer of the or1k architecture in Linux and heavy contributor to the or1k toolchain including GDB, by Rohit Singh, who will help out with the integration into the timvideos platform, and by me, [Philipp Wagner](https://www.philipp-wagner.com).

We're looking forward to a first working run-control debug implementation due to this summer, and are excited to have Shivam around.

Please subscribe to our [mailing list](https://lists.librecores.org/listinfo/opensocdebug) to jump in with ideas or join the technical discussions on this project.
