<template>
  <div class="home">
    <div
      class="blue"
      v-observe-visibility="{
        callback: (isVisible, entry) => introduce(isVisible, entry, 'blue'),
        once: true,
      }"
    >
      <p
        :style="{
          'animation-name': blue,
          'animation-fill-mode': 'forwards',
          'animation-duration': '1s',
          'animation-delay': '0.5s',
        }"
      >
        Hi! 👋 I'm Josef.
      </p>
    </div>
    <div class="spacer layer1"></div>
    <div
      class="orange"
      v-observe-visibility="{
        callback: (isVisible, entry) => introduce(isVisible, entry, 'orange'),
        once: true,
      }"
    >
      <p
        :style="{
          'animation-name': orange,
          'animation-fill-mode': 'forwards',
          'animation-duration': '1s',
          'animation-delay': '0.5s',
        }"
      >
        idk what to put here
      </p>
    </div>
    <div class="spacer layer2"></div>
    <div
      class="lightblue"
      v-observe-visibility="{
        callback: (isVisible, entry) =>
          introduce(isVisible, entry, 'lightblue'),
        once: true,
      }"
    >
      <p
        :style="{
          'animation-name': lightblue,
          'animation-fill-mode': 'forwards',
          'animation-duration': '1s',
          'animation-delay': '0.5s',
        }"
      >
        no like seriously what do i put here
      </p>
    </div>
    <div class="spacer layer3"></div>
    <div
      class="darkblue"
      v-observe-visibility="{
        callback: (isVisible, entry) => introduce(isVisible, entry, 'darkblue'),
        once: true,
      }"
    >
      <p
        :style="{
          'animation-name': darkblue,
          'animation-fill-mode': 'forwards',
          'animation-duration': '1s',
          'animation-delay': '0.5s',
        }"
      >
        help
      </p>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";
export default Vue.extend({
  name: "Home",
  components: {},
  data() {
    return {
      blue: "",
      orange: "",
      lightblue: "",
      darkblue: "",
    };
  },
  methods: {
    introduce(e: boolean, el: any, b: string) {
      if (e) {
        (this as any)[b] = "intro";
      }
    },
  },
});
</script>

<style lang="sass">

@media only screen and (max-width: 600px)
  body
    font-size: 0.5em
p
  opacity: 0
.blue
  background-color: #3d5a80
  width: 100vw
  height: 70vh
  color: white
  font-size: 2em
  display: flex
  align-items: center
  justify-content: center
  p
    max-width: 60%
.lightblue
  background-color: #98C1D9
  width: 100vw
  height: 40vh
  color: black
  font-size: 2em
  display: flex
  align-items: center
  justify-content: center
  p
    max-width: 60%
.white
  background-color: #e0fbfc
  width: 100vw
  height: 40vh
  color: black
  font-size: 2em
  display: flex
  align-items: center
  justify-content: center
  p
    max-width: 60%
.orange
  background-color: #ee6c4d
  width: 100vw
  height: 40vh
  color: white
  font-size: 2em
  display: flex
  align-items: center
  justify-content: center
  p
    max-width: 60%
.darkblue
  background-color: #293241
  width: 100vw
  height: 40vh
  color: white
  font-size: 2em
  display: flex
  align-items: center
  justify-content: center
  p
    max-width: 60%
.spacer
  aspect-ratio : 960/300
  width: 100%
  background-repeat: no-repeat
  background-position: center
  background-size: cover
.layer1
  background-image: url("../assets/t1.svg")
.layer2
  background-image: url("../assets/t2.svg")
.layer3
  background-image: url("../assets/t3.svg")



// animations


@keyframes intro
  from
    opacity: 0
  to
    opacity: 1
</style>
