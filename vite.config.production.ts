import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

// Production build configuration for GitHub Pages
// Set your repository name here before building
const REPO_NAME = process.env.VITE_REPO_NAME || 'nit-mentoring-portal';

export default defineConfig({
  base: `/${REPO_NAME}/`,
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
    minify: 'terser',
    rollupOptions: {
      output: {
        manualChunks: {
          vendor: ['react', 'react-dom'],
          forms: ['react-hook-form', '@hookform/resolvers', 'zod'],
          ui: ['@radix-ui/react-dialog', '@radix-ui/react-toast', '@radix-ui/react-select'],
          pdf: ['jspdf', 'jspdf-autotable'],
        },
      },
    },
  },
  logLevel: 'warn', // Suppress PostCSS warnings
});
