create extension if not exists pgcrypto;

create table if not exists public.profiles (
  id uuid primary key default gen_random_uuid(),
  username text unique not null,
  name text not null default 'Mofaarah',
  bio text not null default '',
  avatar text not null default '',
  links jsonb not null default '[]'::jsonb,
  design jsonb not null default '{}'::jsonb,
  edit_token_hash text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists profiles_username_idx on public.profiles(username);

alter table public.profiles enable row level security;
-- The browser never talks directly to this table. The Vercel API uses the server-only service role key.
-- Keep SUPABASE_SERVICE_ROLE_KEY out of index.html and out of client-side JavaScript.
