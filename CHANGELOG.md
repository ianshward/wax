## Changelog

### 2.0.0

* All Modest Maps controls are flipped - instead of being extensions of the
  `com.modestmaps.Map` object, they are off of the `wax` object and are
  called with the map as the first argument and an options object as the second
* jQuery, jQuery-jsonp, and Underscore dependency removed
* `gridutil` now uses [reqwest](https://github.com/ded/reqwest) as its
  XMLHTTPRequest library.

#### 1.4.2

* Beta pointselector control.
* Make zoombox removable.

#### 1.4.1

* Tweaks to `boxselect` including removability.

#### 1.4.0

* Added `.boxselect(function())`

#### 1.3.0

* Added `.zoombox()` and `hash()` controls for Modest Maps.

#### 1.2.1

* Bug fixes for OpenLayers

#### 1.2.0

* Functions on the Google Maps `Controls` object are now lowercase.
* Changed `WaxProvider`'s signature: now takes an object of settings and supports multiple domains, filetypes and zoom restrictions.
* Changed `wax.g.MapType`'s signature: now accepts an object of settings in the same form as `WaxProvider`
* Modest Maps `.interaction()` now supports clicks, with the same `clickAction` setting as the OpenLayers version.
* Added large manual for usage.
* Fixed Modest Maps `.fullscreen()` sizing.
* Removed `/examples` directory: examples will be in manuals.
* Performance optimization of interaction code: no calculations are performed during drag events.

#### 1.1.0

* connector/mm: Added [Modest Maps](https://github.com/stamen/modestmaps-js) connector.
* control/mm: Added `.legend()`, `.interaction()`, `.fullscreen()`, and `.zoomer()` controls for Modest Maps.
* control/lib: Added `addedTooltip` event to `tooltip.js` to allow for external styling code.

#### 1.0.4

* connector/g: Hide error tiles and wrap on dateline.
* connector/g: Performance improvements.
* control/legend: Fix rerender bug.
* control/tooltip: `addedtooltip` event for binding/extending tooltip behavior. Subject to change.

#### 1.0.3

* Embedder functionality for Google Maps and OpenLayers.

#### 1.0.2

* Bug fixes for Firefox 3.

#### 1.0.1

* `make ext` added for downloading and installing external libraries needed to use examples.
* Bug fixes for legend, IE compatibility.

#### 1.0.0

* Initial release.
