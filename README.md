## JettPack

AtelierSMP is a fork of [Purpur](https://github.com/PurpurMC/Purpur) with some performance patches from many sources.

### Here's some of the most notable additions my fork contains:
1. Reduced allocations, reducing memory usage and therefore the frequency at which garbage collection runs from [JettPack](https://gitlab.com/Titaniumtown/JettPack).
2. Faster random implementation from [JettPack](https://gitlab.com/Titaniumtown/JettPack).
3. Reduction in unnecessary packets (thanks to [Slice](https://github.com/Cryptite/Slice)).

Some patches from JettPack are using both Lithium  code which aims to vanilla-style and Patina's patches which aims to break vanilla-style, so we don't want to use it.
