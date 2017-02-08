##Spread
_Spread is a distributed cache application running on nodes (like servers, devices, browsers) that manages the synchronization of your data and generate events when a change happens._

####Data you need at a place is automatically stored locally
Spread uses a [topic based publish–subscribe pattern](https://en.wikipedia.org/wiki/Publish%E2%80%93subscribe_pattern), so you just tell Spread what you are locally interested in, giving:
- **Very fast lookups**, since most of the time they don't involve network
- **Independency in case of (remote) trouble**, since the data is here, persistent

This is highly desirable for micro services on server side, but also for offline first applications on client side

####Instantly syncronized and consistent
Spread propagates any update in the system as soon as possible using [CmRDT](https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type), giving:
- **Instant access to up to date data**, even for big files, since propagation starts before the full file is uploaded, thanks to built in HTTP2 server
- **Eventual consistency**, since any update triggers a conflict free sync immediately and results in a propagation report. Disconnected nodes automatically synchronize at reconnection

This is highly desirable for micro services and distributed applications in general, but especially the ones serving mutable contents like CDN, video applications, telephony systems

####Scalable and highly available
Spread can shard and replicate data across multiple nodes, giving:
- **Infinite storage capacity**, since data is stored in multiple servers
- **Infinite number of nodes**, since propagation is managed by multiple servers at once
- **High availability**, since data is replicated, loss of one node doesn't impact service

This is highly desirable to really stop worrying about data

####Full history of events
Spread saves all updates, giving:
- **Centralized logs**, since all updates can be archived in a logging system
- **Rollback and playback**, since you can go any time in the past

This is highly desirable for snapshots, backups, disaster recovery, applying new service to a series of past events, etc.

##Related work
Spread is inspired from other great services:
- data synchronization on devices like Firebase. Firebase is JSON only, doesn't provide on premises instances nor cache, meaning you depend on a third party service (and it tends to be expensive when used on server side since you pay $1 per downloaded GB).
- file synchronization across servers like unison, glusterFS, rsync. Those tools are server side only, do not sync extra metadata and you need extra tools like inotify to generate events from changes

##Getting started
####In an Erlang project
Set spread as one of your dependencies, launch your app, and start playing with `spread:set(Path, Binary)` and `spread:get(Path)`
####Standalone
Please refer to [`spread_release`](https://github.com/Littlelies/spread_release) project instead.
####Development
Create an empty rebar3 release, replace the apps/spread directory with the git repo, copy the deps in rebar.config, enjoy

##Configuration
- When a request comes in, spread can authenticate and authorizes it using JWT. `jwt_key` and `jwt_iss` are needed to decode the JWT. If not present, all requests are accepted.
