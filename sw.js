// TSV Bockum PWA – network-first, no persistent app cache.
// Keeping the application online avoids stale schedules and admin data.
self.addEventListener('install', event => { self.skipWaiting(); });
self.addEventListener('activate', event => { event.waitUntil(self.clients.claim()); });
self.addEventListener('fetch', event => {
  if (event.request.mode === 'navigate') {
    event.respondWith(fetch(event.request).catch(() => new Response('<!doctype html><html lang="de"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>TSV Bockum</title><body style="background:#111115;color:#fff;font-family:Arial;padding:2rem"><h1>TSV Bockum</h1><p>Zurzeit besteht keine Internetverbindung. Bitte versuche es erneut, sobald du online bist.</p></body></html>',{headers:{'Content-Type':'text/html; charset=utf-8'}})));
  }
});
