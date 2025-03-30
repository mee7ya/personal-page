<script lang="ts">
	import '../app.css';
	import Particles, { particlesInit } from '@tsparticles/svelte';
	import { loadSlim } from '@tsparticles/slim';

	let particlesConfig = {
		background: {
			color: {
				value: '#141414'
			}
		},
		particles: {
			color: {
				value: '#ffffff'
			},
			links: {
				color: '#ffffff',
				distance: 300,
				enable: true,
				opacity: 0.3,
				width: 1
			},
			move: {
				direction: 'none' as const,
				enable: true,
				outModes: 'bounce' as const,
				random: false,
				speed: 3,
				straight: false
			},
			number: {
				density: {
					enable: true
				},
				value: 40
			},
			opacity: {
				value: 0.5
			},
			shape: {
				type: 'circle'
			},
			size: {
				value: { min: 2, max: 5 }
			}
		}
	};

	void particlesInit(async (engine) => {
		await loadSlim(engine);
	});

	let { children } = $props();
</script>

<Particles id="tsparticles" class="relative top-0 left-0 -z-10" options={particlesConfig} />
{@render children()}
