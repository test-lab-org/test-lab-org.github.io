I want to use a new background image. Instead of  `background.jpg` as in the template, as on the template example website at https://greenelab.github.io/lab-website-template/ where cube is used as a background image.

I've added an image `network-simplicial-complex.jpg` to `images` directory:
  `images/network-simplicial-complex.jpg`

I remember I need to set this path as background (I want to cover both header and footer) in the `_config.yaml` file.

For example this is for the template website `_config.yaml` (`greenelab/lab-website-template/_config.yaml`), the start of this file:
```yaml
# site properties and page defaults
title: Lab Website Template
subtitle: by the Greene Lab
description: An easy-to-use, flexible website template for labs, with automatic citations, GitHub tag imports, pre-built components, and more.
header: images/background.jpg
footer: images/background.jpg
proofer: false
```

Based on this, I've changed the `_config.yaml` file for this repository (of SPAN lab at spanlab-london.github.io) this is the start of `_config.yaml` file:
```
# adding urls for local build deploy from branch
baseurl: ""
url: "https://spanlab-london.github.io"

# site properties and page defaults
# NOTE: removed title: "SPAN Lab"
# too much "SPAN" and then "SPAN Lab" .. 
# and added subtitle
title:
subtitle: Systems, Processes and Networks Lab
description:
header: images/network-simplicial-complex.jpg
footer: images/network-simplicial-complex.jpg
proofer: false
```


I rebuilt the site, and the background is shown, but it looks a bit blurry, where can I control how blurry it is?
---

Can the home page be less white space 
