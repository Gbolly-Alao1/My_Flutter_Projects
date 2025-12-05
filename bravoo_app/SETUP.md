# Supabase Setup Instructions

This guide will help set up your own Supabase backend for the BRAVOO app.

## Step 1: Create Supabase Account

1. Go to [supabase.com](https://supabase.com)
2. Click "Start your project"
3. Sign up with GitHub (recommended) or email

## Step 2: Create New Project

1. Click "New Project"
2. Fill in the details:
    - **Name**: `bravoo-app` (or your choice)
    - **Database Password**: Create a strong password and SAVE IT
    - **Region**: Choose closest to your location
    - **Pricing Plan**: Free tier
3. Click "Create new project"
4. Wait 1-2 minutes for setup to complete

## Step 3: Get API Credentials

1. Go to **Project Settings** (gear icon in sidebar)
2. Click **API** section
3. Copy these two values:
    - **Project URL** (e.g., `https://xxxxx.supabase.co`)
    - **anon public key** (long string starting with `eyJ...`)

## Step 4: Configure Flutter App

1. Open `lib/core/config/supabase_config.dart`
2. Replace with your credentials:
```dart
class SupabaseConfig {
  static const String supabaseUrl = 'YOUR_PROJECT_URL_HERE';
  static const String supabaseAnonKey = 'YOUR_ANON_KEY_HERE';
}
```

## Step 5: Enable Email Authentication

1. In Supabase Dashboard, go to **Authentication → Providers**
2. Ensure **Email** is enabled (should be by default)
3. Configure email settings:
    - **Enable email confirmations**: Toggle OFF for testing, ON for production
    - **Secure email change**: Recommended to keep ON

## Step 6: (Optional) Configure Email Templates

1. Go to **Authentication → Email Templates**
2. Customize:
    - Confirmation email
    - Magic Link email
    - Password reset email

## Step 7: Test the Connection

1. Run the Flutter app:
```bash
   flutter run
```
2. Try signing up with a test email
3. Check **Authentication → Users** in Supabase Dashboard
4. You should see your new user listed!

## Common Issues

### Email Not Sending
- Check **Project Settings → Auth → SMTP Settings**
- For production, configure custom SMTP server
- For testing, use Supabase's built-in email service

### "Invalid API Key" Error
- Double-check you copied the **anon public** key, not the service_role key
- Ensure no extra spaces in the key

### Can't Sign Up
- Check **Authentication → Providers** to ensure Email is enabled
- Look at **Authentication → Logs** for error details


## Support

For Supabase-specific questions:
- [Supabase Documentation](https://supabase.com/docs)
- [Supabase Discord](https://discord.supabase.com)