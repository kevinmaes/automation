# macOS Automation Scripts

This repository contains automation scripts and workflows for macOS applications like Numbers, Excel, and Finder. These scripts help streamline repetitive tasks such as batch exporting, converting files, and more.

## ✨ Features

- Automation for macOS applications (Numbers, Finder, etc.)
- Quick Actions and AppleScripts ready to integrate with Finder
- Easy Terminal installation and usage
- Expandable with additional scripts and workflows over time

---

## 📥 Installation

### Option 1: Manual Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/kevinmaes/automation.git
   cd automation
   ```

2. **Install Quick Actions:**

   ```bash
   cp workflows/*.workflow ~/Library/Services/
   ```

3. **Install AppleScripts:**

   ```bash
   mkdir -p ~/Library/Scripts/
   cp scripts/*.applescript ~/Library/Scripts/
   ```

4. Done! You can now use Quick Actions directly from Finder or run scripts manually.

---

### Option 2: Interactive Terminal Installation

Use the provided setup script for an interactive installation:

```bash
bash install.sh
```

The installer will:

1. Display all available scripts grouped by type (Quick Actions and AppleScripts)
2. Let you choose which scripts to install:
   - Enter specific numbers (e.g., "1 3") to install selected scripts
   - Enter "a" to install all scripts
   - Enter "q" to exit without installing

Example output:

```
macOS Automation Scripts Installer

Available Quick Actions:
1) Convert Excel -> Numbers.workflow

Available AppleScripts:
2) example.applescript

Installation options:
a) Install all scripts
q) Quit without installing

Enter the numbers of scripts to install (separated by spaces)
Example: 1 3 4 or 'a' for all:
```

Selected scripts will be installed to their appropriate locations:

- Quick Actions → `~/Library/Services/`
- AppleScripts → `~/Library/Scripts/`

---

## 🚀 Usage

### Finder Quick Actions (Recommended)

1. **Right-click any compatible file in Finder.**
2. Choose **Quick Actions → Select the installed action**, e.g., `Export Numbers to Excel`.

### Terminal Usage

You can run the AppleScripts manually:

```bash
osascript ~/Library/Scripts/export_numbers_to_excel.applescript
```

---

## 🛠️ Planned Enhancements

- More Quick Actions for various macOS automation tasks
- Additional workflows for cross-platform file conversions
- Optional CLI wrappers for easier Terminal usage
- Batch-processing scripts for PDFs, images, or other file types

---

## 🤝 Contributing

Contributions welcome!  
Please fork the repository, create a feature branch, and submit a pull request.  
Ensure new scripts include clear documentation in the repo.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 📬 Contact

For questions or support, feel free to reach out:

**Kevin Maes**  
[Your Email Here]
