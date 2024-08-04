<template>
  <a :href='link'
     target='_blank'
     rel='noopener noreferrer'
     class='bg-mt-dark-purple hover:bg-mt-hover-dark-purple opacity-80
     py-2.5 px-6 rounded-lg inline-flex items-center
     w-full text-gray-300 font-bold gap-2'>
    <img class='w-5 h-5' alt='' :src='icon' />
    {{ text }}
  </a>
</template>

<script lang="ts">
export default {
  props: {
    text: String,
    icon: String,
    link: String,
  }
}
</script>