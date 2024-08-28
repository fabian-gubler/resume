# Resume of Fabian Gubler

## 📎 Links to Resumes

- [**Fabian Gubler CV (English)**](https://raw.githubusercontent.com/fabian-gubler/resume/main/en_FabianGublerResume.pdf)
- [**Fabian Gubler CV (German)**](https://raw.githubusercontent.com/fabian-gubler/resume/main/de_FabianGublerResume.pdf)

💻 Original Template from [Awesome CV](https://github.com/posquit0/Awesome-CV)

## 💡 Inspiration

I don't like updating resumes, the real challenge is not writing the content. Instead, it's messing with Word and other tools to adjust margins, dealing with columns, page breaks and just formatting in general. 

Just like how some prefer using YAML for managing configurations due to its simplicity and efficiency, I chose LaTeX, Nix and Arara to automate the resume creation. This approach provides consistent formatting and ease of updates.

## 🚀 Getting Started

### Setting up the Application (Using Nix)

#### Prerequisites

1. **Install Nix**: We use Nix for a reproducible development environment. Ensure you have it installed. You can find installation instructions [here](https://nixos.org/download.html).
   - **Note for Windows Users**: Nix doesn’t run natively on Windows. To use Nix on Windows, set up the Windows Subsystem for Linux (WSL). Follow the [WSL installation guide](https://docs.microsoft.com/en-us/windows/wsl/install) for setup.

2. **Enable Nix Flake**: Since the `flake` feature is experimental, add a specific configuration to `~/.config/nix/nix.conf`:

   ```sh
   experimental-features = nix-command flakes
   ```

#### Create Environment & Compile

1. Clone the repository:

   ```sh
   git clone https://github.com/fabian-gubler/resume.git
   ```

2. Navigate to the project directory:

   ```sh
   cd resume
   ```

3. Using Nix, set up the development environment. This installs all required dependencies for LaTeX compilation:

   ```sh
   nix develop
   ```

4. To compile the simly documents, run:

   ```sh
   make
   ```

   This command generates both CVs in PDF format.
