import type { App as AppType } from 'vue'
import { createApp } from 'vue'

import type { Engine } from '@tsparticles/engine'

import Particles from '@tsparticles/vue3'
import { loadSlim } from '@tsparticles/slim'

import App from './App.vue'
const app: AppType<Element> = createApp(App)

app
  .use(Particles, {
    init: async (engine: Engine) => {
      await loadSlim(engine)
    }
  })
  .mount('#app')
