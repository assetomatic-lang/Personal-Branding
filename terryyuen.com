<!DOCTYPE html>
<html lang="en-SG">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Terry Yuen | Singapore Luxury Real Estate & Family Office Advisor | CEA R030418F</title>
<meta name="description" content="15+ years of expertise in Singapore luxury real estate. Terry Yuen advises discerning global investors and family offices on wealth preservation, premium properties, and relocation. CEA R030418F.">
<meta name="keywords" content="Singapore Luxury Real Estate, Family Office Singapore, Singapore Property Investment, Global Investor Programme, Singapore PR, Terry Yuen">
<meta property="og:title" content="Terry Yuen | Singapore Luxury Real Estate Expert">
<meta property="og:description" content="A safe harbour for capital, lifestyle, and legacy. Expert guidance for global families investing in Singapore.">
<meta property="og:type" content="website">
<script src="https://cdn.tailwindcss.com"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<style>
:root{
  --bg:#080808;
  --bg-elev:#0f0f0f;
  --card:#111111;
  --line:rgba(255,255,255,0.08);
  --line-strong:rgba(255,255,255,0.16);
  --text:#ffffff;
  --text-soft:#a8a8a8;
  --text-mute:#5a5a5a;
  --gold:#c5a572;
  --gold-soft:rgba(197,165,114,0.12);
  --gold-line:rgba(197,165,114,0.35);
  --blue:#3b82f6;
  --whatsapp:#25D366;
  --eq:cubic-bezier(.22,1,.36,1);
  --ee:cubic-bezier(.16,1,.3,1);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  background:var(--bg);
  color:var(--text);
  font-family:'Inter',sans-serif;
  margin:0;
  -webkit-font-smoothing:antialiased;
  overflow-x:hidden;
}
h1, h2, h3, .serif {
  font-family: 'Playfair Display', serif;
}
::selection{background:rgba(197,165,114,0.3);color:#fff}

.reveal{opacity:0;transform:translateY(40px);transition:opacity 1s var(--eq),transform 1s var(--eq);will-change:opacity,transform}
.reveal.visible{opacity:1;transform:none}

.nav-glass{
  background:rgba(8,8,8,0.75);
  backdrop-filter:saturate(180%) blur(20px);
  -webkit-backdrop-filter:saturate(180%) blur(20px);
  border-bottom:1px solid var(--line);
}

.btn{
  display:inline-flex;align-items:center;gap:0.5rem;
  padding:0.875rem 1.75rem;border-radius:999px;
  font-weight:500;font-size:0.9rem;
  transition:all .35s var(--eq);
  text-decoration:none;cursor:pointer;border:1px solid transparent;
  letter-spacing:0.02em;
}
.btn-gold{background:var(--gold);color:#080808;border-color:var(--gold)}
.btn-gold:hover{background:#d4b88a;transform:translateY(-2px);box-shadow:0 14px 32px rgba(197,165,114,0.25)}
.btn-outline{background:transparent;color:#fff;border-color:var(--line-strong)}
.btn-outline:hover{background:rgba(255,255,255,0.05);border-color:var(--gold);color:var(--gold);transform:translateY(-2px)}
.btn-wa{background:transparent;color:#86efac;border-color:rgba(37,211,102,0.4)}
.btn-wa:hover{background:rgba(37,211,102,0.08);border-color:var(--whatsapp);transform:translateY(-2px)}
.btn-sm{padding:0.6rem 1.25rem;font-size:0.85rem}

.card{
  background:var(--card);
  border:1px solid var(--line);
  border-radius:1.25rem;
  transition:all .4s var(--eq);
}
.card:hover{border-color:var(--gold-line);transform:translateY(-4px);box-shadow:0 20px 50px rgba(0,0,0,0.3)}

.float-btn{
  display:flex;align-items:center;justify-content:center;
  width:54px;height:54px;border-radius:50%;
  color:#fff;text-decoration:none;cursor:pointer;border:none;
  box-shadow:0 10px 28px rgba(0,0,0,0.45);
  transition:all .35s var(--eq);position:relative;
}
.float-btn:hover{transform:translateY(-3px) scale(1.06)}
.float-whatsapp{background:var(--whatsapp)}
.float-phone{background:var(--gold);color:#080808}

.float-container{
  position:fixed;bottom:1.5rem;right:1.5rem;z-index:40;
  display:flex;flex-direction:column;gap:0.85rem;
  transition:opacity .4s var(--eq),transform .4s var(--eq);
}
.float-container.is-hidden{opacity:0;pointer-events:none;transform:translateY(20px)}

.hero-grid{
  background-image:
    linear-gradient(rgba(197,165,114,0.04) 1px,transparent 1px),
    linear-gradient(90deg,rgba(197,165,114,0.04) 1px,transparent 1px);
  background-size:64px 64px;
}
.video-bg{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;z-index:0}
.hero-text-grad{
  background:linear-gradient(180deg,#fff 0%,#fff 55%,rgba(255,255,255,0.6) 100%);
  -webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;
}
.eyebrow{
  font-size:0.75rem;letter-spacing:0.32em;text-transform:uppercase;
  color:var(--gold);font-weight:600;
}

.tag{
  display:inline-flex;align-items:center;gap:0.4rem;
  padding:0.32rem 0.7rem;background:rgba(255,255,255,0.05);
  border:1px solid var(--line);border-radius:999px;
  font-size:0.75rem;color:var(--text-soft);font-weight:500;
}
.tag-gold{background:var(--gold-soft);border-color:var(--gold-line);color:var(--gold)}

.step-circle{
  width:52px;height:52px;border-radius:50%;
  background:var(--bg-elev);
  border:1px solid var(--gold-line);
  display:flex;align-items:center;justify-content:center;
  font-weight:600;color:var(--gold);font-size:1.05rem;
  font-family: 'Playfair Display', serif;
  position:relative;z-index:2;
  transition:all .35s var(--eq);
}
.step-item:hover .step-circle{
  background:var(--gold-soft);
  border-color:var(--gold);
  transform:scale(1.08);
}

.highlight-box{
  border:1px solid var(--gold-line);
  background:linear-gradient(135deg,var(--gold-soft) 0%,rgba(197,165,114,0.02) 100%);
  border-radius:1rem;padding:1.4rem 1.6rem;
}

.section-line{
  height:1px;
  background:linear-gradient(90deg,transparent 0%,var(--line) 20%,var(--line) 80%,transparent 100%);
}

.about-photo-wrap{
  position:relative;overflow:hidden;
  border-radius:1rem;
}
.about-photo-wrap img{
  width:100%;height:100%;object-fit:cover;
  transition:transform .8s var(--ee),filter .4s var(--eq);
  filter:saturate(0.95) contrast(1.05);
}
.about-photo-wrap:hover img{
  transform:scale(1.04);
  filter:saturate(1.05) contrast(1.1);
}

.property-photo-wrap{
  position:relative;overflow:hidden;
  height:100%;
  min-height:420px;
}
.property-photo-wrap img{
  width:100%;height:100%;object-fit:cover;
  transition:transform .8s var(--ee),filter .4s var(--eq);
  filter:saturate(0.95) contrast(1.05);
}
.property-photo-wrap:hover img{
  transform:scale(1.04);
  filter:saturate(1) contrast(1.1);
}

.stat-number {
  font-variant-numeric: tabular-nums;
  font-family: 'Playfair Display', serif;
}

.cap-item{
  display:flex;gap:0.85rem;align-items:flex-start;
  padding:0.7rem 0;
  border-bottom:1px solid var(--line);
}
.cap-item:last-child{border-bottom:none}
.cap-icon{
  width:36px;height:36px;border-radius:0.6rem;
  display:flex;align-items:center;justify-content:center;
  flex-shrink:0;
  background:var(--gold-soft);color:var(--gold);
}

@media (prefers-reduced-motion:reduce){
  .reveal{opacity:1;transform:none;transition:none}
  .about-photo-wrap img,.property-photo-wrap img{transition:none;transform:none}
}
</style>
</head>
<body>

<!-- ============ NAVBAR ============ -->
<nav class="fixed top-0 left-0 right-0 z-50 nav-glass">
  <div class="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
    <a href="#" class="flex items-center gap-3 group">
      <div class="w-10 h-10 rounded-lg flex items-center justify-center font-bold text-sm tracking-tight border" style="border-color:var(--gold); color:var(--gold)">TY</div>
      <div class="leading-tight">
        <div class="font-bold text-white text-base">Terry Yuen</div>
        <div class="text-[10px] text-gray-500 tracking-[0.2em] uppercase mt-0.5">Singapore Real Estate</div>
      </div>
    </a>
    <div class="hidden md:flex items-center gap-8 text-sm font-medium">
      <a href="#hero" class="text-white hover:text-[var(--gold)] transition-colors">Home</a>
      <a href="#why-singapore" class="text-gray-400 hover:text-[var(--gold)] transition-colors">Why Singapore</a>
      <a href="#properties" class="text-gray-400 hover:text-[var(--gold)] transition-colors">Portfolio</a>
      <a href="#contact" class="text-gray-400 hover:text-[var(--gold)] transition-colors">Contact</a>
    </div>
    <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="btn btn-gold btn-sm">
      Private Consultation
    </a>
  </div>
</nav>

<!-- ============ HERO ============ -->
<section class="relative min-h-screen flex items-center justify-center overflow-hidden" id="hero">
  <video class="video-bg" autoplay muted loop playsinline poster="https://z-cdn-media.chatglm.cn/files/d71e9042-d4b9-4ec0-a783-e5b30d18f797.png?auth_key=1884037889-d23e60fe270f425a871274b682f070cc-0-72ea1832119d7dffd2d311a443bf8f99">
    <source src="https://res.cloudinary.com/usi1hsqc/video/upload/video_2026-07-14_13-39-14_pzdhp4.mp4" type="video/mp4">
  </video>
  <div class="absolute inset-0 z-[1]" style="background:linear-gradient(180deg,rgba(8,8,8,0.65) 0%,rgba(8,8,8,0.55) 40%,rgba(8,8,8,0.9) 100%)"></div>
  <div class="absolute inset-0 hero-grid opacity-25 z-[1]"></div>
  <div class="absolute inset-x-0 top-0 h-32 z-[2]" style="background:linear-gradient(180deg,rgba(8,8,8,0.8),transparent)"></div>

  <div class="relative z-10 max-w-5xl mx-auto px-6 text-center pt-20 pb-24">
    <div class="reveal inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full border border-white/15 bg-white/[0.04] text-xs tracking-[0.25em] text-gray-200 mb-8 backdrop-blur-sm">
      <span class="w-1.5 h-1.5 rounded-full" style="background:var(--gold);box-shadow:0 0 8px var(--gold)"></span>
      Singapore Luxury Property Expert · CEA R030418F
    </div>

    <h1 class="reveal text-5xl md:text-7xl font-bold mb-6 leading-[1.05] tracking-tight hero-text-grad">
      Your Gateway to Singapore<br>Real Estate & Legacy
    </h1>

    <p class="reveal text-lg md:text-xl text-gray-300 max-w-2xl mx-auto mb-10 leading-relaxed font-light">
      15+ years of expertise guiding discerning global investors and families.<br class="hidden sm:block">
      From prime luxury residences to strategic commercial assets, we deliver seamless, transparent transactions.
    </p>

    <div class="reveal flex flex-wrap gap-3 justify-center">
      <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="btn btn-gold">
        Schedule a Consultation
      </a>
      <a href="tel:+6588044132" class="btn btn-outline">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
        +65 8804 4132
      </a>
    </div>
  </div>

  <div class="absolute bottom-8 left-1/2 -translate-x-1/2 text-gray-400 text-xs flex flex-col items-center gap-2 z-10 animate-bounce">
    <span class="tracking-[0.3em] uppercase">Scroll</span>
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
  </div>
</section>

<!-- ============ ABOUT TERRY ============ -->
<section id="about" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="grid lg:grid-cols-[5fr_7fr] gap-12 lg:gap-16 items-center">
      <div class="reveal">
        <div class="aspect-[4/5] about-photo-wrap relative">
          <img src="https://z-cdn-media.chatglm.cn/files/e4c8ccb7-d720-4445-929e-b75a2127a533.jpg?auth_key=1884369576-8b4e1c52e4584918b7b4ab6ee4b5cee7-0-e3b8ad05fcb9993a254c2b5cd0484708" alt="Terry Yuen — Singapore Senior Real Estate Advisor, CEA R030418F" loading="lazy">
          <div class="absolute top-4 left-4 z-10">
            <div class="tag tag-gold">CEA R030418F</div>
          </div>
          <div class="absolute bottom-0 left-0 right-0 p-6 z-10" style="background:linear-gradient(180deg,transparent 0%,rgba(0,0,0,0.85) 100%)">
            <div class="text-2xl font-bold mb-1 serif">Terry Yuen</div>
            <div class="text-sm text-gray-300">Senior Real Estate Advisor</div>
          </div>
        </div>
      </div>

      <div class="reveal">
        <div class="eyebrow mb-4">About Terry</div>
        <h2 class="text-4xl md:text-5xl font-bold mb-6 leading-[1.1] tracking-tight">A Trusted Advisor for Global Capital</h2>
        <p class="text-gray-300 leading-[1.85] mb-8 text-[1.02rem]">
          With over 15 years of deep-rooted experience in the Singapore property market, Terry specializes in advising high-net-worth individuals, family offices, and global investors. Fluent in English, Mandarin, and Cantonese, Terry bridges the gap between international capital and local premium assets. 
          <br><br>
          From selecting prime luxury residences to navigating complex commercial investments like CT Gold, Terry provides an end-to-end, white-glove service that ensures wealth preservation and seamless transitions for global families relocating to Singapore.
        </p>
        <div class="grid grid-cols-2 gap-3">
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="var(--gold)" stroke-width="3"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">CEA Registered</span>
          </div>
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="var(--gold)" stroke-width="3"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">15+ Years Expertise</span>
          </div>
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="var(--gold)" stroke-width="3"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">Family Office Advisory</span>
          </div>
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="var(--gold)" stroke-width="3"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">White-Glove Service</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ WHY SINGAPORE ============ -->
<section id="why-singapore" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="text-center mb-20">
      <div class="reveal eyebrow mb-4">The Singapore Advantage</div>
      <h2 class="reveal text-4xl md:text-5xl font-bold mb-6 tracking-tight">Why Global Families Choose Singapore</h2>
      <p class="reveal text-gray-400 text-lg font-light max-w-3xl mx-auto">
        A safe harbour for capital, lifestyle, and legacy – Singapore continues to attract discerning investors from Hong Kong, China, and across the world.
      </p>
    </div>

    <!-- Stats Section -->
    <div class="reveal grid grid-cols-3 gap-8 max-w-3xl mx-auto mb-20 pb-20 border-b border-white/5">
      <div class="text-center">
        <div class="text-4xl md:text-6xl font-bold text-white stat-number" data-target="15">0</div>
        <div class="text-gray-500 text-[11px] uppercase tracking-[0.2em] mt-2">Years Experience</div>
      </div>
      <div class="text-center">
        <div class="text-4xl md:text-6xl font-bold text-white"><span class="stat-number" data-target="200">0</span><span class="text-3xl md:text-5xl">+</span></div>
        <div class="text-gray-500 text-[11px] uppercase tracking-[0.2em] mt-2">Closed Deals</div>
      </div>
      <div class="text-center">
        <div class="text-4xl md:text-6xl font-bold text-white"><span class="text-3xl md:text-5xl align-top">$</span><span class="stat-number" data-target="500">0</span><span class="text-3xl md:text-5xl">M</span><span class="text-3xl md:text-5xl">+</span></div>
        <div class="text-gray-500 text-[11px] uppercase tracking-[0.2em] mt-2">Transacted Volume (SGD)</div>
      </div>
    </div>

    <div class="grid md:grid-cols-2 gap-6">
      <div class="reveal card p-8">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5" style="background:var(--gold-soft); color:var(--gold)">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-3 tracking-tight serif">Political & Currency Stability</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">AAA-rated sovereign, transparent legal system, and a strong Singapore dollar offer unmatched wealth preservation.</p>
      </div>
      
      <div class="reveal card p-8">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5" style="background:var(--gold-soft); color:var(--gold)">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 21h18M3 10h18M5 6l7-3 7 3M4 10v11M20 10v11M8 14v3M12 14v3M16 14v3"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-3 tracking-tight serif">Family Office Hub</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">Over 1,100 single-family offices now call Singapore home. Favourable tax incentives under Sections 13O and 13U make it Asia’s leading wealth management centre.</p>
      </div>

      <div class="reveal card p-8">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5" style="background:var(--gold-soft); color:var(--gold)">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><path d="M2 12h20M12 2a15.3 15.3 0 010 20M12 2a15.3 15.3 0 000 20"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-3 tracking-tight serif">Path to Permanent Residency</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">Real estate investment, employment passes, and the Global Investor Programme open clear routes to PR – securing long-term access to world-class education and healthcare.</p>
      </div>

      <div class="reveal card p-8">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5" style="background:var(--gold-soft); color:var(--gold)">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-3 tracking-tight serif">Lifestyle & Connectivity</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">Changi Airport links to over 150 cities; international schools, Michelin dining, and a garden-city environment make everyday life extraordinary.</p>
      </div>
    </div>

    <div class="reveal highlight-box mt-12 max-w-4xl mx-auto text-center">
      <p class="text-sm leading-[1.85] text-gray-200">
        Terry collaborates with top immigration lawyers and family office consultants to deliver a seamless relocation and investment experience.
      </p>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ BUYER GUIDE ============ -->
<section id="buyer-guide" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">The Process</div>
      <h2 class="reveal text-4xl md:text-5xl font-bold mb-4 tracking-tight">A Seamless Investment Journey</h2>
      <p class="reveal text-gray-400 text-lg font-light">Four steps to securing your Singapore legacy</p>
    </div>

    <div class="relative">
      <div class="hidden md:block absolute top-[26px] left-[12.5%] right-[12.5%] h-px" style="background:linear-gradient(90deg,transparent 0%,var(--gold-line) 20%,var(--gold-line) 80%,transparent 100%)"></div>

      <div class="grid md:grid-cols-4 gap-10 md:gap-6 relative">
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">1</div>
          <h3 class="font-bold text-base mb-2 tracking-tight serif">Private Consultation</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">We discuss your goals, family needs, and budget to structure a tailored property strategy.</p>
        </div>
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">2</div>
          <h3 class="font-bold text-base mb-2 tracking-tight serif">Curated Selection</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">Receive a handpicked list of premium properties matching your exact investment criteria.</p>
        </div>
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">3</div>
          <h3 class="font-bold text-base mb-2 tracking-tight serif">Viewing & Acquisition</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">Private viewings or virtual tours, followed by expert negotiation to secure the best terms.</p>
        </div>
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">4</div>
          <h3 class="font-bold text-base mb-2 tracking-tight serif">Legacy Secured</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">Legal coordination, handover, and post-sale property management support.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ PROPERTIES ============ -->
<section id="properties" class="py-28 md:py-36 px-6">
  <div class="max-w-6xl mx-auto">
    <div class="text-center mb-14">
      <div class="reveal eyebrow mb-4">Featured Portfolio</div>
      <h2 class="reveal text-4xl md:text-5xl font-bold tracking-tight">Signature Investments</h2>
    </div>

    <div class="reveal card overflow-hidden">
      <div class="grid md:grid-cols-2 gap-0">
        <div class="property-photo-wrap relative">
          <img src="https://z-cdn-media.chatglm.cn/files/c3b64978-4fa1-4a3b-95e5-484aa5b0ffd5.jpg?auth_key=1884375375-e8e21f096c8349ec800b9adfae776f7a-0-786abed475ed23ed80b35d84202b7768" alt="CT Gold Macpherson Food Court - Freehold B1 Industrial Property in Singapore" loading="lazy">
          <div class="absolute top-5 left-5 flex flex-wrap gap-2 z-10">
            <span class="tag tag-gold">Freehold</span>
            <span class="tag tag-gold">ABSD Exempt</span>
            <span class="tag">Last Unit</span>
          </div>
        </div>
        <div class="p-8 md:p-10 flex flex-col justify-center">
          <div class="text-xs text-gray-500 tracking-[0.2em] uppercase mb-3">Macpherson · B1 Industrial</div>
          <h3 class="text-3xl font-bold mb-4 leading-[1.15] tracking-tight serif">CT Gold Macpherson Food Court #01-01</h3>
          <p class="text-gray-400 leading-[1.8] mb-7 text-[0.95rem]">
            2,293 sq ft (213 sqm) with 5 stalls and 88 seats. Developed by Chiu Teng Group. A rare freehold B1 industrial food court in Singapore, offering excellent yield without Additional Buyer's Stamp Duty (ABSD).
          </p>
          <div class="flex items-baseline gap-3 mb-7 pb-7 border-b border-white/5">
            <span class="text-xs text-gray-500 uppercase tracking-[0.15em]">Asking Price</span>
            <span class="text-3xl font-bold" style="color:var(--gold)">SGD $6,870,635</span>
          </div>
          <a href="https://ct-gold.terryyuen.com" target="_blank" rel="noopener" class="btn btn-gold self-start">
            View Details →
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ CONTACT ============ -->
<section id="contact" class="py-28 md:py-36 px-6">
  <div class="max-w-5xl mx-auto">
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">Get In Touch</div>
      <h2 class="reveal text-4xl md:text-5xl font-bold mb-4 tracking-tight">Begin Your Singapore Journey</h2>
      <p class="reveal text-gray-400 text-lg font-light">Discreet, professional, and personalized service.</p>
    </div>

    <div class="grid md:grid-cols-3 gap-5">
      <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="reveal card p-9 text-center transition-all">
        <div class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-5" style="background:rgba(37,211,102,0.1)">
          <svg width="32" height="32" viewBox="0 0 24 24" fill="#25D366"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.71.306 1.263.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-1.5 tracking-tight serif">WhatsApp</h3>
        <p class="text-sm text-gray-400 mb-3">Instant direct messaging</p>
        <p class="text-sm font-bold" style="color:#25D366">+65 8804 4132</p>
      </a>

      <a href="tel:+6588044132" class="reveal card p-9 text-center transition-all" style="border-color:var(--gold-line)">
        <div class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-5" style="background:var(--gold-soft)">
          <svg width="32" height="32" viewBox="0 0 24 24" fill="var(--gold)"><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-1.5 tracking-tight serif">Direct Line</h3>
        <p class="text-sm text-gray-400 mb-3">Speak with Terry directly</p>
        <p class="text-sm font-bold text-[var(--gold)]">+65 8804 4132</p>
      </a>

      <a href="mailto:tgy0660@yahoo.com.sg" class="reveal card p-9 text-center transition-all">
        <div class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-5" style="background:rgba(255,255,255,0.05)">
          <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
        </div>
        <h3 class="text-xl font-bold mb-1.5 tracking-tight serif">Email</h3>
        <p class="text-sm text-gray-400 mb-3">For formal inquiries</p>
        <p class="text-sm font-bold text-white">tgy0660@yahoo.com.sg</p>
      </a>
    </div>
  </div>
</section>

<!-- ============ FOOTER ============ -->
<footer class="border-t border-white/5 py-12 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="space-y-5 text-center">
      <div class="text-gray-200 font-bold text-base serif">Terry Yuen Realty · CEA Registration No. R030418F</div>
      <div class="flex flex-wrap justify-center gap-x-7 gap-y-2 text-xs text-gray-500">
        <a href="#hero" class="hover:text-[var(--gold)] transition-colors">Home</a>
        <a href="#why-singapore" class="hover:text-[var(--gold)] transition-colors">Why Singapore</a>
        <a href="#properties" class="hover:text-[var(--gold)] transition-colors">Portfolio</a>
        <a href="https://cn.terryyuen.com" class="hover:text-[var(--gold)] transition-colors">中文官网 →</a>
      </div>
      <div class="pt-6 border-t border-white/5 max-w-3xl mx-auto">
        <div class="text-xs text-gray-600 mb-2">© 2024 Terry Yuen Realty. All Rights Reserved.</div>
        <div class="text-[11px] text-gray-700 leading-relaxed max-w-2xl mx-auto">
          Disclaimer: This page is for marketing purposes only and does not constitute legal or financial advice. Please consult your legal and financial advisors before making any investment decisions.
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- ============ FLOATING BUTTONS ============ -->
<div class="float-container" id="floatContainer">
  <a href="tel:+6588044132" class="float-btn float-phone" title="Call Terry" aria-label="Call Terry">
    <svg width="22" height="22" viewBox="0 0 24 24" fill="currentColor"><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/></svg>
  </a>
  <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="float-btn float-whatsapp" title="WhatsApp" aria-label="WhatsApp">
    <svg width="22" height="22" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.71.306 1.263.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
  </a>
</div>

<script>
// ============ REVEAL ON SCROLL ============
var ioReveal = null;
if(window.IntersectionObserver){
  ioReveal = new IntersectionObserver(function(entries){
    for(var i = 0; i < entries.length; i++){
      if(entries[i].isIntersecting){
        entries[i].target.classList.add('visible');
        ioReveal.unobserve(entries[i].target);
      }
    }
  }, { threshold: 0.12, rootMargin: '0px 0px -60px 0px' });

  var revealEls = document.querySelectorAll('.reveal');
  for(var j = 0; j < revealEls.length; j++){
    ioReveal.observe(revealEls[j]);
  }
}

// ============ SAFETY FALLBACKS ============
setTimeout(function(){
  var els = document.querySelectorAll('.reveal:not(.visible)');
  for(var i = 0; i < els.length; i++){
    els[i].classList.add('visible');
  }
}, 800);

(function(){
  setTimeout(function(){
    var els = document.querySelectorAll('.reveal:not(.visible)');
    for(var i = 0; i < els.length; i++){
      els[i].classList.add('visible');
    }
  }, 1500);
})();

// ============ ANIMATED NUMBERS ============
function animateValue(obj, start, end, duration) {
  var startTimestamp = null;
  var step = function(timestamp) {
    if (!startTimestamp) startTimestamp = timestamp;
    var progress = Math.min((timestamp - startTimestamp) / duration, 1);
    obj.innerText = Math.floor(progress * (end - start) + start);
    if (progress < 1) {
      window.requestAnimationFrame(step);
    }
  };
  window.requestAnimationFrame(step);
}

var statsObserver = null;
if (window.IntersectionObserver) {
  var statElements = document.querySelectorAll('.stat-number');
  statsObserver = new IntersectionObserver(function(entries) {
    for (var i = 0; i < entries.length; i++) {
      if (entries[i].isIntersecting) {
        var target = parseInt(entries[i].target.getAttribute('data-target'), 10);
        if(!isNaN(target)) {
          animateValue(entries[i].target, 0, target, 2000);
        }
        statsObserver.unobserve(entries[i].target);
      }
    }
  }, { threshold: 0.5 });

  for (var k = 0; k < statElements.length; k++) {
    statsObserver.observe(statElements[k]);
  }
}

// ============ FLOATING BUTTONS VISIBILITY ============
var floatContainer = document.getElementById('floatContainer');
var heroSection = document.getElementById('hero');
if(floatContainer && heroSection && window.IntersectionObserver){
  var heroObserver = new IntersectionObserver(function(entries){
    for(var i = 0; i < entries.length; i++){
      if(entries[i].isIntersecting){
        floatContainer.classList.add('is-hidden');
      } else {
        floatContainer.classList.remove('is-hidden');
      }
    }
  }, { threshold: 0.15 });
  heroObserver.observe(heroSection);
}
</script>

</body>
</html>
