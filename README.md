# hunter

An AI-powered job hunting agent. It searches job platforms for openings that match your profile, evaluates them against your resume, and exports the results as a scored CSV.

## How it works

`main.sh` runs the AI agent using:

- **`system-prompt.md`** — instructs the AI to act as a senior job hunter, how to search, filter, score, and export results

- **`user-prompt.md`** — your personal criteria in natural language (keywords, filters, resume link, target platforms, ... e.g. written in your own way)

The agent searches supported platforms, optionally fetches your resume to improve match scoring, and writes the results to `exports/hunts/`.

## Supported Platforms

- [Indeed](https://indeed.com)
- [backend-br/vagas](https://github.com/backend-br/vagas/issues)
- [frontendbr/vagas](https://github.com/frontendbr/vagas/issues)


## Output

Results are saved to `exports/hunts/`. Format and columns are defined in `system-prompt.md`.


## Setup

### 1. Install dependencies

```sh
npm install
```

Log in:

```sh
claude auth login
```

### 2. Connect MCP servers

`.mcp.json` lists the configured MCP servers. Authorize each on first run — the agent will prompt you to connect via browser.

### 3. Configure your search

Copy the example prompt and fill in your own filters:

```sh
cp user-prompt.example.md user-prompt.md
```

Edit `user-prompt.md` with whatever criteria you want.

### 4. Run

```sh
bash main.sh
```

Results appear in `exports/hunts/`.

## Configuration

| File | Purpose |
|---|---|
| `system-prompt.md` | Agent behavior and output format |
| `user-prompt.md` | Your personal search criteria (gitignored) |
| `user-prompt.example.md` | Template for `user-prompt.md` |
| `.mcp.json` | MCP servers config |
| `.claude/settings.json` | Agent permissions |

## Privacy

`user-prompt.md` and `exports/` files are gitignored — your search criteria and results stay local.
