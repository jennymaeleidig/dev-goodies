# goodies

Collection of Resources and Tools I use (typically on MacOS)

## philosophy

- ["...we want to do our part in creating a space that pushes back against the commodification of the Internet towards something more honest, expressive, and open."](https://alazysunday.com/about-us)
- ["But there's still software out here that makes me feel happy to use, software that embodies an aesthetic that, for lack of a better word, I call cozy software"](https://catgirl.ai/log/comfy-software/)
- [Why don't schools teach debugging?](https://danluu.com/teach-debugging/)
- ["We need to make dumb shit! Make useless stuff; make the web fun again!"](https://makefrontendshitagain.party/)
- ["It is not pencil-pushers and moneylenders who make games. It is the relentless passion of the workers that creates an art form capable of saying something true."](https://summereternal.com/#manifesto)
- [Dumb down that "smart" phone a little.](https://www.reddit.com/r/dumbphones/comments/1awdfks/dumb_iphone_a_guide/)
- [Local-First Software: You Own Your Data, in spite of the Cloud](https://www.inkandswitch.com/local-first/static/local-first.pdf)
- ["If you don't know how compilers work, then you don't know how computers work. If you're not 100% sure whether you know how compilers work, then you don't know how they work."](https://steve-yegge.blogspot.com/2007/06/rich-programmer-food.html)
- [A programmer? Nope. Just a data entry monkey ](https://www.reddit.com/r/offmychest/comments/2t9zu2/a_programmer_nope_just_a_data_entry_monkey/)
- [The Anti-Agile Manifesto](https://antiagilemanifesto.wordpress.com/)
- [All software sucks](https://harmful.cat-v.org/software/)
- [Ideological affinity, web-related](https://seirdy.one/meta/badges/#ideological-affinity-web-related)
- [Jason Scheirer - Vingettes](https://www.jasonscheirer.com/weblog/vignettes/)

## utilities

- [`bat`](https://github.com/sharkdp/bat) - better `cat`
- [`ripgrep`](https://github.com/BurntSushi/ripgrep) - better `grep`
- [`fzf`](https://github.com/junegunn/fzf) - useful finder
- [`eza`](https://github.com/eza-community/eza) - better `ls`
- [`zoxide`](https://github.com/ajeetdsouza/zoxide) - better `cd`
- [oh my bash](https://ohmybash.nntoan.com/) - ulimate bash customization
  - [bash 5 in macos](https://www.merikan.com/2019/04/upgrade-to-bash-5-in-macos/)
- [colima](https://github.com/abiosoft/colima) - docker desktop alternative
  - setup [here](https://gist.github.com/jennymaeleidig/e44f0e57e810b0ef75a2c5c17ef03fa3)
- [mojeek](https://www.mojeek.com/) - alternative search engine
- [ai coding agents](https://gist.github.com/jennymaeleidig/30bed561cb45368e5bf3fb7cf1f43711) - the [bibble](https://youtu.be/WjVZzSrfCA8)

## env / pkg management

- [homebrew](https://brew.sh/) - pkg mgmt
- [macports](https://www.macports.org/) - build mac applications from source (aesperite is free this way)
- [mise](https://github.com/jdx/mise) - multi-platform version / runtime manager
  - [bash completions](https://mise.jdx.dev/cli/completion.html)
- [`pipenv`](https://pipenv.pypa.io/en/latest/) - manage python envs / deps
  - Really I should switch to [uv](https://github.com/astral-sh/uv). It doesnt have a lot of professional adoption yet though...

## browser extensions (firefox desktop)

- [adnauseam](https://adnauseam.io/) - block ads, trackers, and popups
  - [ublock ai blocklist](https://github.com/laylavish/uBlockOrigin-HUGE-AI-Blocklist)
- [ultimadark](https://github.com/ThomazPom/Moz-Ext-UltimaDark) - 🌙
- [bitwarden](https://bitwarden.com/) - password manager
- [removepaywalls.com](https://removepaywalls.com/) - remove paywals and archive webpages
- [facebook container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/) - 🚫 meta
- [clearurls](https://github.com/ClearURLs/Addon) - remove tracking info in url query params
- [cookie block](https://github.com/dibollinger/CookieBlock) - block tracking cookies
- [consent-o-matic](https://consentomatic.au.dk/) - remove cookie consent pop-up
- [clear site cookies](https://addons.mozilla.org/en-US/firefox/addon/clear-site-cookies/) - 🍪
- [nitter redirect](https://github.com/SimonBrazell/nitter-redirect) - redirect twitter links to [nitter](https://nitter.space/)!
- [old reddit redirect](https://github.com/tom-james-watson/old-reddit-redirect) - remove 'new' reddit redesign
- [simple login](simplelogin.io) - email alias service
- [social focus](https://socialfocus.app/) - remove unwanted social media elements

## Tampermonkey Scripts / custom css

- [remove-instagram-unfollowed-content.js](https://gist.github.com/jcguu95/41681b9b5deafe1ba6cbd1b7cc1f1af7) - 🚫 meta
- [remove-facebook-unfollowed-content.js](https://gist.github.com/jcguu95/60c757f806e43b12c723f3b1f23d14d1) - 🚫 meta
- [remove-facebook-feeds.js](https://gist.github.com/jcguu95/dbb61efe9f66543b1203f6bab2434b21) - 🚫 meta

## style

- [monokai pro](https://monokai.pro/) - objectively the best
  - [`bat`](https://github.com/jennymaeleidig/dev-goodies/blob/main/style/bat/MonokaiPro.tmTheme)
  - [neovim](https://github.com/loctvl842/monokai-pro.nvim?tab=readme-ov-file#-pro)
- [commitmono](https://commitmono.com/) - nuetral monospace [font](https://github.com/jennymaeleidig/dev-goodies/blob/main/style/font/CommitMonoV143.zip) for dev
- [ht](https://github.com/ohmybash/oh-my-bash/wiki/Themes#ht) - bash prompt, shouts out to [harrison](https://github.com/HarrisonGagnon)

## misc. applications

- [better display](https://github.com/waydabber/BetterDisplay) - highly functional display configuration
  - see [this](https://github.com/waydabber/BetterDisplay/wiki/Eye-care:-prevent-PWM-and-or-temporal-dithering) article for further config
- [radio silence](https://radiosilenceapp.com/) - block pesky apps from all network communication
- [multitouch](https://multitouch.app/) - gestures for macos trackpad / magic mouse
- [fre:ac](https://github.com/enzo1982/freac) - free audio converter
- [pdfgear](https://www.pdfgear.com/) - pdf conversion
- [czkawka](https://github.com/qarmin/czkawka) - duplicate file finder / remover

## game dev

- [pico-8](https://www.lexaloffle.com/pico-8.php) - "hardware" constrained retro dev
  - [cheat sheet](<https://www.lexaloffle.com/media/13822/41_PICO-8%20Cheat%20Sheet%20(4k%20-%20Dark).png>)
  - [more than 16 colors on screen](https://www.lexaloffle.com/bbs/?tid=38565)
  - [vector library](https://github.com/clowerweb/Lib-Pico8/blob/master/vectors.lua)
  - [load images as string assets](https://www.lexaloffle.com/bbs/?tid=38884)
  - [language server](https://marketplace.visualstudio.com/items?itemName=PollywogGames.pico8-ls)
  - [vscode runner](https://marketplace.visualstudio.com/items?itemName=Mesgegra.pico-8-toolkit)
- [godot](https://godotengine.org/) - open source game engine
- [love2d](https://love2d.org/) - free game engine in lua
  - [learn2love](https://rvagamejams.com/learn2love/) - guide by the lovely rvagamejams
- [playdate sdk](https://play.date/dev/) - develop for the [playdate](https://play.date/)
  - [playdate pulp](https://play.date/pulp/) - in browser, low code development for playdate
  - [lua finite state machine](https://github.com/kyleconroy/lua-state-machine?tab=readme-ov-file)
  - [performance tips](https://old.reddit.com/r/PlaydateConsole/comments/vcgcxi/psa_for_devs_be_very_cautious_with_performance_if/)
  - [Noble Engine](https://github.com/NobleRobot/NobleEngine) - micro framework
  - [luaCATS](https://github.com/notpeter/playdate-luacats) - playdate sdk definitions for lua
  - [coroutine basics](https://edw.is/how-to-implement-action-sequences-and-cutscenes/#coroutines-basics)
- [ruffle](https://ruffle.rs/) - flash emulator
  - [Adobe Flashkit Forum](https://board.flashkit.com/board/#) - useful guides
  - [Adobe Flex and Adobe Air SDK](https://joshblog.net/2024/how-to-install-apache-flex-with-adobe-air-from-harman/) - Flex 4.16.1 && Air 51.1.3.12
  - [Adobe Flash Markdown Archive](https://gist.github.com/joshtynjala/77aebc21ce9d206b0b82b6330d717461) - bible
  - [ActionScript VS Code Plugin](https://github.com/BowlerHatLLC/vscode-as3mxml) - AS3/MXML support for VS Code
  - [JPEXS](https://github.com/jindrapetrik/jpexs-decompiler) - flash decompiler

### Ultra Swag Secret Windows Section
- [Win11Debloat](https://github.com/Raphire/Win11Debloat)
- [Winget CLI](https://github.com/microsoft/winget-cli)
  - useful [repo hub](https://winget.run/)
- [EdgeRemover](https://github.com/he3als/EdgeRemover)
  - [See also](https://github.com/ShadowWhisperer/Remove-MS-Edge)
- [StartAllBack](https://www.startallback.com/)
- [Twinkle Tray](https://twinkletray.com/)
- [Power Toys](https://github.com/microsoft/PowerToys)

# IOS Sideloaded
- [sideloadly](https://sideloadly.io/)
- [EeveeSpotify](https://github.com/whoeevee/EeveeSpotifyReborn)
- [YTLitePlus](https://github.com/YTLitePlus/YTLitePlus?tab=readme-ov-file)
- [YTMusicUltimate]()
  - [add scrobbling](https://github.com/marioparaschiv/lastfm-yt-music?ref=blog.aspy.dev)
- [SCInsta](https://github.com/SoCuul/SCInsta?tab=readme-ov-file)

### other useful and fun lil' goodies

- [easy opt outs](https://easyoptouts.com/) - scrub unwanted PII from the web
- [configure multiple github ssh keys on the same machine](https://gist.github.com/Jonalogy/54091c98946cfe4f8cdab2bea79430f9) - useful for personal / work
- [privacyguides](https://www.privacyguides.org/en/) - lock that biz down
- [discord client encyclopedia](github.com/Discord-Client-Encyclopedia-Management/Discord3rdparties)
  - [better discord](https://betterdiscord.app/)
  - [system color](https://github.com/MiniDiscordThemes/SystemColor?tab=readme-ov-file)
  - [disblock origin](https://codeberg.org/AllPurposeMat/Disblock-Origin)
