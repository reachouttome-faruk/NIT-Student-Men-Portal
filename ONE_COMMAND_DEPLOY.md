# ⚡ ONE COMMAND DEPLOYMENT

## The Absolute Simplest Way to Deploy

### Step 1: Download Project
- Click ⋮ menu in Replit → Download as zip
- Extract on your computer

### Step 2: Create GitHub Repository
- Go to **github.com/new**
- Name: `nit-mentoring-portal` (or anything you want)
- Make it **PUBLIC**
- Click **Create repository**

### Step 3: One Command Deploy

Open terminal in your extracted folder and run:

```bash
# Replace YOUR_USERNAME and YOUR_REPO with your actual values
git init
git add .
git commit -m "NIT Mentoring Portal"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

### Step 4: Enable GitHub Pages
1. Go to your repo → **Settings** → **Pages**
2. Under "Build and deployment":
   - Source: **GitHub Actions**
3. Click **Save**

### Done! 🎉

Your site will deploy automatically in 2-3 minutes at:
```
https://YOUR_USERNAME.github.io/YOUR_REPO/
```

**Repository name is auto-detected!** No manual configuration needed!

---

## Even Simpler: GitHub Web Interface

Don't want to use terminal? Use GitHub's web interface:

1. **Create new repository** on GitHub
2. **Upload files**: Drag and drop your extracted folder
3. **Edit `vite.config.github.ts`**: Change repo name
4. **Enable Pages**: Settings → Pages → GitHub Actions
5. **Wait 2 minutes**: Your site is live!

---

## Troubleshooting

### Build fails?
- Make sure repo is PUBLIC
- Check Actions tab for error messages
- Verify you changed the repo name in vite.config.github.ts

### Blank page?
- Repo name in config must match exactly
- Wait full 3 minutes for first deploy
- Check browser console for errors

---

**PostCSS Warning?** It's harmless! Your app works perfectly despite the warning message.
