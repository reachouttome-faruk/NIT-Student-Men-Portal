import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import path from "path";

// Clean Vite configuration for VS Code development
// No Replit dependencies, ready for any hosting platform
export default defineConfig({
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
  server: {
    port: 5173,
    host: true,
    open: true,
  },
});
