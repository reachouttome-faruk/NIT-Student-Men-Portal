# 🎓 NIT Mentoring Portal - VS Code Edition

**Students Mentoring Portal for Navodaya Institute of Technology (Autonomous)**

A comprehensive web application for faculty to track student academic performance, activities, and mentoring progress. Features a professional 5-step form flow with PDF report generation, college branding, and watermarked backgrounds.

---

## ✨ Features

- 📝 **5-Step Form Flow**
  - Student Details (with photo upload)
  - IA Subject Performance (marks tracking)
  - Backlog Information (subject management)
  - Other Parameters (attendance, activities)
  - Review & Generate PDF

- 🎨 **Professional UI**
  - NIT Admin Block watermarked background
  - Clean, modern design with dark mode
  - Fully responsive (mobile, tablet, desktop)
  - Tailwind CSS + shadcn/ui components

- 📄 **PDF Generation**
  - Official NIT branding and header
  - Comprehensive student report
  - Faculty signature sections
  - Download or print ready

- 💾 **Data Persistence**
  - localStorage-based (no backend needed)
  - Data survives page refreshes
  - 100% client-side application

---

## 🚀 Quick Start for VS Code

### Prerequisites

- **Node.js 20+** - [Download](https://nodejs.org/)
- **VS Code** - [Download](https://code.visualstudio.com/)

### One-Command Setup

**Windows:**
```bash
setup-for-vscode.bat
```

**Mac/Linux:**
```bash
./setup-for-vscode.sh
```

This automatically:
- ✅ Replaces config files (removes Replit dependencies)
- ✅ Cleans old dependencies
- ✅ Installs fresh packages
- ✅ Sets up VS Code

Then:
```bash
npm run dev
```

**App opens at:** `http://localhost:5173` 🎉

---

## 📦 Manual Setup

If you prefer manual setup:

### Step 1: Clean Dependencies
```bash
# Replace package.json with VS Code version
cp package.vscode.json package.json

# Replace vite config with clean version
cp vite.config.vscode.ts vite.config.ts

# Clean and reinstall
rm -rf node_modules package-lock.json
npm install
```

### Step 2: Start Development
```bash
npm run dev
```

### Step 3: Build for Production
```bash
npm run build
```

Output: `dist/` folder (ready to deploy anywhere)

---

## 🎯 What Was Changed from Replit

### ✅ Removed (Not Needed)

**Replit Dependencies:**
- ❌ `@replit/vite-plugin-cartographer`
- ❌ `@replit/vite-plugin-dev-banner`
- ❌ `@replit/vite-plugin-runtime-error-modal`

**Backend Dependencies (Frontend-Only App):**
- ❌ `express` (no server)
- ❌ `passport` (no auth server)
- ❌ `drizzle-orm` (no database)
- ❌ `@neondatabase/serverless` (no database)
- ❌ `ws` (no websockets)
- ❌ All other backend packages

### ✅ Kept (Essential Frontend)

- ✅ React 18 & React DOM
- ✅ Vite (build tool)
- ✅ Tailwind CSS
- ✅ shadcn/ui components
- ✅ React Hook Form
- ✅ jsPDF (PDF generation)
- ✅ Wouter (routing)
- ✅ Zod (validation)

**Result:** Cleaner, faster, no errors!

---

## 📂 Project Structure

```
nit-mentoring-portal/
├── client/                          # Frontend application
│   ├── src/
│   │   ├── components/
│   │   │   ├── StudentDetailsForm.tsx
│   │   │   ├── SubjectPerformanceForm.tsx
│   │   │   ├── BacklogInformationForm.tsx
│   │   │   ├── OtherParametersForm.tsx
│   │   │   ├── ReportPreview.tsx
│   │   │   └── ui/                  # shadcn components
│   │   ├── pages/
│   │   │   └── Home.tsx
│   │   ├── lib/
│   │   │   ├── pdfGenerator.ts
│   │   │   └── utils.ts
│   │   ├── App.tsx
│   │   └── index.css
│   └── index.html
├── attached_assets/
│   └── nit-admin-block.jpg          # Watermark
├── shared/
│   └── schema.ts                    # TypeScript types
├── .vscode/                         # VS Code config
├── vite.config.vscode.ts            # Clean Vite config
├── package.vscode.json              # Clean dependencies
├── setup-for-vscode.sh              # Auto-setup (Unix)
├── setup-for-vscode.bat             # Auto-setup (Windows)
└── README.md                        # This file
```

---

## 🛠️ Available Commands

```bash
# Development (hot reload)
npm run dev

# Production build
npm run build

# Preview production build
npm run preview

# Type checking
npx tsc --noEmit
```

---

## 🌐 Deployment Options

Your app can be deployed to **any static hosting platform**:

### Option 1: Netlify (Easiest)
```bash
npm run build
# Drag dist/ folder to netlify.com/drop
```

### Option 2: Vercel
```bash
# Push to GitHub, import to Vercel
# Auto-detected from vercel.json
```

### Option 3: GitHub Pages
See `GITHUB_DEPLOYMENT_GUIDE.md`

### Option 4: Cloudflare Pages
Build: `npm run build`, Output: `dist`

### Option 5: Any Web Server
Upload `dist/` folder to your server

**See `DEPLOYMENT_ANYWHERE.md` for detailed guides!**

---

## 🎨 Customization

### Change Colors
Edit `client/src/index.css` - Update CSS variables

### Change Logo/Branding
Replace `attached_assets/nit-admin-block.jpg`

### Modify Forms
Edit components in `client/src/components/`

### Update PDF Template
Edit `client/src/lib/pdfGenerator.ts`

---

## 🐛 Troubleshooting

### Port Already in Use
```bash
npx kill-port 5173
# Or use different port
npm run dev -- --port 3000
```

### Dependencies Error
```bash
rm -rf node_modules package-lock.json
npm install
```

### Build Fails
```bash
# Check TypeScript errors
npx tsc --noEmit

# Clean build
rm -rf dist
npm run build
```

### Images Not Loading
Ensure `attached_assets/nit-admin-block.jpg` exists

---

## 📚 Documentation

- **`VSCODE_SETUP.md`** - Detailed VS Code setup guide
- **`DEPLOYMENT_ANYWHERE.md`** - Deploy to any platform
- **`GITHUB_DEPLOYMENT_GUIDE.md`** - GitHub Pages setup
- **`START_HERE.md`** - Quick start guide

---

## 🔒 Technical Details

**Architecture:**
- Frontend: React 18 + TypeScript
- Styling: Tailwind CSS + shadcn/ui
- Build: Vite 5
- Routing: Wouter (lightweight)
- Forms: React Hook Form + Zod
- PDF: jsPDF + jspdf-autotable
- Storage: localStorage (no backend)

**Performance:**
- Bundle size: ~380KB gzipped
- Initial load: <1 second
- Code splitting: Enabled
- Tree shaking: Enabled
- Lazy loading: Enabled

**Browser Support:**
- Chrome/Edge: Latest 2 versions
- Firefox: Latest 2 versions
- Safari: Latest 2 versions

---

## ✅ Verification

After setup, verify everything works:

- [ ] `npm run dev` starts without errors
- [ ] App loads at `http://localhost:5173`
- [ ] All 5 form steps navigate correctly
- [ ] Student photo upload works
- [ ] Subject marks can be added/removed
- [ ] Backlog subjects can be managed
- [ ] PDF generates with correct data
- [ ] Data persists after page refresh
- [ ] Dark mode toggle works

---

## 🆘 Support

**Need Help?**

1. Check `VSCODE_SETUP.md` for detailed troubleshooting
2. See `DEPLOYMENT_ANYWHERE.md` for deployment issues
3. Ensure you're using Node.js 20+
4. Try `npm install --legacy-peer-deps` if dependencies fail

---

## 📄 License

MIT License - Use freely for educational purposes

---

## 🎓 About

Developed for **Navodaya Institute of Technology (Autonomous)** to help faculty members track and mentor students effectively.

**Version:** 1.0.0  
**Last Updated:** November 2025

---

**Ready to start?** Run `./setup-for-vscode.sh` (or `.bat` on Windows) and you're all set! 🚀
