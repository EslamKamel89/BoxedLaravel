# 📦 BoxedLaravel — Because Your Laravel App Deserves a Proper Moving Truck

> A Docker setup so clean, even your cat could deploy it.  
> *(Disclaimer: We are not responsible for cats deploying to production.)*

---

## 🎉 Welcome to `BoxedLaravel` — The Laravel Dev Environment That Just Works™

Tired of the classic *"But it works on my machine!"* excuse?  
Sick of installing PHP, Composer, Node, MySQL, Redis, and 17 other things just to run `php artisan serve`?  
Worried your local environment looks like a junk drawer full of version mismatches?

**Introducing `BoxedLaravel`** — the Docker-powered Laravel starter kit that packages your entire dev environment like a Michelin-star meal.

No more setup. No more dependency drama.  
Just pure, unadulterated Laravel bliss — served in a box.

📦 One box to rule them all.  
🐳 Powered by Docker, because we like our apps isolated and our sanity intact.  
🚀 Ready for development, testing, and even production (yes, really).

---

## 🧰 What’s Inside the Box?

This isn’t just Laravel. This is **Laravel: The Director’s Cut**.

| Service | What It Does | Why It’s Cool |
|--------|--------------|-------------|
| **Nginx** | The web server that says “I got this” | Handles HTTPS out of the box with `mkcert` — no more “Your connection is not private” drama |
| **PHP 8.2 (FPM)** | The brain of the operation | With Redis, PDO, and a UID fix so your files don’t hate you |
| **MySQL** | Your data’s new best friend | Named volumes mean your database survives container purges |
| **Redis** | The cool kid at the party | Powers queues, cache, and Reverb (because real-time is cool) |
| **Composer** | Dependency wrangler | Runs in its own container — no global installs, no regrets |
| **Artisan** | Laravel’s Swiss Army knife | Ready to `migrate`, `seed`, and `tinker` on demand |
| **NPM** | Frontend’s BFF | Run `npm run dev` without Node on your host — magic! |
| **Queue Worker + Scheduler** | The silent heroes | Always working, never complaining (unless Redis is down) |
| **Reverb** | WebSockets made easy | Because everyone needs a little real-time sparkle |

---

## 🚀 Getting Started: 3 Commands to Glory

1. **Clone the repo (or just download the box):**
   ```bash
   git clone https://github.com/your-username/BoxedLaravel.git my-amazing-app
   cd my-amazing-app
   ```

2. **Build and start the containers:**
   ```bash
   docker-compose up -d
   ```

3. **Install Laravel and watch the magic happen:**
   ```bash
   docker-compose run --rm composer create-project --no-interaction
   ```

   *(Yes, that’s it. No `composer install` needed — we build it in!)*

---

## 🛠️ Useful Commands (Because You’re the Boss)

| Task | Command |
|------|-------|
| Run migrations | `docker-compose run --rm artisan migrate` |
| Seed the database | `docker-compose run --rm artisan db:seed` |
| Start Vite dev server | `docker-compose run --rm npm run dev` |
| Run tests | `docker-compose run --rm phpunit` |
| Open a shell in PHP container | `docker-compose run --rm php /bin/sh` |
| Clear cache like a pro | `docker-compose run --rm artisan optimize:clear` |

---

## 🔐 HTTPS? In Development? YES.

We use [`mkcert`](https://github.com/FiloSottile/mkcert) to generate **trusted local SSL certificates**.  
That means:

✅ `https://localhost` just works  
✅ No browser warnings  
✅ You can test OAuth, PWA, and other HTTPS-only features locally

Just run:
```bash
mkcert -install
mkcert localhost
```

Then drop the certs into `nginx/certs/` and restart Nginx. Boom. You’re secure.

---

## 🐳 Production-Ready? You Betcha.

This isn’t just for dev.  
We use `COPY` instead of bind mounts in production mode, so your app is **immutable, consistent, and ready to ship**.

Want to deploy to AWS EC2?  
Just build the image, push it to ECR, and run it with ECS or plain Docker.  
No surprises. No missing extensions. No “why is Redis not loading?” at 2 AM.

---

## 🧠 Why This Exists

Because setting up Laravel with Docker shouldn’t feel like assembling IKEA furniture with missing screws.

Because `php artisan serve` is cute, but Nginx + PHP-FPM is *professional*.

Because you deserve an environment that:
- Works the first time
- Works the 100th time
- Works on your machine, your teammate’s machine, and the intern’s Raspberry Pi

---

## 🙌 Acknowledgements

- [Laravel](https://laravel.com) — for being awesome
- [Docker](https://docker.com) — for making containers not terrifying
- [`mkcert`](https://github.com/FiloSottile/mkcert) — for fixing HTTPS in dev
- You — for not giving up when `docker-compose up` failed the first 5 times

---

## 📬 Issues? Ideas? Want to Add Laravel Octane?

Open an issue. Or a PR. Or just yell into the void (we’ll probably hear it).

We love feedback. Especially if it comes with memes.

---

## 🎁 Final Note

If you find this useful, please ⭐ the repo.  
If you don’t, well… at least your Laravel app is still in a box.

📦 **BoxedLaravel** — *Dockerized Laravel so smooth, it should be illegal.*
