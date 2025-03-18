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

### Option 2: Quick Terminal Installation

Use the provided setup script to install everything automatically:

```bash
bash install.sh
```

This will:

- Copy Quick Actions to `~/Library/Services/`
- Copy AppleScripts to `~/Library/Scripts/`

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
