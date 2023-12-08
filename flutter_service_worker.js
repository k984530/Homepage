'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "0a4ed50ef26ede4899ebbe53b9211b39",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"version.json": "027975ae79106b3150f050e262a09a94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "7f09e653f6d79e639bbd9e8e4c9b50a2",
"/": "7f09e653f6d79e639bbd9e8e4c9b50a2",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/NOTICES": "0b8d97113d2bea1eaa7e22c5b43a056a",
"assets/AssetManifest.json": "eddbd2233d5872d05c6b4776c10c57bb",
"assets/AssetManifest.bin.json": "af0520d29a87d9e001df4bc0d733cfa7",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/assets/projects/img_13.png": "2be648a7bdf962756245449482bbc910",
"assets/assets/projects/img24.png": "da3e91c8cd73aa01b2349b7a290d675e",
"assets/assets/projects/img_8.png": "10807689d61b91d6def215477a9800d7",
"assets/assets/projects/insta0.png": "78bda9045edafc9d26284591c29252dc",
"assets/assets/projects/logo4.png": "0fb768831cb859f905552470d51f7d49",
"assets/assets/projects/img33.png": "a2e5b03a0abd4535c544ed26411b0dfa",
"assets/assets/projects/img21.png": "1228446bda7bad5aef6ef110138ccf3d",
"assets/assets/projects/logo1.png": "9030a2ab6570d379928902c8d09cdc49",
"assets/assets/projects/img_20.png": "ee951823ad2f43b4d6e3a61bd5000525",
"assets/assets/projects/img_11.png": "bfc3dc2b437fd7ca1e4872646e9da4a3",
"assets/assets/projects/img_19.png": "5e59a533eb2c7836ffe176de74f722d4",
"assets/assets/projects/img5.png": "da20c8b87254e2cea7be765d3b531e2b",
"assets/assets/projects/logo2.png": "15d5b1ffbd7525c82da6037b0271c11d",
"assets/assets/projects/img30.png": "054f7cce993ea0ed6ab948b7c0269b1a",
"assets/assets/projects/img19.png": "e7fe9a3b3beebce33cb7ef0e81a0b7db",
"assets/assets/projects/img_16.png": "3e2239f0a2b7f44998e5f2c6295dfba7",
"assets/assets/projects/img1.png": "0344d10a26739b3f23593726a8fa6d3d",
"assets/assets/projects/img17.png": "226082cc59c7a6f3571c647df20cd98f",
"assets/assets/projects/img_22.png": "e41f34b4a0fe51233938d82de870551e",
"assets/assets/projects/img15.png": "8a8dddd38cd18072ee10131a860f2fc5",
"assets/assets/projects/img_7.png": "2d6d410f04e964751210451e9e93622f",
"assets/assets/projects/img_3.png": "e3c411f2baf67a06317db7aabfbb3e8c",
"assets/assets/projects/img34.png": "40f634572d27f2fc789d5d1ea2d68877",
"assets/assets/projects/img6.png": "195591a7f94017e06bc9237f99d3fd07",
"assets/assets/projects/img12.png": "3b7efaf85af0d76cd447d36d866c43f4",
"assets/assets/projects/img4.png": "149edbf4b6fde5ab3115f4517cc8919e",
"assets/assets/projects/img2.png": "0fbf0de74f4ba8e133178c057d77702c",
"assets/assets/projects/img_2.png": "c51bf86dd744c951a5be51fa1c68a2de",
"assets/assets/projects/img_9.png": "f927c8873b61e60e540e85807dffb3ca",
"assets/assets/projects/img_14.png": "f125e99cf330c663a346e089fe3839d9",
"assets/assets/projects/img23.png": "8c4163beaf5eb688174210a9881b9847",
"assets/assets/projects/img28.png": "659b2ba7f61475e665ce3b27fdef0cda",
"assets/assets/projects/img18.png": "87ffc7215dee311b92e1eab1b4ffcac1",
"assets/assets/projects/img_1.png": "f88de045011348c5d26692ce0680bbac",
"assets/assets/projects/img27.png": "37ae19a616fe45993c0d1692e4df9d01",
"assets/assets/projects/img29.png": "3c42b9de124ec8e7ac3f23e52bbf1752",
"assets/assets/projects/img_17.png": "807fc6786f577a07c55d13051a9102b9",
"assets/assets/projects/img_6.png": "c6cf20c9468c8c446fd8c0b6f32bffbd",
"assets/assets/projects/img8.png": "d996f9e5452dd5ee6db66b5e7955811f",
"assets/assets/projects/logo2.jpeg": "b38aefbd0026af1f4df1719e44c9f077",
"assets/assets/projects/img31.png": "5bd2edb55a17aa4742db3fc8295d5c41",
"assets/assets/projects/img_0.png": "9da5e77df7f2b1d9b1d5f586fdb689b2",
"assets/assets/projects/img22.png": "236cb97c20e871f4e25ad73bc983241a",
"assets/assets/projects/img26.png": "3b251ec50984f5bd6ae6c2b88c844fb7",
"assets/assets/projects/img20.png": "8ded1c8a0ff9deed7c1cd4ce36706c1e",
"assets/assets/projects/img9.png": "3b87e209542c82d6c0d66ee7164ec1a1",
"assets/assets/projects/img_21.png": "1233a7eed0bb97cfeb733d54f1108d31",
"assets/assets/projects/img7.png": "cd5cb61301ba7cb42b39f94e842393b6",
"assets/assets/projects/img32.png": "8bbdec0db035472ddc87a60e36fb9832",
"assets/assets/projects/img_12.png": "437f0b68bf53e05ae8a378f3d0dd6f07",
"assets/assets/projects/img_18.png": "f5321a5b3579491d179a741111e508b1",
"assets/assets/projects/logo3.png": "9c74e715a36a0bc5b49247814297d178",
"assets/assets/projects/img13.png": "871068d9b79648ff70b339dc418a4183",
"assets/assets/projects/img10.png": "ddb39948c84fe4c8b2491545dcaa011b",
"assets/assets/projects/img16.png": "44f6c61e65a887acc639a298650b4b77",
"assets/assets/projects/img25.png": "5a669222c4c41ca20a6e0844ee0463ee",
"assets/assets/projects/img_15.png": "8a013249503657eba4896d6941fa8ec7",
"assets/assets/projects/logo0.png": "49eaa00e668c7fe2d484eb19088e930b",
"assets/assets/projects/img_5.png": "aafb0b89d9feeb0455b4f01c758c2074",
"assets/assets/projects/poster0.jpg": "f0644d19b198db762cc0094a6517accd",
"assets/assets/projects/img3.png": "e8749f504cc6b5ef5a38008f08156915",
"assets/assets/projects/img11.png": "052cb24197dccf209a2966dad3ba3171",
"assets/assets/projects/img14.png": "0f49fe13587a7770e3d65ba8fbca69aa",
"assets/assets/projects/img_10.png": "16762debad75a0226d964d3caa1a14d8",
"assets/assets/skillsets/github.png": "1980ceadaef6690302072e4234c7e8a5",
"assets/assets/skillsets/python.png": "7961139575c0b59310db3a233ff063bf",
"assets/assets/skillsets/git.png": "30c52ad5770c2bae645deed0cfe1711e",
"assets/assets/skillsets/unity.png": "9e098249ad40598166da64269e1bea51",
"assets/assets/skillsets/dart.png": "91c1ee9f3d3d1c090201b9a0b27c2978",
"assets/assets/skillsets/django.png": "2a1c20c1d2248ec8304142e2ae3eb9cf",
"assets/assets/skillsets/flask.png": "62a36868457b82239686824699568181",
"assets/assets/skillsets/flutter.png": "6e7797f4e82a63c3a885b1603d026003",
"assets/assets/skillsets/slack.png": "87ba0e7ee4644a94d0dba6ed95f567ab",
"assets/assets/skillsets/firebase.png": "545d7be8701f4538445d7a84e7e010e1",
"assets/assets/background.jpeg": "1c5baadefcd73ee3f976c184d845cf2c",
"assets/assets/background.mp4": "00acdc59b1f4cbcfc3077b6a352d3f7d",
"assets/assets/git.png": "18cbe5e4d1700db0fe010052481a0b42",
"assets/assets/code.json": "921678c104b23e30b0feba2f9741aae2",
"assets/assets/phone.png": "e6680a9d64687265aa86cf22342d9bb3",
"assets/AssetManifest.bin": "582e0ba2f98a84606782806f71945e9f",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"main.dart.js": "9c04ff630b6dedda4e2d082c76945537"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
