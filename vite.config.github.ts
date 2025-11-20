import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

// GitHub Pages deployment configuration
// Automatically detects repository name from GitHub Actions environment
// or falls back to manual configuration
function getBasePath() {
  // In GitHub Actions, GITHUB_REPOSITORY is "username/repo-name"
  if (process.env.GITHUB_REPOSITORY) {
    const repoName = process.env.GITHUB_REPOSITORY.split('/')[1];
    return `/${repoName}/`;
  }
  
  // For local builds, you can set VITE_REPO_NAME
  if (process.env.VITE_REPO_NAME) {
    return `/${process.env.VITE_REPO_NAME}/`;
  }
  
  // Fallback: change this if deploying manually
  return '/nit-mentoring-portal/';
}

export default defineConfig({
  base: getBasePath(),
  plugins: [react()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "client", "src"),
      "@shared": path.resolve(__dirname, "shared"),
      "@assets": path.resolve(__dirname, "attached_assets"),
    },
  },
  root: path.resolve(__dirname, "client"),
  build: {
    outDir: path.resolve(__dirname, "dist"),
    emptyOutDir: true,
    sourcemap: false,
  },
});
