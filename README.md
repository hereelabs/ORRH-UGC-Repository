<p align="center"> <img width="284" height="187" alt="ORRH Logo" src="https://github.com/user-attachments/assets/ec6140bd-0908-4ac1-b064-7818e26dd9e5" /> </p>

<p align="center" style="font-size: 8;">ORRH developed by Matt / BRAVONATCHO. We are not associated with Matt in any way.</p>
<h1 align="center"> Postmortem Catalog Extension </h1>

# Introduction

Hello, this is a repository containing patches and UGC content for ORRH. Contributions are welcome, but please read the contribution requirements.

The patches require you to also install the [ORRH Base Assets](https://drive.google.com/file/d/1RcWZ7GC-4mL727Rt2o8YuP2PXFUmSUjH/view?usp=sharing) asset pack, as the modified DLL code breaks the catalog by default. The "base assets" pack includes all assets that ORRH requires, including Catalog Items, Decals, Meshes, and Audios.

Installation is simple. Just click "Download ZIP" from the Code dropdown, then drag the files into the top level directory of your ORRH installation. Make sure to replace any files required, including the DLL file. You can omit README.md, GUIDE.md, and the .github directory if you wish.

The DLL file has been modified to not append `&assetversionid=` to your character appearance, allowing you to use custom catalog assets, and also contains the patches created by trubo to fix Assetdelivery v2 functionality.

# Contribution Guidelines

All assets that are contributed to this repository **must** follow the following guidelines:

1. Unoriginal assets must be attributed to the original creator, even if the asset is modified to any degree. You may credit yourself for edits, but the "creator" field in assets.json must include the original creator of said asset. 
2. All assets must include any other assets they rely on, such as textures and meshes.
3. Assets must **not** contain offensive or adult content. This includes assets that contain any form of bigotry or racism.
4. Assets must not contain any form of scripting or malicious code.
5. Assets must work in every client provided by the launcher. _Obviously_, Shirts and Pants wont work in 2007. But, a Hat should work fine, **with no crashes** in a 2010 client.

Intentionally not following these guidelines will result in you being banned from contributing to this repository. Otherwise, your PR will just be closed.

Stuck? Read [this guide](https://github.com/hereelabs/ORRH-UGC-Repository/blob/main/GUIDE.md) on how to add each asset type.

<h3 align="center">Links</h3>
<p align=center><a href="https://onlyretrorobloxhere.itch.io/orrh">ORRH itch.io Page</a> | <a href="https://drive.google.com/file/d/1RcWZ7GC-4mL727Rt2o8YuP2PXFUmSUjH/view?usp=sharing">"ORRH Base Assets" Asset Pack</a> | <a href="https://docs.google.com/document/d/1OMIBqNByCIjMw5h2s-JnG8AK-MjKfRhuCTQ3ki8tSUk/edit?tab=t.0">Asset Fix Guide by trubo (ignore the DLL step)</a></p>
