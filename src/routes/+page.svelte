<script>
	import { env } from '$env/dynamic/public';
	import Docker from '../assets/docker.svelte';
	import Email from '../assets/email.svelte';
	import Git from '../assets/git.svelte';
	import GitHub from '../assets/github.svelte';
	import LinkedIn from '../assets/linkedin.svelte';
	import PostgreSQL from '../assets/postgresql.svelte';
	import Python from '../assets/python.svelte';
	import Rust from '../assets/rust.svelte';
	import Telegram from '../assets/telegram.svelte';
	import MtCard from '../components/mt_card.svelte';
	import MtContactButton from '../components/mt_contact_button.svelte';
</script>

<div class="flex h-screen w-screen">
	<div class="m-auto flex h-3/4 w-4/6 flex-col space-y-4">
		<div class="inline-flex flex-wrap items-center gap-4">
			<h1 class="text-4xl font-bold">meetya.dev</h1>
			<div class="inline-flex flex-wrap gap-4">
				<MtContactButton title="GitHub" link={env.PUBLIC_GITHUB_LINK} icon={GitHub}
				></MtContactButton>
				<MtContactButton title="LinkedIn" link={env.PUBLIC_LINKEDIN_LINK} icon={LinkedIn}
				></MtContactButton>
				<MtContactButton title="Telegram" link={env.PUBLIC_TELEGRAM_LINK} icon={Telegram}
				></MtContactButton>
				<MtContactButton title="E-mail" link={env.PUBLIC_EMAIL_LINK} icon={Email}></MtContactButton>
			</div>
		</div>

		<hr class="hr border-t-2" />

		<div class="text-base">Senior Software Engineer</div>

		<div class="flex flex-col space-y-1">
			<h2 class="text-2xl font-bold">Education</h2>
			<div class="flex flex-col">
				<div class="inline-flex justify-between px-4 text-lg font-bold">
					<div class="w-fit">Innopolis University (BS)</div>
					<div class="w-fit">2016 - 2020</div>
				</div>
				<div class="px-12 text-base">
					<ul class="list-disc">
						<li>Computer Science with Data Science track</li>
					</ul>
				</div>
			</div>
		</div>

		<h2 class="text-2xl font-bold">Stack</h2>

		<div class="flex flex-wrap gap-4">
			<MtCard icon={Python} text="Python"></MtCard>
			<MtCard icon={Rust} text="Rust"></MtCard>
			<MtCard icon={PostgreSQL} text="PostgreSQL"></MtCard>
			<MtCard icon={Docker} text="Docker"></MtCard>
			<MtCard icon={Git} text="Git"></MtCard>
		</div>

		<div>More information will be here eventually :)</div>
	</div>
</div>
