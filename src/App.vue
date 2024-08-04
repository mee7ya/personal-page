<template>
  <main>
    <MTBackground></MTBackground>
    <div class='flex min-h-screen justify-center items-center'>
      <div class='flex flex-col gap-y-2.5'>
        <MTButton
          text='Telegram'
          :icon='TGIcon'
          :link='telegram_link'>
        </MTButton>
        <MTButton
          text='GitHub'
          :icon='GitHubIcon'
          :link='github_link'>
        </MTButton>
        <MTButton
          text='LinkedIn'
          :icon='LinkedInIcon'
          :link='linkedin_link'>
        </MTButton>
        <MTButton
          text='HabrCareer'
          :icon='HabrCareerIcon'
          :link='habr_career_link'>
        </MTButton>
        <MTButton
          text='E-mail'
          :icon='EMailIcon'
          :link='email_link'>
        </MTButton>
      </div>
    </div>
  </main>
</template>

<style>
@import "assets/styles/index.css";
</style>
<script setup lang="ts">
import MTBackground from '@/components/MTBackground.vue'
import MTButton from '@/components/MTButton.vue'
import TGIcon from '@/assets/icons/telegram.svg'
import GitHubIcon from '@/assets/icons/github.svg'
import LinkedInIcon from '@/assets/icons/linkedin.svg'
import HabrCareerIcon from '@/assets/icons/habr_career.svg'
import EMailIcon from '@/assets/icons/email.svg'

const telegram_link = `https://t.me/${import.meta.env.VITE_MT_TELEGRAM}`
const github_link = `https://github.com/${import.meta.env.VITE_MT_GITHUB}`
const linkedin_link = `https://www.linkedin.com/in/${import.meta.env.VITE_MT_LINKEDIN}`
const habr_career_link = `https://career.habr.com/${import.meta.env.VITE_MT_HABR_CAREER}`
const email_link = `mailto:${import.meta.env.VITE_MT_EMAIL}`
</script>
