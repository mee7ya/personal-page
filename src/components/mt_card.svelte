<script lang="ts">
	let { text, icon } = $props();
</script>

<div
	class="card preset-outlined-primary-500 inline-flex h-12 w-36 items-center justify-center gap-2"
>
	{@render icon()}
	{text}
</div>
