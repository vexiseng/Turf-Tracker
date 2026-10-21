import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "TurfTrack — Application Records",
  description: "Shared turf application records, routing, scheduling, and reporting.",
  other: { "codex-preview": "development" },
  icons: { icon: "/favicon.svg", shortcut: "/favicon.svg" },
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return <html lang="en"><body>{children}</body></html>;
}
