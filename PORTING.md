# Porting Assets from the Modern UGC Catalog

## `Requirements:`
- `Roblox Studio (Modern)`
- `Novetus (For the SDK, not for anything else)`
- `2013M Client (ORRH)`

To port an asset from Modern Roblox, for example a Hat, you must first find the Mesh ID and Texture of said Hat. This is made easy with BTRoblox, and that way is how this guide will proceed, but you can find the asset IDs manually if you'd like.

<img width="1444" height="548" alt="librewolf_9yd9rVIbxX" src="https://github.com/user-attachments/assets/e598065c-13a7-4af3-856e-51865a5d92d1" />

Grab the MeshID and the TextureID, then open up Roblox Studio (Modern) to a empty map. Make sure to delete the baseplate.

<img width="254" height="80" alt="RobloxStudioBeta_TRcea9S6OZ" src="https://github.com/user-attachments/assets/19a74c21-53ee-40e5-98a3-31432ac9ae29" />

Insert a MeshPart, and place the asset ID for the Mesh and Texture in the properties.

<img width="405" height="66" alt="RobloxStudioBeta_eXOLnbwki9" src="https://github.com/user-attachments/assets/d44c93eb-8066-40ec-a32c-63d8b9231ec6" />

Make sure that the position of the MeshPart is `0, 0, 0`.

<img width="488" height="419" alt="RobloxStudioBeta_gaGAtvwRkc" src="https://github.com/user-attachments/assets/e358066d-760c-45fb-a538-bf1d1b1ed7bb" />
<img width="1136" height="144" alt="RobloxStudioBeta_hEyAJTxIo3" src="https://github.com/user-attachments/assets/ec11c581-75f7-41d8-99e4-07ba2a29d460" />

Now, open Novetus SDK, and go to Mesh Converter, and select the OBJ file.

<img width="289" height="200" alt="20h0PRY3sJ" src="https://github.com/user-attachments/assets/fb15b506-09f5-432c-a129-dea477f1eff1" />

The `filename.mesh` and the `MeshpartX_diff.png` files are the mesh and texture files. Rename them following the asset reservation rules.
