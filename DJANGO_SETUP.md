# Django & Python Virtual Environment Setup for Neovim

## Overview
Your Neovim is now configured with:
- ✅ **venv-selector.nvim** - Virtual environment selector
- ✅ **Pyright** - Python LSP with Django support
- ✅ **Django-optimized settings** - Better type checking for Django projects

## Installation

### 1. Install the Plugin
Restart Neovim and run:
```vim
:Lazy sync
```

### 2. Install Django Type Stubs (Optional but Recommended)
In your Django project's virtual environment:
```bash
# Activate your venv first
source .venv/bin/activate  # or your venv path

# Install Django stubs for better type hints
pip install django-stubs
pip install djangorestframework-stubs  # if using DRF
```

## Usage

### Selecting a Virtual Environment

#### Method 1: Using Telescope (Recommended)
Press `<leader>vs` (default: Space + vs) to open the venv selector.
- This will show all available virtual environments
- Use arrow keys or j/k to navigate
- Press Enter to select

#### Method 2: Using Cached Venvs
Press `<leader>vc` to select from recently used venvs.

#### Method 3: Command
```vim
:VenvSelect
```

### Virtual Environment Detection

The plugin automatically searches for venvs in:
- Current directory: `.venv`, `venv`, `.env`, `env`
- Home directory: `~/venvs`, `~/.virtualenvs`
- Poetry: `~/.cache/pypoetry/virtualenvs`
- Pipenv: `~/.local/share/virtualenvs`
- Pyenv: `~/.pyenv/versions`

## Django Project Setup

### 1. Create a Django Project Structure
```
myproject/
├── .venv/              # Virtual environment
├── manage.py
├── myproject/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── myapp/
│   ├── models.py
│   ├── views.py
│   └── ...
├── pyrightconfig.json  # Pyright configuration
└── requirements.txt
```

### 2. Copy Pyright Configuration
Copy the template to your Django project root:
```bash
cp ~/.config/nvim/templates/pyrightconfig.json /path/to/your/django/project/
```

Edit it to match your Python version and venv path.

### 3. Activate Virtual Environment in Neovim
1. Open your Django project in Neovim
2. Press `<leader>vs`
3. Select your project's virtual environment
4. Pyright will automatically reload with the correct Python path

## Features

### ✅ Auto-completion
- Django models, views, forms
- Django ORM methods
- Template tags (in Python files)

### ✅ Go to Definition
- Press `gd` on any Django class/function
- Works with Django source code if installed in venv

### ✅ Type Checking
- Optimized for Django's dynamic nature
- `reportGeneralTypeIssues` disabled to avoid false positives
- Smart handling of Django's magic attributes

### ✅ Import Management
- Auto-import Django modules
- Organize imports

## Keymaps

| Keymap | Action |
|--------|--------|
| `<leader>vs` | Select virtual environment |
| `<leader>vc` | Select cached venv |
| `gd` | Go to definition |
| `K` | Show documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |

## Troubleshooting

### LSP Not Working After Selecting Venv
1. Check if venv is activated: `:VenvSelect` should show active venv
2. Restart LSP: `<leader>rs` or `:LspRestart`
3. Check LSP status: `:LspInfo`

### Django Imports Not Recognized
1. Ensure Django is installed in the selected venv:
   ```bash
   source .venv/bin/activate
   pip install django
   ```
2. Restart Neovim
3. Select the venv again with `<leader>vs`

### Type Checking Too Strict
Edit `pyrightconfig.json` in your project:
```json
{
  "typeCheckingMode": "basic",  // or "off"
  "reportGeneralTypeIssues": "none"
}
```

## Advanced: Per-Project Venv Auto-activation

Create a `.nvim.lua` file in your Django project root:
```lua
-- Auto-activate venv when opening this project
vim.cmd('VenvSelectCached')
```

## Tips for Django Development

1. **Install django-stubs** for better type hints
2. **Use pyrightconfig.json** in each Django project
3. **Keep venv in project directory** (`.venv`) for auto-detection
4. **Use `<leader>vs`** when switching between projects
5. **Restart LSP** (`<leader>rs`) if autocomplete stops working

## Example Django Workflow

```bash
# 1. Create Django project
django-admin startproject myproject
cd myproject

# 2. Create virtual environment
python -m venv .venv
source .venv/bin/activate

# 3. Install Django and stubs
pip install django django-stubs

# 4. Copy Pyright config
cp ~/.config/nvim/templates/pyrightconfig.json .

# 5. Open in Neovim
nvim .

# 6. Select venv (in Neovim)
# Press <leader>vs and select .venv

# 7. Start coding!
# Open models.py, views.py, etc.
# Enjoy full LSP support!
```

## Additional Plugins to Consider

- **nvim-dap-python** - Python debugging (already configured)
- **neotest-python** - Test runner integration
- **nvim-coverage** - Code coverage display

Your Neovim is now a powerful Django IDE! 🚀
