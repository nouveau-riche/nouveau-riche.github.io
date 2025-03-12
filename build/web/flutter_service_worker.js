'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "868f7001c12bb0bac94ca8f837c0ab52",
"version.json": "b9e261364469c359acb05cc5653484a3",
"index.html": "afb635b1a23d9deca336532887b8100b",
"/": "afb635b1a23d9deca336532887b8100b",
"main.dart.js": "399a0cf3236726740ed3b3af9809320d",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "faa0ce7cbb5668fb2953b4bdf3ce274c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "7a7b82f6b7e0ac8f9a1c6a744b357de6",
"assets/AssetManifest.json": "6cf8debf5dce127ce4ceb8578ff4805b",
"assets/NOTICES": "dfc46daa7c9d90493f85cd4652edee2c",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "05c827763483289cb046df23cac55d53",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "790ab0dfa009c65b0f7a882afacb256d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "fdd1982ebdc815d3f1f6498b45dbc095",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "c5bb9b59e4e748b7a647ba1a331ef49c",
"assets/fonts/MaterialIcons-Regular.otf": "8243943dd601cd9e708c95414d9c318b",
"assets/assets/images/nikunj.JPG": "a9ae7a2c5a5e6b1b84c151b1ca1a1cf9",
"assets/assets/images/alpine.png": "1676c4065411c8182429770d696b63c9",
"assets/assets/images/login.png": "23bda7072616ca4bb6f044d8b7c3188b",
"assets/assets/images/cpp.png": "bee53a59a415e920e62d71520666134c",
"assets/assets/images/carrier.png": "f8b9fa47e48723f09cfb6c07df35715a",
"assets/assets/images/anatha_fastail.jpeg": "53304db3296b2578609e0b0e8dc29337",
"assets/assets/images/classes.png": "a5fea4eae4a04e23b4b641989554f549",
"assets/assets/images/shaswat_happyminds.jpeg": "67f84e2d46c75fbf8c565a2a916d1e6e",
"assets/assets/images/appstore.png": "889f9dda3ecb5763ba86e011ba2fdb6d",
"assets/assets/images/stream.png": "dab19703d1ed5abbdabbc57abf67b311",
"assets/assets/images/zuruoke_sportzlite.jpeg": "37688b32e8da0de7c5423292c924bd14",
"assets/assets/images/dsc.png": "e6552cd6908375172f6345150d7cd015",
"assets/assets/images/signature_dark.png": "5962eed60efb40e0792f7236af31505b",
"assets/assets/images/sortizy.png": "f0cd24743695aef822de9f65e50e041d",
"assets/assets/images/ankush_meowl.jpeg": "68600761da487dcf68095d5166adc12d",
"assets/assets/images/playstore.png": "0b0baeb13a319a86d41b9efaa72c2848",
"assets/assets/images/c.png": "88eef2c4956cf1d9ffbb00a2059d9dd6",
"assets/assets/images/zujo.png": "16803574264feb70a2908be85fdc56b2",
"assets/assets/images/meowl.png": "7bbf570293ea01d066c1ebeb4f2b918e",
"assets/assets/images/classmates.png": "6336c4f6951459cc7a1113ea023ef5ad",
"assets/assets/images/signature.png": "4672e72ab44bcfe5a07822d1be3f5637",
"assets/assets/gifs/sortizy_project.gif": "d3ee1b9785d0dad2a31c206dd812fc7f",
"assets/assets/gifs/learner_project.gif": "c1eef44ea684d169e8e01ea453cbda55",
"assets/assets/gifs/inventory.gif": "785e7db8f8bcc58f209fbadd63d18029",
"assets/assets/icons/jira.png": "82759a25adb35b7ee5012d7d78837303",
"assets/assets/icons/figma.webp": "726a0c507be7528686f05e423dce936b",
"assets/assets/icons/flutter.png": "58c2bb5f534b6a171df2529092770e92",
"assets/assets/icons/github.png": "43ce87609eb221d09d4832a9c0e709d0",
"assets/assets/icons/firebase.png": "6f173ff7d48ca94d590b9c1b50a0ca06",
"assets/assets/icons/android.png": "483c3a0b31470e70b3756fb072437dc6",
"assets/assets/icons/s3.png": "1d836ea6ce4b1702d58963b3baefbbe4",
"assets/assets/icons/bloc.png": "becb7811e688790fde1b3c164e1f3c3e",
"assets/assets/icons/lambda.png": "0f9814ee8dd1d4412ea6a40b73020d44",
"assets/assets/icons/postman.png": "c32ad3d9f7b7c03e4a7e1e26f743d5c8",
"assets/assets/icons/getx.png": "ecba04db7a4dbe891e7fd5255ae49adc",
"assets/assets/icons/dart.png": "a675cb93b75d5f1656c920dceecdcb38",
"assets/assets/icons/mongodb.png": "318c4fb84e058125e903f2f73cd5a090",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
