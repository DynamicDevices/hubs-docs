---
id: hubs-discord-bot
title: Discord Bot
---

## About
The [Hubs Discord Bot](https://github.com/Hubs-Foundation/hubs-discord-bot) makes it easy to connect Hubs rooms to your Discord chat server. When a Hubs room is associated with a Discord channel, users will be assigned abilities in the Hubs room based on their Discord roles. For example, Discord owners and moderators will be able to change settings on a Hubs room and be able to moderate users in the room.

![Hubs Discord bot](img/discord-bot.jpeg)

## Features
* Allows you to authenticate users joining your Hubs room.
* Saves a record of text chat and photos created in the Hubs room.
* Posts in the Discord channel when someone joins or leaves the Hubs room.

### User Permissions
Your room's user permissions will inherit the permissions that their Discord role has in the channel that the bot is bound to. Specifically

- To enter the room they must have "View Channel" permission
- To be a moderator they must have "Kick Members" permission (and "View Channel").
   - Moderators can kick and mute members in the hubs room. 
   - Moderators can also create and manipulate objects, draw and share video even if these are turned off in the room settings.
   - Note: only discord users with verified emails can become moderators
- To be a room owner they must have "Manage Channels" (and "Kick Members and "View Channel")
   - Room owners are able to change the name and scene in the room, modify other room settings, and close the room.
   - Note: only discord users with verified emails can become room owners
- The discord permissions can set either via their discord role globally, or permissions given on the specific channel to that user/role


### Bot Permissions
The bot requires several permissions in order to work. 
* "Send messages," "Read messages," and "Embed links" are necessary in order to bridge between the Hubs room that is linked to a channel and the messages that are sent within the channel on Discord. 
* "Manage webhooks" is necessary in order for the bot to find and use a webhook for bridging chat. 
* "Manage channels" is necessary in order for the bot to set the channel topic and bridge chat. Note: We do not ask for this permission globally when you add the bot to your server, instead we recommend you grant this permission to the bot in specific groups or channels. 

### Commands

The following features outline the current bot commands and how they can be accessed by users in the Discord server:

🦆`!hubs` - Lists information about the currently linked room.

🦆`!hubs create` - Creates a default Hubs room and puts its URL into the channel topic. Rooms created with `!hubs create` will inherit moderation permissions from this Discord channel and only allow Discord users in this channel to join the room.

🦆`!hubs create [environment URL] [name]` - Creates a new room with the given environment and name, and puts its URL into the channel topic. Valid environment URLs include glTFs, GLBs, and Spoke scene pages.

🦆`!hubs help` - Get information about how to use the Hubs bot.

🦆`!hubs stats` - Shows some summary statistics about room usage.

🦆`!hubs remove` - Removes the room URL from the topic and stops bridging the Discord channel with Hubs.

🦆`!hubs notify set [datetime]` - Sets a one-time notification to notify @​here to join the room at some future time.

🦆`!hubs notify clear` - Removes all pending notifications.

