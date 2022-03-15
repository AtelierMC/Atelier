<div align="center">
<a><img src="https://i.redd.it/y1lm9i7eai021.png" alt="Atelier"></a>

## ATELIER PROJECT

[![MIT License](https://img.shields.io/github/license/AtelierMC/Atelier?&logo=github)](LICENSE)
[![Github Actions Build](https://img.shields.io/github/workflow/status/AtelierMC/Atelier/Build?event=push&logo=github)](https://github.com/AtelierMC/Atelier/releases/latest)
[![Join us on Discord](https://img.shields.io/discord/814127567207530527.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://ateliermc.tech/discord)

#### Atelier is a high performance fork of [Purpur](https://github.com/PurpurMC/Purpur) with the aim of modifying the source code for some specific purpose. 
</div>

## License
[![MIT License](https://img.shields.io/github/license/AtelierMC/Atelier?&logo=github)](LICENSE)

All patches are licensed under the MIT license, unless otherwise noted in the patch headers.

See [PurpurMC/Purpur](https://github.com/PurpurMC/Purpur), and [PaperMC/Paperweight](https://github.com/PaperMC/paperweight) for the license of material used by this project.


## Downloads & Usages
[![Github Actions Build](https://img.shields.io/github/workflow/status/AtelierMC/Atelier/Build?event=push&logo=github)](https://github.com/AtelierMC/Atelier/releases/latest)

Please head to [Releases](https://github.com/AtelierMC/Atelier/releases/latest) to download the latest build.

If you are using another [Paper](https://github.com/PaperMC/Paper) forks, please follow this: 
1. Copy these files to {SERVER DIR}/storage:
- banned-players.json
- banned-ips.json
- ops.json
- whitelist.json
- usercache.json **(Unless --universe options are used)**
2. Copy these files to {SERVER DIR}/config/:
- bukkit.yml
- help.yml
- commands.yml
- permissions.yml **(If settings.permissions-file are using default value)**
- spigot.yml
- paper.yml
- pufferfish.yml
- purpur.yml
3. Copy all world folders to {SERVER DIR}/worlds **(Unless --universe options are used)**

## Building and setting up

#### Initial setup
Run the following commands in the root directory:

```
./gradlew applyPatches
```

#### Creating a patch
Patches are effectively just commits in either `Atelier-API` or `Atelier-Server`. 
To create one, just add a commit to either repo and run `./gradlew rebuildPatches`, and a 
patch will be placed in the patches folder. Modifying commits will also modify its 
corresponding patch file.

We followed PaperMC/Paper contribution guides, please see [PaperMC/Paper CONTRIBUTING.md](CONTRIBUTING.md) for more detailed information.


#### Compiling

Use the command `./gradlew build` to build the API and server. Compiled JARs
will be placed under `Atelier-API/build/libs` and `Atelier-Server/build/libs`.

To get a atelierclip jar, run `./gradlew createReobfPaperclipJar`.
To install the `atelier-api` and `atelier` dependencies to your local Maven repo, run `./gradlew publishToMavenLocal`


## Credits
1. [Purpur](https://github.com/PurpurMC/Purpur/)
- Upstream
2. [PaperPR](https://github.com/PaperMC/Paper/pulls)
- Optimize despawn when no player is on range
- Optimize Varints
- Use DataConverter for itemstack/entity
- AlternateCurrent (Original author: [SpaceWalkerRS](https://github.com/SpaceWalkerRS/alternate-current))
3. [JettPack](https://gitlab.com/Titaniumtown/JettPack)
- Reduced allocations, reducing memory usage and therefore the frequency at which garbage collection runs.
- Better handling of async tasks
4. [Slice](https://github.com/Cryptite/Slice)
- Reduction in unnecessary packets.
5. [EMC](https://github.com/starlis/empirecraft) 
- Hopper optimization.
- Vanilla enchaments
