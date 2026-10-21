import { getCloudflareUser, requireCloudflareUser } from "./cloudflare-auth";
import TurfTrackClient from "./turftrack-client";

export const dynamic = "force-dynamic";

export default async function Home() {
  const user = (await getCloudflareUser()) ?? (process.env.NODE_ENV !== "production"
    ? { userId: "preview-admin", email: "preview@turftrack.local", displayName: "Preview Admin", fullName: "Preview Admin" }
    : await requireCloudflareUser());
  return <TurfTrackClient signedInAs={user.displayName} />;
}
