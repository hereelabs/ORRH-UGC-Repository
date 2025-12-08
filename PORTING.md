# Porting Assets to Old Roblox

## `Requirements:`
- `Roblox Studio (Modern)`
- `Novetus (For the SDK, not for anything else)`
- `2013M Client (ORRH)`

If you are not porting from the Roblox Catalog (it is your own OBJ) then skip the below section.

## Turning the Asset into a Valid .obj File.
To port an asset from Modern Roblox, for example a Hat, you must first find the Mesh ID and Texture of said Hat. This is made easy with BTRoblox, and that way is how this guide will proceed, but you can find the asset IDs manually if you'd like.

<img width="1444" height="548" alt="librewolf_9yd9rVIbxX" src="https://github.com/user-attachments/assets/e598065c-13a7-4af3-856e-51865a5d92d1" />

Grab the MeshID and the TextureID, then open up Roblox Studio (Modern) to a empty map. Make sure to delete the baseplate.

<img width="254" height="80" alt="RobloxStudioBeta_TRcea9S6OZ" src="https://github.com/user-attachments/assets/19a74c21-53ee-40e5-98a3-31432ac9ae29" />

Insert a MeshPart, and place the asset ID for the Mesh and Texture in the properties.

<img width="405" height="66" alt="RobloxStudioBeta_eXOLnbwki9" src="https://github.com/user-attachments/assets/d44c93eb-8066-40ec-a32c-63d8b9231ec6" />

Make sure that the position of the MeshPart is `0, 0, 0`.

<img width="488" height="419" alt="RobloxStudioBeta_gaGAtvwRkc" src="https://github.com/user-attachments/assets/e358066d-760c-45fb-a538-bf1d1b1ed7bb" />
<img width="1136" height="144" alt="RobloxStudioBeta_hEyAJTxIo3" src="https://github.com/user-attachments/assets/ec11c581-75f7-41d8-99e4-07ba2a29d460" />

## Turning a OBJ into a .mesh 1.00

Now, open Novetus SDK, and go to Mesh Converter, and select the OBJ file. (Make sure to select 1.00, NOT 1.01. The screenshot is wrong.)

<img width="289" height="200" alt="20h0PRY3sJ" src="https://github.com/user-attachments/assets/fb15b506-09f5-432c-a129-dea477f1eff1" />

The `filename.mesh` and the `MeshpartX_diff.png` files are the mesh and texture files. Rename them following the asset reservation rules.

I named the mesh file `10000000006.mesh` and the texture `10000000007.png`, and placed them in `/data/assets/accessory/`.

Now, open the 2013M Studio

## Creating the Hat RBXM

Since I don't have the time or space to teach you everything you need to know about creating every kind of Hat, all you need to know is, creating Hats in 2013M is the best client to do it in.

Open up 2013M studio, and create a new map. I'd suggest you generate Terrain, as you need to test your hat a bit on a dummy.

How do you insert the dummy? Go to `Tools > Insert > Models`, then go to the 2013M's `content/fonts` folder and select `character.rbxm`.

<img width="558" height="455" alt="RobloxStudioBeta_PIALtIgaCP" src="https://github.com/user-attachments/assets/01c029e6-db7a-49cd-acf3-86754dae5c04" />

After this, you insert a Hat into the Model, then a Part into the Hat called "Handle", then a SpecialMesh inside of the Handle. Place the asset id of the Mesh and Texture in there, and you can change the positioning of the hat inside of the Hat's properties.

For example, the Mesh of the Noob Hat was changed in Scale to `0.5, 0.5, 0.5` then the Hat properties were set to this:
<img width="1470" height="529" alt="RobloxStudioBeta_2CX0hWTaxu" src="https://github.com/user-attachments/assets/a81aea5b-34af-44ac-995c-42f2801ee5da" />

Finally, save the Hat as a Model with the final Reserved asset id into the `/data/assets/accessory/` directory. In this case, it is `10000000008.rbxm`.

Now you can read the [Guide](https://github.com/hereelabs/ORRH-UGC-Repository/blob/main/CATALOG.md) on adding new assets. The PR that added this hat into the repository is [here](https://github.com/hereelabs/ORRH-UGC-Repository/pull/2)! Have fun!

## Porting over KeyframeSequence objects from modern versions of Roblox Studio over to older Studio clients

Let's assume you already have a KeyframeSequence object ready in modern Roblox Studio, export it as a Roblox XML Model File. `.rbxmx`

`Save / Export > Save to File...`

After you have the file on your computer, you will have to rename the file extension from .rbxmx to .rbxm, as it is the only format all clients in ORRH support opening.

Open the file you've just renamed in any text editor of your choice and replace the beginning 4 lines of the file with this, as otherwise it won't let you insert it into Studio.

```
<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4" assettype="animation">
<External>null</External>
<External>nil</External>
```

After that you should just be able to insert the .rbxm file onto the `/data/assets/accessory/` directory, rename it accordingly, and import it into 2013M Studio, and the animation should be able to load in all of the clients that support animations being played.
