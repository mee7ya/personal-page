<template>
  <vue-particles
    id='tsparticles'
    class='fixed -z-10 left-0 top-0 h-full w-full'
    :options='{
      background: {
        color: {
          value: "#141414",
        }
      },
      fpsLimit: 120,
      particles: {
        color: {
          value: "#ffffff",
        },
        links: {
          color: "#ffffff",
          distance: 300,
          enable: true,
          opacity: 0.3,
          width: 1
        },
        move: {
          direction: "none",
          enable: true,
          outModes: "bounce",
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
          type: "circle",
        },
        size: {
          value: { min: 2, max: 5 }
        }
      },
      detectRetina: true
    }'
  />
</template>

<style>
</style>

<script setup lang="ts"></script>

<style scoped></style>
