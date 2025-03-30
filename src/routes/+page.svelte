<script lang="ts">
	import MTButton from '../components/mt_button.svelte';
	import Telegram from '../assets/telegram.svelte';
	import GitHub from '../assets/github.svelte';
	import LinkedIn from '../assets/linkedin.svelte';
	import HabrCareer from '../assets/habr_career.svelte';
	import Email from '../assets/email.svelte';

	import {
		PUBLIC_TELEGRAM_LINK,
		PUBLIC_GITHUB_LINK,
		PUBLIC_LINKEDIN_LINK,
		PUBLIC_HABR_CAREER_LINK,
		PUBLIC_EMAIL_LINK
	} from '$env/static/public';
</script>

{#snippet telegram()}
	<Telegram></Telegram>
{/snippet}

{#snippet github()}
	<GitHub></GitHub>
{/snippet}

{#snippet linkedin()}
	<LinkedIn></LinkedIn>
{/snippet}

{#snippet habrCareer()}
	<HabrCareer></HabrCareer>
{/snippet}

{#snippet email()}
	<Email></Email>
{/snippet}

<div class="flex min-h-screen items-center justify-center">
	<div class="flex flex-col gap-y-2.5">
		<MTButton icon={telegram} link={PUBLIC_TELEGRAM_LINK} text="Telegram"></MTButton>
		<MTButton icon={github} link={PUBLIC_GITHUB_LINK} text="GitHub"></MTButton>
		<MTButton icon={linkedin} link={PUBLIC_LINKEDIN_LINK} text="LinkedIn"></MTButton>
		<MTButton icon={habrCareer} link={PUBLIC_HABR_CAREER_LINK} text="HabrCareer"></MTButton>
		<MTButton icon={email} link={PUBLIC_EMAIL_LINK} text="E-mail"></MTButton>
	</div>
</div>
