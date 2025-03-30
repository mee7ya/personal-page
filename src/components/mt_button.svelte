<script lang="ts">
	import type { Snippet } from 'svelte';

	let { text, link, icon }: { text: string; link: string; icon: Snippet } = $props();
</script>

<a
	href={link}
	target="_blank"
	rel="noopener noreferrer"
	class="bg-mt-dark-purple hover:bg-mt-hover-dark-purple inline-flex w-full items-center gap-2 rounded-lg px-6 py-2.5 font-bold text-gray-300 opacity-80"
>
	{@render icon()}
	{text}
</a>
