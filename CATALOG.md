> [!NOTE]
> Reserving IDs for the CharacterMesh object, such as `MeshId` and `OverlayTextureId` values, will use the field 2147482647 - 2147483647, which is 1000 below the 32-bit integer limit. Do **NOT** use these fields for anything else.

Want to port an asset from the modern catalog / create a completely unique hat? Read [this](https://github.com/hereelabs/ORRH-UGC-Repository/blob/main/PORTING.md).

Need an example PR? Look [here](https://github.com/hereelabs/ORRH-UGC-Repository/pull/1).

# How to Properly Reserve an Asset

When creating an asset, make sure the actual hat RBXM file is the final number. Here's an example of an non existant hat:
```
1289 - hat.mesh
1290 - hat.png
1291 - hat.rbxm
```
This makes it easy to fix merge conflicts, as future contributors can easily add new hat assets. Please make sure to follow this rule for the sake of easy asset additions.

# Basic Asset Additions

Before reserving an asset id, make sure to add "1000000000" to it. For example, 1291 would become 1000001291, not 10000000001291.

All assets (.rbxm, .mesh, .png) will go into "/data/assets/accessory". Make sure to follow the above.

The asset also needs a thumbnail. Add one into "/data/thumbnails" and make sure that the name of the file is the same as the .rbxm file.

Finally, you can add a new asset to the catalog. You can edit "/data/assets.json" and add something that looks like the following (note, the assetversionid is ignored, but is still required)

```
"10000001291": {
    "name": "My Super Cool Hat",
    "description": "Don't look at me like that.",
    "type": "Hat",
    "creator": "NostalgicNoob06",
    "created": "2025-12-03T19:02:29.41Z",
    "assetVersion": 1
}
```

# Conclusion

Our example file structure would look something like:
```
/data/assets/accessory/1000001289.mesh
/data/assets/accessory/1000001290.png
/data/assets/accessory/1000001291.rbxm

/data/thumbnails/1000001291.png
```
\+ modifications to assets.json
