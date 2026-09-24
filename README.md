# BioSpace — Mega Creator Studio

A large single-page creator link-in-bio web app with a live iPhone preview.

## Included
- Home dashboard with KPIs and quick actions
- Profile editor with online save
- Unlimited link manager with edit/open/delete/reorder support
- Premium design studio, themes, colors, radius, phone preview
- Social icon editor
- Media gallery with image uploads
- Analytics dashboard with local daily activity and top-link table
- Audience page with follower count and private notes
- Creator Store for products/services
- Creator Tools: QR generator, JSON export/restore, public URL tools
- SEO & Discovery settings
- Notifications preferences + browser test notification
- Settings for animation, glass links, footer, public URL and cloud sync
- Animated responsive mobile bottom navigation + More sheet
- Public profile mode using `?profile=username`
- Vercel serverless API + Supabase online profile persistence
- No login/signup required

## Online setup
1. Create the `profiles` table using `schema.sql` in Supabase.
2. Deploy this folder to Vercel.
3. Add `SUPABASE_URL` and `SUPABASE_SERVICE_ROLE_KEY` as Vercel environment variables.
4. Open the deployed site, edit your profile, then use **Sync now** or **Share profile**.

Never expose the Supabase service-role key in browser code.
