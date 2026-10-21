import { headers } from "next/headers";
import { redirect } from "next/navigation";

export type CloudflareUser = {
  userId: string;
  displayName: string;
  email: string;
  fullName: string | null;
};

const ACCESS_EMAIL_HEADER = "cf-access-authenticated-user-email";

export async function getCloudflareUser(): Promise<CloudflareUser | null> {
  const requestHeaders = await headers();
  const email = requestHeaders.get(ACCESS_EMAIL_HEADER)?.trim().toLowerCase();
  if (!email) return null;

  const displayName = email
    .split("@")[0]
    .split(/[._-]+/)
    .filter(Boolean)
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join(" ");

  return {
    userId: email,
    displayName: displayName || email,
    email,
    fullName: null,
  };
}

export async function requireCloudflareUser(): Promise<CloudflareUser> {
  const user = await getCloudflareUser();
  if (user) return user;

  redirect("/cdn-cgi/access/login");
}
