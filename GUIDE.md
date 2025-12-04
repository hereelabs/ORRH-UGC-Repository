# Setting Up a Developer Environment

## `Requirements`
- `Git for Windows`
- `VSCodium` (But any editor works, this is just the one I use.)
- `Empty ORRH Installation`

<h3 align="center">Links</h3>
<p align=center><a href="https://github.com/hereelabs/ORRH-UGC-Repository/blob/main/CATALOG.md">Adding Catalog Assets</a> | <a href="https://github.com/hereelabs/ORRH-UGC-Repository/blob/main/PORTING.md">Porting Assets from .OBJ / Modern Roblox</a></p>

# The Guide Proper

Create a fork of this repository, and name it whatever you'd like. I'll stick with the same name, `ORRH-UGC-Repository`, for the rest of this guide.

Open the command line and run `git clone https://github.com/YOUR-NAME-HERE/ORRH-UGC-Repository.git`. After that, in the file explorer, enter this folder and extract all the files of a base `ORRH v1.2.0.1` installation into it. 

The `.gitignore` should automatically hide all the base ORRH assets. Now, open up VSCodium, and open the folder. The sidebar should be **empty**. If it is not, you did something wrong, and you should try again.

# Contributing

Every time you want to add new asset(s), switch branches to a new one. You can do this by clicking on `main` in the bottom left, which will cause the search dialogue box to open in the top middle of your screen.

<img width="93" height="24" alt="Dv1DqnRVYo" src="https://github.com/user-attachments/assets/b252032e-dccc-46f9-b4b0-a4425a5ccfba" />


You should then click `Create new branch...` and type in the name for your branch. The name can be nonsensical if you like, I don't really care about the branch name.

<img width="177" height="76" alt="VSCodium_spW7x4xkuM" src="https://github.com/user-attachments/assets/4b129190-bf3c-4bb6-b30d-91d784064d8b" />

I don't have the time to teach you every possible tool of Git, so if you mess up, I can't help you. 

Every time you're done adding an asset, or changing something, in the `Source Control` menu you should see a `Changes` dropdown that contains every file that's been modified.

Commit with a message once you're done working. After this, install the `Github Pull Requests` Extension for VSCodium, log in, then create a pull request for your feature.

<img width="1207" height="294" alt="VSCodium_XM1YwxCoE7" src="https://github.com/user-attachments/assets/b4d6b1c8-4474-4137-abbe-6f16d5c48852" />

**Follow the template.** Make sure your additions **work**. If you are confident, open the PR, and I will review it. Thanks, and have fun.
