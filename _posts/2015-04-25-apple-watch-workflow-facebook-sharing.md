---
layout:     post
title:      "Post to Facebook from your Apple Watch with Workflow"
author:     Pascal Cremer
date:       2015-04-25 18:55:30
tags:       apple applewatch ios automation workflow social sharing
---

One of my most favorite iOS apps is [Workflow](https://workflow.is). It's awesome. It's kinda like Autormator for your iPhone or iPad. It lets you choose among hundreds of predefined actions and chain them together to automate all kinds of tasks. It gives you a convenient drag and drop interface which magically handles all the heavy lifting with iOS' system frameworks and core services in the background. If you haven't heard of it yet, I urge you to go to the [AppStore](https://itunes.apple.com/app/workflow-powerful-automation/id915249334) to check it out right now.

A few weeks ago, the Workflow team unveiled a mini site where they were announcing [Workflow for Apple Watch](https://workflow.is/on/your/wrist), a WatchKit extension to trigger workflows right from your wrist. I was already excited for Apples new shiny gadget, but this was even more of a tease.

I was among the lucky ones who got theirs hands on the first batch of Apple Watches sent to customers on April 24th. After one night of extensively testing (and basically draining its battery twice), I started thinking about a useful workflow to have on your wrist.

So I threw together a simple but effective little workflow called Wrist Share to post a single image or multiple images plus text to Facebook (and other services) without Handoff. Here are some screenshots:

![Wrist Share Screenshots](http://i.imgur.com/IaxjhB8.jpg)

![Wrist Share Screenshots](http://i.imgur.com/M6uhxGi.jpg)

Some small caveats:

* At the moment, only locally stored images will work. If you choose an image that hasn't been yet downloaded from iCloud, it will crash the Workflow Watch app
* I added a resize action to have a maximum width of 800 pixels. If an image is too big, it seems to crash the Workflow Watch app

I personally think it's pretty damn sweet to be able to post stuff to Facebook from your freaking wrist watch without having to wait for the official Facebook app (if there ever will be one).
