# BioSpace — iPhone online profile fix

This version keeps the existing BioSpace UI but fixes the iPhone/public-profile problem by saving profiles to Supabase through a Vercel serverless API.

## What is fixed
- Save name, bio and photo from iPhone.
- Add/edit/delete links and sync them online.
- Share Profile creates one clean URL: `?profile=username`.
- The same public URL loads the latest saved name, photo and links.
- No login/signup is required.
- Creator ownership uses a private random creator token stored in the creator browser.
- Public profile has no iPhone frame, Dynamic Island, status bar or cover photo.

## Setup
1. Create a Supabase project.
2. Open Supabase SQL Editor and run `schema.sql`.
3. In Supabase Project Settings/API, copy the Project URL and the `service_role` key.
4. Deploy this folder to Vercel.
5. In Vercel Project Settings → Environment Variables, add:
   - `SUPABASE_URL`
   - `SUPABASE_SERVICE_ROLE_KEY`
6. Redeploy.
7. Open your deployed BioSpace on iPhone.
8. Save profile → add links → Share Profile.

Never put the Supabase service-role key inside `index.html`.
