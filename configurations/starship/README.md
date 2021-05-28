# Starship

[Starship][Starship] is a cross-platform customizable prompt which was written in Rust & is **super-fast**. Also, unlike most other prompt customization tools, Starship requires close to none customizations. It just works pretty well (_and beautifully_) right out of the box!

That said, you can have a look at the `starship.toml` files & see it's pretty minimal. But don't be fooled with the minimal configurations! Take a look & see for yourself what this minimally configured prompt looks like on Windows Terminal:

![Starship Prompt screenshot](../../assets/starship_prompt.PNG)

**NOTE**: _The areas marked with red boxes are the shell prompts._

So, if it piqued your interests now, read ahead. In this README you'll find all the instructions to properly set up Starship on your Windows machine as well.

## Setting Up Starship
<!-- TODO: Recommend the automated install script -->
1. First off, download the required binary from GitHub: [Starship Binaries][Starship Binaries]
2. Extract the zipped files to `%SYSTEMDRIVE%\Tools`.
3. Ensure the above path is added to System Path using the Environment Variable `$PATH`.
4. Add the following lines to your `$PROFILE` file with the following lines:

    ```powershell
    # Loads the Starship prompt for PowerShell
    Invoke-Expression (&starship init powershell)

    # Configures the %TEMP% folder for Starship caching
    $ENV:STARSHIP_CACHE = Resolve-Path -Path $ENV:TEMP

    # Configures the path to the starship.toml file
    $ENV:STARSHIP_CONFIG = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml
    ```

5. Then create a `.starship` directory at `%USERPROFILE%`. The `starship.toml` file will go inside the `.starship` folder.
6. Copy of the contents of [starship.toml](starship.toml) in this repository to the file you just created.

    Contents of the [starship.toml](starship.toml) file in this repo:

    ```toml
    [character]
    success_symbol = "[->](bold green)"

    [docker_context]
    symbol = " "

    [package]
    symbol = " "

    [python]
    symbol = " "

    [git_branch]
    symbol = " "
    remote_branch = "main"
    remote_name = "github"
    ```

    **NOTE**: Some contents has been removed from the [starship.toml](starship.toml) file. Refer to the hyperlink for a better reference.

7. Then run the `. $Profile` to reload the PowerShell profile.
8. Enjoy & share a screenshot of your terminal with the rest of the world!

## Automate the Process

**TODO: Work-in-Progress! Please check back later for any new updates**

<!-- TODO: Share ways to automate it using PowerShell & Unix tools like wget/curl -->

<!-- Reference Links -->
[Starship]: https://starship.rs/
[Starship Binaries]: https://github.com/starship/starship/releases
