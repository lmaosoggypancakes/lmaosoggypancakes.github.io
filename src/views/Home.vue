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
        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Beatae
        doloribus temporibus sed earum. Nam laboriosam fuga eveniet dolores
        necessitatibus veritatis, incidunt provident iure, quas impedit amet
        recusandae praesentium, soluta enim.
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
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Delectus
        possimus doloribus doloremque maiores provident porro nostrum
        consequatur consectetur impedit nemo quod tempore eius tenetur sapiente
        sit quia voluptate, voluptatibus distinctio.
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
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sit sequi
        neque perspiciatis quaerat adipisci nemo omnis, fuga optio et mollitia
        obcaecati reprehenderit laudantium quae, eligendi qui, odit nobis ut
        dicta.
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
