<script lang="ts">
	let { title, icon, link } = $props();
</script>

<a href={link} {title} class="max-h-7 min-h-6 max-w-7 min-w-6 transition-transform hover:scale-150"
	>{@render icon()}</a
>
