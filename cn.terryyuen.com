<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Terry Yuen 阮先生 · 新加坡房地产专家 | CEA R030418F</title>
<meta name="description" content="15年以上新加坡房地产经验，专注服务中国买家。从选房到交房，全程中文陪同。CT Gold永久产权食阁等优质物业。">
<script src="https://cdn.tailwindcss.com"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<style>
:root{
  --bg:#050505;
  --bg-elev:#0c0c0c;
  --card:#0f0f0f;
  --card-2:#131313;
  --line:rgba(255,255,255,0.08);
  --line-strong:rgba(255,255,255,0.16);
  --text:#ffffff;
  --text-soft:#a8a8a8;
  --text-mute:#5a5a5a;
  --accent:#3b82f6;
  --accent-soft:rgba(59,130,246,0.12);
  --wechat:#07C160;
  --whatsapp:#25D366;
  --phone:#3b82f6;
  --eq:cubic-bezier(.22,1,.36,1);
  --ee:cubic-bezier(.16,1,.3,1);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  background:var(--bg);
  color:var(--text);
  font-family:'Inter','PingFang SC','Microsoft YaHei','Noto Sans SC',sans-serif;
  margin:0;
  -webkit-font-smoothing:antialiased;
  overflow-x:hidden;
  font-feature-settings:"cv11","ss01";
}
::selection{background:rgba(7,193,96,0.3);color:#fff}

.reveal{opacity:0;transform:translateY(40px);transition:opacity 1s var(--eq),transform 1s var(--eq);will-change:opacity,transform}
.reveal.visible{opacity:1;transform:none}

.nav-glass{
  background:rgba(5,5,5,0.72);
  backdrop-filter:saturate(180%) blur(20px);
  -webkit-backdrop-filter:saturate(180%) blur(20px);
  border-bottom:1px solid var(--line);
}

.btn{
  display:inline-flex;align-items:center;gap:0.5rem;
  padding:0.875rem 1.5rem;border-radius:999px;
  font-weight:600;font-size:0.95rem;
  transition:all .35s var(--eq);
  text-decoration:none;cursor:pointer;border:1px solid transparent;
  letter-spacing:0.01em;
}
.btn-wechat{background:var(--wechat);color:#fff;border-color:var(--wechat)}
.btn-wechat:hover{background:#06ad53;transform:translateY(-2px);box-shadow:0 14px 32px rgba(7,193,96,0.28)}
.btn-wa{background:transparent;color:#86efac;border-color:rgba(37,211,102,0.4)}
.btn-wa:hover{background:rgba(37,211,102,0.08);border-color:var(--whatsapp);transform:translateY(-2px)}
.btn-phone{background:transparent;color:#93c5fd;border-color:rgba(59,130,246,0.4)}
.btn-phone:hover{background:rgba(59,130,246,0.08);border-color:var(--accent);transform:translateY(-2px)}
.btn-ghost{background:transparent;color:#fff;border-color:var(--line-strong)}
.btn-ghost:hover{background:rgba(255,255,255,0.05);border-color:rgba(255,255,255,0.3);transform:translateY(-2px)}
.btn-sm{padding:0.6rem 1.15rem;font-size:0.85rem}

.card{
  background:var(--card);
  border:1px solid var(--line);
  border-radius:1.25rem;
  transition:all .4s var(--eq);
}
.card:hover{border-color:var(--line-strong);transform:translateY(-4px)}

.team-card{
  position:relative;overflow:hidden;
  background:linear-gradient(180deg,#0d0d0d 0%,#0a0a0a 100%);
  border-radius:1.25rem;
  border:1px solid var(--line);
  transition:all .5s var(--ee);
}
.team-card.kayriel{border-color:rgba(59,130,246,0.25)}
.team-card.kayriel:hover{border-color:rgba(59,130,246,0.65);transform:translateY(-6px);box-shadow:0 24px 60px rgba(59,130,246,0.18)}
.team-card.terry{border-color:rgba(7,193,96,0.25)}
.team-card.terry:hover{border-color:rgba(7,193,96,0.65);transform:translateY(-6px);box-shadow:0 24px 60px rgba(7,193,96,0.18)}

.scan-line{
  position:absolute;top:0;left:0;right:0;height:2px;
  background:linear-gradient(90deg,transparent 0%,rgba(59,130,246,0.9) 50%,transparent 100%);
  opacity:0;pointer-events:none;z-index:5;
}
.team-card.kayriel:hover .scan-line{animation:scan 1.6s linear infinite}
@keyframes scan{
  0%{transform:translateY(0);opacity:0}
  10%{opacity:1}
  90%{opacity:1}
  100%{transform:translateY(420px);opacity:0}
}

.dot{width:8px;height:8px;border-radius:50%;position:relative;display:inline-block;flex-shrink:0}
.dot-blue{background:var(--accent)}
.dot-blue::after{content:'';position:absolute;inset:0;border-radius:50%;background:var(--accent);animation:pulse 1.6s ease-out infinite}
.dot-green{background:var(--wechat)}
.dot-green::after{content:'';position:absolute;inset:0;border-radius:50%;background:var(--wechat);animation:pulse 1.6s ease-out infinite}
@keyframes pulse{
  0%{transform:scale(1);opacity:0.7}
  100%{transform:scale(3.2);opacity:0}
}

.float-btn{
  display:flex;align-items:center;justify-content:center;
  width:54px;height:54px;border-radius:50%;
  color:#fff;text-decoration:none;cursor:pointer;border:none;
  box-shadow:0 10px 28px rgba(0,0,0,0.45);
  transition:all .35s var(--eq);position:relative;
}
.float-btn::before{
  content:'';position:absolute;inset:-4px;border-radius:50%;
  background:inherit;opacity:0.25;filter:blur(10px);z-index:-1;
}
.float-btn:hover{transform:translateY(-3px) scale(1.06)}
.float-wechat{background:var(--wechat)}
.float-whatsapp{background:var(--whatsapp)}
.float-phone{background:var(--phone)}

.float-container{
  position:fixed;bottom:1.5rem;right:1.5rem;z-index:40;
  display:flex;flex-direction:column;gap:0.85rem;
  transition:opacity .4s var(--eq),transform .4s var(--eq);
}
.float-container.is-hidden{opacity:0;pointer-events:none;transform:translateY(20px)}

.qr-backdrop{
  position:fixed;inset:0;
  background:rgba(0,0,0,0.88);
  backdrop-filter:blur(10px);-webkit-backdrop-filter:blur(10px);
  display:flex;align-items:center;justify-content:center;
  z-index:100;opacity:0;pointer-events:none;
  transition:opacity .35s var(--eq);padding:1rem;
}
.qr-backdrop.active{opacity:1;pointer-events:all}
.qr-modal{
  background:linear-gradient(180deg,#111 0%,#0a0a0a 100%);
  border:1px solid var(--line-strong);
  border-radius:1.5rem;padding:2.25rem 2rem 1.75rem;
  max-width:340px;width:100%;text-align:center;
  transform:scale(0.92) translateY(20px);
  transition:transform .4s var(--ee);
  position:relative;
}
.qr-backdrop.active .qr-modal{transform:none}

.hero-grid{
  background-image:
    linear-gradient(rgba(59,130,246,0.05) 1px,transparent 1px),
    linear-gradient(90deg,rgba(59,130,246,0.05) 1px,transparent 1px);
  background-size:64px 64px;
}
.video-bg{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;z-index:0}
.hero-text-grad{
  background:linear-gradient(180deg,#fff 0%,#fff 55%,rgba(255,255,255,0.55) 100%);
  -webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;
}
.eyebrow{
  font-size:0.72rem;letter-spacing:0.32em;text-transform:uppercase;
  color:var(--text-soft);font-weight:600;
}

@keyframes scrollBounce{
  0%,100%{transform:translateY(0);opacity:0.4}
  50%{transform:translateY(8px);opacity:1}
}
.scroll-hint{animation:scrollBounce 2.2s ease-in-out infinite}

.tag{
  display:inline-flex;align-items:center;gap:0.4rem;
  padding:0.32rem 0.7rem;background:rgba(255,255,255,0.05);
  border:1px solid var(--line);border-radius:999px;
  font-size:0.75rem;color:var(--text-soft);font-weight:500;
}
.tag-green{background:rgba(7,193,96,0.1);border-color:rgba(7,193,96,0.3);color:#4ade80}
.tag-blue{background:rgba(59,130,246,0.1);border-color:rgba(59,130,246,0.3);color:#93c5fd}
.tag-amber{background:rgba(251,191,36,0.1);border-color:rgba(251,191,36,0.3);color:#fbbf24}

.step-circle{
  width:52px;height:52px;border-radius:50%;
  background:var(--bg-elev);
  border:1px solid rgba(59,130,246,0.4);
  display:flex;align-items:center;justify-content:center;
  font-weight:800;color:#93c5fd;font-size:1.05rem;
  position:relative;z-index:2;
  transition:all .35s var(--eq);
}
.step-item:hover .step-circle{
  background:rgba(59,130,246,0.1);
  border-color:var(--accent);
  transform:scale(1.08);
}

.highlight-box{
  border:1px solid rgba(7,193,96,0.4);
  background:linear-gradient(135deg,rgba(7,193,96,0.06) 0%,rgba(7,193,96,0.02) 100%);
  border-radius:1rem;padding:1.4rem 1.6rem;
}

.section-line{
  height:1px;
  background:linear-gradient(90deg,transparent 0%,var(--line) 20%,var(--line) 80%,transparent 100%);
}

.phone-link{color:#93c5fd;text-decoration:none;font-weight:600;transition:color .3s}
.phone-link:hover{color:#fff}

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
}
.cap-icon.blue{background:rgba(59,130,246,0.1);color:#93c5fd}
.cap-icon.green{background:rgba(7,193,96,0.1);color:#4ade80}

.team-photo-wrap{
  position:relative;overflow:hidden;
  border-radius:0.75rem;
}
.team-photo-wrap img{
  width:100%;height:100%;object-fit:cover;
  transition:transform .6s var(--ee),filter .4s var(--eq);
  filter:saturate(0.92) contrast(1.02);
}
.team-card.kayriel:hover .team-photo-wrap img{
  transform:scale(1.05);
  filter:saturate(1) contrast(1.05);
}
.team-photo-wrap::after{
  content:'';position:absolute;inset:0;
  background:linear-gradient(180deg,transparent 50%,rgba(0,0,0,0.4) 100%);
  pointer-events:none;
}

.about-photo-wrap{
  position:relative;overflow:hidden;
  border-radius:1rem;
}
.about-photo-wrap img{
  width:100%;height:100%;object-fit:cover;
  transition:transform .8s var(--ee),filter .4s var(--eq);
  filter:saturate(0.95) contrast(1.03);
}
.about-photo-wrap:hover img{
  transform:scale(1.04);
  filter:saturate(1.05) contrast(1.05);
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
  filter:saturate(1) contrast(1.05);
}

.stat-number {
  font-variant-numeric: tabular-nums;
}

@media (prefers-reduced-motion:reduce){
  .reveal{opacity:1;transform:none;transition:none}
  .dot-blue::after,.dot-green::after{animation:none}
  .scroll-hint{animation:none}
  .scan-line{animation:none}
  .team-photo-wrap img,.about-photo-wrap img,.property-photo-wrap img{transition:none;transform:none}
}
</style>
</head>
<body>

<noscript>
  <div style="position:fixed;top:0;left:0;right:0;z-index:200;background:#7f1d1d;color:#fff;padding:12px 20px;text-align:center;font-size:14px;font-family:sans-serif">
    本页面需要启用 JavaScript 才能正常浏览。请在浏览器设置中启用 JavaScript。
  </div>
</noscript>

<!-- ============ NAVBAR ============ -->
<nav class="fixed top-0 left-0 right-0 z-50 nav-glass">
  <div class="max-w-7xl mx-auto px-6 py-3.5 flex items-center justify-between">
    <a href="#" class="flex items-center gap-3 group">
      <div class="w-10 h-10 rounded-lg flex items-center justify-center font-black text-white text-sm tracking-tight" style="background:linear-gradient(135deg,#3b82f6,#1d4ed8)">TR</div>
      <div class="leading-tight">
        <div class="font-bold text-white text-base">Terry Realty</div>
        <div class="text-[10px] text-gray-500 tracking-[0.2em] uppercase mt-0.5">新加坡房地产专家</div>
      </div>
    </a>
    <div class="hidden md:flex items-center gap-8 text-sm font-medium">
      <a href="#" class="text-white">首页</a>
      <a href="https://cn.ct-gold.terryyuen.com" class="text-gray-400 hover:text-white transition-colors">精选房源</a>
      <a href="#contact" class="text-gray-400 hover:text-white transition-colors">联系我们</a>
    </div>
    <button onclick="openQR()" class="btn btn-wechat btn-sm">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 0 1 .213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 0 0 .167-.054l1.903-1.114a.864.864 0 0 1 .717-.098 10.16 10.16 0 0 0 2.837.403c.276 0 .543-.027.811-.05-.857-2.578.157-4.972 1.932-6.446 1.703-1.415 3.882-1.98 5.853-1.838-.576-3.583-4.196-6.348-8.596-6.348zM5.785 5.991c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178A1.17 1.17 0 0 1 4.623 7.17c0-.651.52-1.18 1.162-1.18zm5.813 0c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178 1.17 1.17 0 0 1-1.162-1.178c0-.651.52-1.18 1.162-1.18zm5.34 2.867c-1.797-.052-3.746.512-5.28 1.786-1.72 1.428-2.687 3.72-1.78 6.22.942 2.453 3.666 4.229 6.884 4.229.826 0 1.622-.12 2.361-.336a.722.722 0 0 1 .598.082l1.584.926a.272.272 0 0 1 .14.047c.134 0 .24-.111.24-.247 0-.06-.023-.12-.038-.177l-.327-1.233a.582.582 0 0 1 .19-.555c1.633-1.121 2.61-2.799 2.61-4.659 0-3.276-3.054-5.992-6.844-6.083zm-2.094 2.99c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983zm4.844 0c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983z"/></svg>
      微信咨询
    </button>
  </div>
</nav>

<!-- ============ HERO ============ -->
<section class="relative min-h-screen flex items-center justify-center overflow-hidden" id="hero">
  <video class="video-bg" autoplay muted loop playsinline poster="https://z-cdn-media.chatglm.cn/files/d71e9042-d4b9-4ec0-a783-e5b30d18f797.png?auth_key=1884037889-d23e60fe270f425a871274b682f070cc-0-72ea1832119d7dffd2d311a443bf8f99">
    <source src="https://res.cloudinary.com/usi1hsqc/video/upload/video_2026-07-14_13-39-14_pzdhp4.mp4" type="video/mp4">
  </video>
  <div class="absolute inset-0 z-[1]" style="background:linear-gradient(180deg,rgba(5,5,5,0.55) 0%,rgba(5,5,5,0.5) 40%,rgba(5,5,5,0.85) 100%)"></div>
  <div class="absolute inset-0 hero-grid opacity-25 z-[1]"></div>
  <div class="absolute inset-x-0 top-0 h-32 z-[2]" style="background:linear-gradient(180deg,rgba(5,5,5,0.8),transparent)"></div>

  <div class="relative z-10 max-w-5xl mx-auto px-6 text-center pt-20 pb-24">
    <div class="reveal inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full border border-white/15 bg-white/[0.04] text-xs tracking-[0.25em] text-gray-200 mb-8 backdrop-blur-sm">
      <span class="w-1.5 h-1.5 rounded-full" style="background:#3b82f6;box-shadow:0 0 8px #3b82f6"></span>
      新加坡房地产专家 · CEA 注册
    </div>

    <h1 class="reveal text-5xl md:text-7xl font-black mb-6 leading-[1.05] tracking-tight hero-text-grad">
      您的新加坡房产专家
    </h1>

    <p class="reveal text-lg md:text-xl text-gray-300 max-w-2xl mx-auto mb-10 leading-relaxed font-light">
      15 年以上实战经验，专注服务中国买家。<br class="hidden sm:block">
      从选房到交房，全程中文陪同，让海外置业简单透明。
    </p>

    <div class="reveal flex flex-wrap gap-3 justify-center">
      <button onclick="openQR()" class="btn btn-wechat">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 0 1 .213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 0 0 .167-.054l1.903-1.114a.864.864 0 0 1 .717-.098 10.16 10.16 0 0 0 2.837.403c.276 0 .543-.027.811-.05-.857-2.578.157-4.972 1.932-6.446 1.703-1.415 3.882-1.98 5.853-1.838-.576-3.583-4.196-6.348-8.596-6.348zM5.785 5.991c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178A1.17 1.17 0 0 1 4.623 7.17c0-.651.52-1.18 1.162-1.18zm5.813 0c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178 1.17 1.17 0 0 1-1.162-1.178c0-.651.52-1.18 1.162-1.18zm5.34 2.867c-1.797-.052-3.746.512-5.28 1.786-1.72 1.428-2.687 3.72-1.78 6.22.942 2.453 3.666 4.229 6.884 4.229.826 0 1.622-.12 2.361-.336a.722.722 0 0 1 .598.082l1.584.926a.272.272 0 0 1 .14.047c.134 0 .24-.111.24-.247 0-.06-.023-.12-.038-.177l-.327-1.233a.582.582 0 0 1 .19-.555c1.633-1.121 2.61-2.799 2.61-4.659 0-3.276-3.054-5.992-6.844-6.083zm-2.094 2.99c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983zm4.844 0c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983z"/></svg>
        微信扫码
      </button>
      <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="btn btn-wa">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.71.306 1.263.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
        WhatsApp
      </a>
      <a href="tel:+6588044132" class="btn btn-phone">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/></svg>
        电话 +65 8804 4132
      </a>
    </div>
    <p class="reveal text-xs text-gray-600 mt-6">* 中国大陆用户使用 WhatsApp 需科学上网</p>
  </div>

  <div class="absolute bottom-8 left-1/2 -translate-x-1/2 text-gray-400 text-xs scroll-hint flex flex-col items-center gap-2 z-10">
    <span class="tracking-[0.3em] uppercase">向下滚动</span>
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
  </div>
</section>

<!-- ============ ABOUT TERRY ============ -->
<section id="about" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="grid lg:grid-cols-[5fr_7fr] gap-12 lg:gap-16 items-center">
      <div class="reveal">
        <div class="aspect-[4/5] about-photo-wrap relative">
          <img src="https://z-cdn-media.chatglm.cn/files/e4c8ccb7-d720-4445-929e-b75a2127a533.jpg?auth_key=1884369576-8b4e1c52e4584918b7b4ab6ee4b5cee7-0-e3b8ad05fcb9993a254c2b5cd0484708" alt="Terry Yuen 阮先生 — 新加坡资深房地产顾问，CEA注册号 R030418F" loading="lazy">
          <div class="absolute top-4 left-4 z-10">
            <div class="tag tag-blue">CEA R030418F</div>
          </div>
          <div class="absolute bottom-0 left-0 right-0 p-6 z-10" style="background:linear-gradient(180deg,transparent 0%,rgba(0,0,0,0.85) 100%)">
            <div class="text-2xl font-black mb-1">Terry Yuen</div>
            <div class="text-sm text-gray-300">阮先生 · 资深房地产顾问</div>
          </div>
        </div>
      </div>

      <div class="reveal">
        <div class="eyebrow mb-4">关于 Terry</div>
        <h2 class="text-4xl md:text-5xl font-black mb-3 leading-[1.1] tracking-tight">Terry Yuen 阮先生</h2>
        <div class="flex flex-wrap items-center gap-x-4 gap-y-2 text-sm text-gray-400 mb-7">
          <span>CEA 注册号：<span class="text-white font-mono font-semibold">R030418F</span></span>
          <span class="text-gray-700">·</span>
          <span>微信：<span class="text-green-400 font-semibold">好汉哥</span></span>
        </div>
        <p class="text-gray-300 leading-[1.85] mb-8 text-[1.02rem]">
          15 年以上新加坡房地产经验，精通住宅、商业、工业物业。深入了解中国买家需求，提供从房源筛选、实地看房、谈判签约到交房入住的全流程中文服务。代表项目包括 CT Gold 永久产权食阁等多个优质物业。
        </p>
        <div class="grid grid-cols-2 gap-3">
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">CEA 注册</span>
          </div>
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">15 年经验</span>
          </div>
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">中文服务</span>
          </div>
          <div class="flex items-center gap-3 p-3.5 rounded-xl bg-white/[0.025] border border-white/5">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"/></svg>
            <span class="text-sm font-semibold">全程陪同</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ TEAM ============ -->
<section id="team" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">团队介绍</div>
      <h2 class="reveal text-4xl md:text-5xl font-black mb-4 tracking-tight">您的双强团队</h2>
      <p class="reveal text-gray-400 text-lg font-light">真人专业深度 + AI 即时效率</p>
    </div>

    <div class="grid md:grid-cols-2 gap-6 mb-10">
      <!-- Kayriel AI -->
      <div class="reveal team-card kayriel p-7">
        <div class="scan-line"></div>
        <div class="aspect-[16/10] team-photo-wrap mb-6">
          <img src="https://z-cdn-media.chatglm.cn/files/2a8e72b7-b656-49e1-a698-740abf5a7121.jpg?auth_key=1884369576-85db6e3bfa3f49189d9fcd6c03649cd9-0-bb82b1792b14df7b3707c339c8a20f85" alt="Kayriel AI — 智能房产助手，24小时在线，多语言支持" loading="lazy">
        </div>
        <div class="flex items-center gap-2.5 mb-4">
          <span class="dot dot-blue"></span>
          <span class="text-[11px] text-blue-400 font-semibold tracking-[0.25em] uppercase">AI · 24 小时在线</span>
        </div>
        <h3 class="text-2xl font-black mb-1 tracking-tight">Kayriel AI</h3>
        <p class="text-gray-400 text-sm mb-5">智能房产助手</p>
        <div class="flex flex-wrap gap-2">
          <span class="tag tag-blue">即时回复</span>
          <span class="tag tag-blue">多语言</span>
        </div>
      </div>

      <!-- Terry Yuen -->
      <div class="reveal team-card terry p-7">
        <div class="h-[260px] md:h-[280px] flex flex-col items-center justify-center mb-6 rounded-xl relative overflow-hidden" style="background: radial-gradient(circle at 50% 40%, rgba(7,193,96,0.1), transparent 70%), #0a0a0a; border:1px solid rgba(255,255,255,0.05)">
          <div class="w-16 h-16 rounded-2xl flex items-center justify-center mb-4" style="background:rgba(7,193,96,0.12)">
            <svg width="32" height="32" viewBox="0 0 24 24" fill="#07C160"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 0 1 .213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 0 0 .167-.054l1.903-1.114a.864.864 0 0 1 .717-.098 10.16 10.16 0 0 0 2.837.403c.276 0 .543-.027.811-.05-.857-2.578.157-4.972 1.932-6.446 1.703-1.415 3.882-1.98 5.853-1.838-.576-3.583-4.196-6.348-8.596-6.348zM5.785 5.991c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178A1.17 1.17 0 0 1 4.623 7.17c0-.651.52-1.18 1.162-1.18zm5.813 0c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178 1.17 1.17 0 0 1-1.162-1.178c0-.651.52-1.18 1.162-1.18zm5.34 2.867c-1.797-.052-3.746.512-5.28 1.786-1.72 1.428-2.687 3.72-1.78 6.22.942 2.453 3.666 4.229 6.884 4.229.826 0 1.622-.12 2.361-.336a.722.722 0 0 1 .598.082l1.584.926a.272.272 0 0 1 .14.047c.134 0 .24-.111.24-.247 0-.06-.023-.12-.038-.177l-.327-1.233a.582.582 0 0 1 .19-.555c1.633-1.121 2.61-2.799 2.61-4.659 0-3.276-3.054-5.992-6.844-6.083zm-2.094 2.99c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983zm4.844 0c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983z"/></svg>
          </div>
          <p class="text-[11px] text-gray-500 tracking-[0.25em] uppercase">真人资深顾问</p>
        </div>
        <div class="flex items-center gap-2.5 mb-4">
          <span class="dot dot-green"></span>
          <span class="text-[11px] text-green-400 font-semibold tracking-[0.25em] uppercase">可立即联系</span>
        </div>
        <h3 class="text-2xl font-black mb-1 tracking-tight">Terry Yuen</h3>
        <p class="text-gray-400 text-sm mb-5">资深房地产顾问 · 微信：好汉哥</p>
        <div class="flex flex-wrap gap-2">
          <span class="tag tag-green">新加坡</span>
          <span class="tag tag-green">15 年以上经验</span>
          <span class="tag tag-green">CEA 注册</span>
        </div>
      </div>
    </div>

    <!-- Capability comparison -->
    <div class="grid md:grid-cols-2 gap-6">
      <div class="reveal card p-7">
        <div class="flex items-center gap-3 mb-5 pb-4 border-b border-white/5">
          <span class="dot dot-blue"></span>
          <h3 class="text-base font-bold tracking-tight">Kayriel AI · 核心能力</h3>
        </div>
        <div class="space-y-1">
          <div class="cap-item">
            <div class="cap-icon blue">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">即时响应</div>
              <div class="text-xs text-gray-500 leading-relaxed">24 小时秒回，不眠不休，第一时间回应您的咨询</div>
            </div>
          </div>
          <div class="cap-item">
            <div class="cap-icon blue">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M2 12h20M12 2a15.3 15.3 0 010 20M12 2a15.3 15.3 0 000 20"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">多语言支持</div>
              <div class="text-xs text-gray-500 leading-relaxed">中、英、日、韩等多语种自由切换</div>
            </div>
          </div>
          <div class="cap-item">
            <div class="cap-icon blue">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3v18h18"/><path d="M7 16l4-4 4 2 5-7"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">市场数据分析</div>
              <div class="text-xs text-gray-500 leading-relaxed">实时交易数据、价格走势、区域对比一目了然</div>
            </div>
          </div>
          <div class="cap-item">
            <div class="cap-icon blue">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">智能匹配</div>
              <div class="text-xs text-gray-500 leading-relaxed">根据预算、用途、位置精准筛选房源</div>
            </div>
          </div>
        </div>
      </div>

      <div class="reveal card p-7">
        <div class="flex items-center gap-3 mb-5 pb-4 border-b border-white/5">
          <span class="dot dot-green"></span>
          <h3 class="text-base font-bold tracking-tight">Terry Yuen · 核心能力</h3>
        </div>
        <div class="space-y-1">
          <div class="cap-item">
            <div class="cap-icon green">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2L2 7l10 5 10-5-10-5z"/><path d="M2 17l10 5 10-5M2 12l10 5 10-5"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">15 年实战经验</div>
              <div class="text-xs text-gray-500 leading-relaxed">住宅、商业、工业全物业类型深度实操</div>
            </div>
          </div>
          <div class="cap-item">
            <div class="cap-icon green">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 5h12M9 3v2m5.5 8c-1.5-3 1-9 1-9s4 4 1.5 9c-1.5 2.5-3 3-3 3M14 19h7M14 12h7"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">中文全流程服务</div>
              <div class="text-xs text-gray-500 leading-relaxed">合同翻译、谈判、签约全程中文对接</div>
            </div>
          </div>
          <div class="cap-item">
            <div class="cap-icon green">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 00-3-3.87M16 3.13a4 4 0 010 7.75"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">实地陪同看房</div>
              <div class="text-xs text-gray-500 leading-relaxed">中文讲解细节与优劣势，避免信息差</div>
            </div>
          </div>
          <div class="cap-item">
            <div class="cap-icon green">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/></svg>
            </div>
            <div class="flex-1">
              <div class="font-semibold text-sm mb-0.5">法律与流程把控</div>
              <div class="text-xs text-gray-500 leading-relaxed">熟悉新加坡购房法规，把控每个环节</div>
            </div>
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
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">投资新加坡</div>
      <h2 class="reveal text-4xl md:text-5xl font-black mb-4 tracking-tight">为什么中国买家选择新加坡？</h2>
      <p class="reveal text-gray-400 text-lg font-light mb-12">全球最具竞争力的投资目的地之一</p>
      
      <!-- Stats Section -->
      <div class="reveal grid grid-cols-3 gap-8 max-w-3xl mx-auto mb-16 pb-16 border-b border-white/5">
        <div class="text-center">
          <div class="text-4xl md:text-6xl font-black text-white stat-number" data-target="15">0</div>
          <div class="text-gray-500 text-[11px] uppercase tracking-[0.2em] mt-2">年专业经验</div>
        </div>
        <div class="text-center">
          <div class="text-4xl md:text-6xl font-black text-white"><span class="stat-number" data-target="200">0</span><span class="text-3xl md:text-5xl">+</span></div>
          <div class="text-gray-500 text-[11px] uppercase tracking-[0.2em] mt-2">成交案例</div>
        </div>
        <div class="text-center">
          <div class="text-4xl md:text-6xl font-black text-white"><span class="text-3xl md:text-5xl align-top">$</span><span class="stat-number" data-target="500">0</span><span class="text-3xl md:text-5xl">M</span><span class="text-3xl md:text-5xl">+</span></div>
          <div class="text-gray-500 text-[11px] uppercase tracking-[0.2em] mt-2">交易额 (SGD)</div>
        </div>
      </div>
    </div>

    <div class="grid md:grid-cols-3 gap-5">
      <div class="reveal card p-7">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5 text-2xl" style="background:rgba(59,130,246,0.08)">🏛️</div>
        <h3 class="text-lg font-bold mb-2.5 tracking-tight">政治稳定</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">全球最安全的国家之一，法治健全，产权受法律严格保护，无政策突变风险。</p>
      </div>
      <div class="reveal card p-7">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5 text-2xl" style="background:rgba(7,193,96,0.08)">💰</div>
        <h3 class="text-lg font-bold mb-2.5 tracking-tight">税务优势</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">无资本利得税，无遗产税，企业税仅 17%，海外收入不征税。</p>
      </div>
      <div class="reveal card p-7">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5 text-2xl" style="background:rgba(251,191,36,0.08)">📈</div>
        <h3 class="text-lg font-bold mb-2.5 tracking-tight">资产保值</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">新加坡元与一篮子货币挂钩，房地产长期稳健增值，抗通胀能力强。</p>
      </div>
      <div class="reveal card p-7">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5 text-2xl" style="background:rgba(168,85,247,0.08)">🎓</div>
        <h3 class="text-lg font-bold mb-2.5 tracking-tight">教育资源</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">国际学校林立，双语环境，NUS/NTU 世界排名顶尖，适合子女教育规划。</p>
      </div>
      <div class="reveal card p-7">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5 text-2xl" style="background:rgba(59,130,246,0.08)">✈️</div>
        <h3 class="text-lg font-bold mb-2.5 tracking-tight">地理枢纽</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">4 小时飞行圈覆盖中国主要城市，方便实地考察和物业管理。</p>
      </div>
      <div class="reveal card p-7">
        <div class="w-12 h-12 rounded-xl flex items-center justify-center mb-5 text-2xl" style="background:rgba(7,193,96,0.08)">🏠</div>
        <h3 class="text-lg font-bold mb-2.5 tracking-tight">永久产权</h3>
        <p class="text-sm text-gray-400 leading-[1.75]">部分物业可获永久地契，无到期续约风险，资产可世代传承。</p>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ BUYER GUIDE ============ -->
<section id="buyer-guide" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">购房流程</div>
      <h2 class="reveal text-4xl md:text-5xl font-black mb-4 tracking-tight">海外买家购房流程</h2>
      <p class="reveal text-gray-400 text-lg font-light">四步完成新加坡房产投资</p>
    </div>

    <div class="relative">
      <div class="hidden md:block absolute top-[26px] left-[12.5%] right-[12.5%] h-px" style="background:linear-gradient(90deg,transparent 0%,rgba(59,130,246,0.4) 20%,rgba(59,130,246,0.4) 80%,transparent 100%)"></div>

      <div class="grid md:grid-cols-4 gap-10 md:gap-6 relative">
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">1</div>
          <h3 class="font-bold text-base mb-2 tracking-tight">免费咨询</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">微信 / 电话沟通需求，Terry 提供初步方案和预算规划。</p>
        </div>
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">2</div>
          <h3 class="font-bold text-base mb-2 tracking-tight">筛选房源</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">根据预算、用途、位置精准匹配，发送详细资料。</p>
        </div>
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">3</div>
          <h3 class="font-bold text-base mb-2 tracking-tight">实地看房</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">Terry 全程中文陪同，或视频连线远程看房。</p>
        </div>
        <div class="reveal step-item text-center">
          <div class="step-circle mx-auto mb-5">4</div>
          <h3 class="font-bold text-base mb-2 tracking-tight">签约交房</h3>
          <p class="text-sm text-gray-400 leading-[1.7]">协助律师审核合同，完成交易，售后跟进。</p>
        </div>
      </div>
    </div>

    <div class="reveal highlight-box mt-14 max-w-4xl mx-auto">
      <div class="flex items-start gap-3">
        <span class="text-xl leading-none mt-0.5">💡</span>
        <p class="text-sm leading-[1.85]" style="color:rgba(187,247,208,0.95)">
          <strong class="text-green-300">重点提示：</strong>工业 / 商业物业买家免付额外买家印花税 (ABSD)，住宅物业海外买家 ABSD 为 60%。具体税费请咨询专业顾问。
        </p>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ PROPERTIES ============ -->
<section id="properties" class="py-28 md:py-36 px-6">
  <div class="max-w-6xl mx-auto">
    <div class="text-center mb-14">
      <div class="reveal eyebrow mb-4">精选推荐</div>
      <h2 class="reveal text-4xl md:text-5xl font-black tracking-tight">精选房源</h2>
    </div>

    <div class="reveal card overflow-hidden">
      <div class="grid md:grid-cols-2 gap-0">
        <div class="property-photo-wrap relative">
          <img src="https://z-cdn-media.chatglm.cn/files/c3b64978-4fa1-4a3b-95e5-484aa5b0ffd5.jpg?auth_key=1884375375-e8e21f096c8349ec800b9adfae776f7a-0-786abed475ed23ed80b35d84202b7768" alt="CT Gold 麦弗逊食阁 外观实拍" loading="lazy">
          <div class="absolute top-5 left-5 flex flex-wrap gap-2 z-10">
            <span class="tag tag-green">永久产权</span>
            <span class="tag tag-amber">最后一个单位</span>
            <span class="tag tag-blue">免 ABSD</span>
          </div>
        </div>
        <div class="p-8 md:p-10 flex flex-col justify-center">
          <div class="text-xs text-gray-500 tracking-[0.2em] uppercase mb-3">Macpherson · B1 Industrial</div>
          <h3 class="text-3xl font-black mb-4 leading-[1.15] tracking-tight">CT Gold 麦弗逊食阁 #01-01</h3>
          <p class="text-gray-400 leading-[1.8] mb-7 text-[0.95rem]">
            2,293 平方呎（213 平方米），5 个摊位，88 座位，由 Chiu Teng Group 开发，新加坡罕见永久地契 B1 工业食阁。
          </p>
          <div class="flex items-baseline gap-3 mb-7 pb-7 border-b border-white/5">
            <span class="text-xs text-gray-500 uppercase tracking-[0.15em]">售价</span>
            <span class="text-3xl font-black" style="color:#4ade80">SGD $6,870,635</span>
          </div>
          <a href="https://cn.ct-gold.terryyuen.com" target="_blank" rel="noopener" class="btn btn-wechat self-start">
            查看详情 →
          </a>
        </div>
      </div>
    </div>

    <p class="reveal text-center text-sm text-gray-500 mt-8">
      更多优质房源持续更新中，欢迎微信咨询获取最新房源列表
    </p>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ CHINA SERVICE ============ -->
<section id="china-service" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">中国客户专属</div>
      <h2 class="reveal text-4xl md:text-5xl font-black mb-4 tracking-tight">中国客户专属服务</h2>
      <p class="reveal text-gray-400 text-lg font-light">我们理解中国买家的特殊需求</p>
    </div>

    <div class="grid md:grid-cols-3 gap-5">
      <div class="reveal card p-8" style="border-color:rgba(7,193,96,0.18)">
        <div class="w-14 h-14 rounded-xl flex items-center justify-center mb-6 text-3xl" style="background:rgba(7,193,96,0.08)">🇨🇳</div>
        <h3 class="text-xl font-bold mb-5 tracking-tight">中文全程服务</h3>
        <ul class="space-y-3 text-sm text-gray-400">
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>微信沟通无障碍</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>合同文件中文翻译</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>中文陪同实地看房</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>购房全程中文对接</span></li>
        </ul>
      </div>
      <div class="reveal card p-8" style="border-color:rgba(7,193,96,0.18)">
        <div class="w-14 h-14 rounded-xl flex items-center justify-center mb-6 text-3xl" style="background:rgba(7,193,96,0.08)">💳</div>
        <h3 class="text-xl font-bold mb-5 tracking-tight">资金转移指导</h3>
        <ul class="space-y-3 text-sm text-gray-400">
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>跨境汇款流程说明</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>新加坡银行开户协助</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>资金合规指导</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>外汇注意事项</span></li>
        </ul>
      </div>
      <div class="reveal card p-8" style="border-color:rgba(7,193,96,0.18)">
        <div class="w-14 h-14 rounded-xl flex items-center justify-center mb-6 text-3xl" style="background:rgba(7,193,96,0.08)">🏠</div>
        <h3 class="text-xl font-bold mb-5 tracking-tight">售后管理支持</h3>
        <ul class="space-y-3 text-sm text-gray-400">
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>租房管理服务推荐</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>物业维护协调</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>后续出售咨询</span></li>
          <li class="flex items-start gap-2.5"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="mt-0.5 flex-shrink-0"><polyline points="20 6 9 17 4 12"/></svg><span>长期投资组合建议</span></li>
        </ul>
      </div>
    </div>
  </div>
</section>

<div class="section-line max-w-7xl mx-auto"></div>

<!-- ============ TESTIMONIALS ============ -->
<section id="testimonials" class="py-28 md:py-36 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="text-center mb-16">
      <div class="reveal eyebrow mb-4">成功案例</div>
      <h2 class="reveal text-4xl md:text-5xl font-black mb-4 tracking-tight">客户的信任是我们的动力</h2>
      <p class="reveal text-gray-400 text-lg font-light">来自中国买家的真实反馈</p>
    </div>

    <div class="grid md:grid-cols-3 gap-5">
      <div class="reveal card p-8">
        <svg width="36" height="36" viewBox="0 0 24 24" fill="rgba(59,130,246,0.2)" class="mb-5"><path d="M9.983 3v7.391c0 5.704-3.731 9.57-8.983 10.609l-.995-2.151c2.432-.917 3.995-3.638 3.995-5.849h-4v-10h9.983zm14.017 0v7.391c0 5.704-3.748 9.571-9 10.609l-.996-2.151c2.433-.917 3.996-3.638 3.996-5.849h-3.983v-10h9.983z"/></svg>
        <p class="text-gray-300 leading-[1.8] mb-6 text-[0.95rem]">
          Terry 非常专业，全程中文陪同看房，帮我们避开了很多坑。从选房到交房只用了不到一个月，太高效了！
        </p>
        <div class="flex items-center gap-3 pt-4 border-t border-white/5">
          <div class="w-10 h-10 rounded-full flex items-center justify-center font-bold text-white text-sm" style="background:linear-gradient(135deg,#3b82f6,#1d4ed8)">张</div>
          <div>
            <div class="text-sm font-bold">张先生</div>
            <div class="text-xs text-gray-500">上海 · 购入乌节路公寓</div>
          </div>
        </div>
      </div>

      <div class="reveal card p-8">
        <svg width="36" height="36" viewBox="0 0 24 24" fill="rgba(7,193,96,0.2)" class="mb-5"><path d="M9.983 3v7.391c0 5.704-3.731 9.57-8.983 10.609l-.995-2.151c2.432-.917 3.995-3.638 3.995-5.849h-4v-10h9.983zm14.017 0v7.391c0 5.704-3.748 9.571-9 10.609l-.996-2.151c2.433-.917 3.996-3.638 3.996-5.849h-3.983v-10h9.983z"/></svg>
        <p class="text-gray-300 leading-[1.8] mb-6 text-[0.95rem]">
          我是为了孩子上学买的房，Terry 不仅帮我选了学区，还推荐了靠谱的律师和银行，省了无数心。
        </p>
        <div class="flex items-center gap-3 pt-4 border-t border-white/5">
          <div class="w-10 h-10 rounded-full flex items-center justify-center font-bold text-white text-sm" style="background:linear-gradient(135deg,#07C160,#05a34d)">李</div>
          <div>
            <div class="text-sm font-bold">李女士</div>
            <div class="text-xs text-gray-500">北京 · 购入武吉知马别墅</div>
          </div>
        </div>
      </div>

      <div class="reveal card p-8">
        <svg width="36" height="36" viewBox="0 0 24 24" fill="rgba(251,191,36,0.2)" class="mb-5"><path d="M9.983 3v7.391c0 5.704-3.731 9.57-8.983 10.609l-.995-2.151c2.432-.917 3.995-3.638 3.995-5.849h-4v-10h9.983zm14.017 0v7.391c0 5.704-3.748 9.571-9 10.609l-.996-2.151c2.433-.917 3.996-3.638 3.996-5.849h-3.983v-10h9.983z"/></svg>
        <p class="text-gray-300 leading-[1.8] mb-6 text-[0.95rem]">
          投资新加坡工业物业真的是明智之举，免了高昂的印花税，租金回报也很稳定。Terry 的专业建议非常关键。
        </p>
        <div class="flex items-center gap-3 pt-4 border-t border-white/5">
          <div class="w-10 h-10 rounded-full flex items-center justify-center font-bold text-white text-sm" style="background:linear-gradient(135deg,#fbbf24,#d97706)">王</div>
          <div>
            <div class="text-sm font-bold">王先生</div>
            <div class="text-xs text-gray-500">深圳 · 购入 CT Gold 食阁单位</div>
          </div>
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
      <div class="reveal eyebrow mb-4">联系我们</div>
      <h2 class="reveal text-4xl md:text-5xl font-black mb-4 tracking-tight">三种方式，随时联系</h2>
      <p class="reveal text-gray-400 text-lg font-light">选择您最方便的方式</p>
    </div>

    <div class="grid md:grid-cols-3 gap-5">
      <button onclick="openQR()" class="reveal card p-9 text-center transition-all cursor-pointer" style="border-color:rgba(7,193,96,0.2)">
        <div class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-5" style="background:rgba(7,193,96,0.12)">
          <svg width="32" height="32" viewBox="0 0 24 24" fill="#07C160"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 0 1 .213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 0 0 .167-.054l1.903-1.114a.864.864 0 0 1 .717-.098 10.16 10.16 0 0 0 2.837.403c.276 0 .543-.027.811-.05-.857-2.578.157-4.972 1.932-6.446 1.703-1.415 3.882-1.98 5.853-1.838-.576-3.583-4.196-6.348-8.596-6.348zM5.785 5.991c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178A1.17 1.17 0 0 1 4.623 7.17c0-.651.52-1.18 1.162-1.18zm5.813 0c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178 1.17 1.17 0 0 1-1.162-1.178c0-.651.52-1.18 1.162-1.18zm5.34 2.867c-1.797-.052-3.746.512-5.28 1.786-1.72 1.428-2.687 3.72-1.78 6.22.942 2.453 3.666 4.229 6.884 4.229.826 0 1.622-.12 2.361-.336a.722.722 0 0 1 .598.082l1.584.926a.272.272 0 0 1 .14.047c.134 0 .24-.111.24-.247 0-.06-.023-.12-.038-.177l-.327-1.233a.582.582 0 0 1 .19-.555c1.633-1.121 2.61-2.799 2.61-4.659 0-3.276-3.054-5.992-6.844-6.083zm-2.094 2.99c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983zm4.844 0c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983z"/></svg>
        </div>
        <h3 class="text-xl font-black mb-1.5 tracking-tight">微信</h3>
        <p class="text-sm text-gray-400 mb-3">扫码加我好友</p>
        <p class="text-sm font-bold text-green-400">好汉哥</p>
        <div class="mt-5 text-xs text-gray-500">点击弹出二维码</div>
      </button>

      <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="reveal card p-9 text-center transition-all" style="border-color:rgba(37,211,102,0.2)">
        <div class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-5" style="background:rgba(37,211,102,0.12)">
          <svg width="32" height="32" viewBox="0 0 24 24" fill="#25D366"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.71.306 1.263.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
        </div>
        <h3 class="text-xl font-black mb-1.5 tracking-tight">WhatsApp</h3>
        <p class="text-sm text-gray-400 mb-3">即时消息沟通</p>
        <p class="text-sm font-bold" style="color:#25D366">+65 8804 4132</p>
        <div class="mt-5 text-xs text-gray-500">需科学上网</div>
      </a>

      <a href="tel:+6588044132" class="reveal card p-9 text-center transition-all" style="border-color:rgba(59,130,246,0.2)">
        <div class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-5" style="background:rgba(59,130,246,0.12)">
          <svg width="32" height="32" viewBox="0 0 24 24" fill="#3b82f6"><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/></svg>
        </div>
        <h3 class="text-xl font-black mb-1.5 tracking-tight">电话</h3>
        <p class="text-sm text-gray-400 mb-3">直接电话咨询</p>
        <p class="text-sm font-bold text-blue-400">+65 8804 4132</p>
        <div class="mt-5 text-xs text-gray-500">点击立即拨打</div>
      </a>
    </div>
  </div>
</section>

<!-- ============ FOOTER ============ -->
<footer class="border-t border-white/5 py-12 px-6">
  <div class="max-w-7xl mx-auto">
    <div class="space-y-5 text-center">
      <div class="text-gray-200 font-bold text-base">Terry Realty · 新加坡房产 · CEA 注册号 R030418F</div>
      <div class="flex flex-wrap justify-center gap-x-7 gap-y-2 text-xs text-gray-500">
        <a href="#" class="hover:text-white transition-colors">首页</a>
        <a href="https://cn.ct-gold.terryyuen.com" class="hover:text-white transition-colors">精选房源</a>
        <a href="https://terryyuen.com" class="hover:text-white transition-colors">English →</a>
      </div>
      <div class="flex flex-wrap justify-center gap-x-7 gap-y-2 text-xs text-gray-500">
        <span>微信：好汉哥</span>
        <span class="text-gray-700">|</span>
        <a href="tel:+6588044132" class="hover:text-white transition-colors">+65 8804 4132</a>
        <span class="text-gray-700">|</span>
        <a href="mailto:tgy0660@yahoo.com.sg" class="hover:text-white transition-colors">tgy0660@yahoo.com.sg</a>
      </div>
      <div class="pt-6 border-t border-white/5 max-w-3xl mx-auto">
        <div class="text-xs text-gray-600 mb-2">© 2024 Terry Realty. 版权所有。</div>
        <div class="text-[11px] text-gray-700 leading-relaxed max-w-2xl mx-auto">
          免责声明：本页面为营销材料，不构成法律建议。在做出任何投资决定之前，请咨询您的法律和财务顾问。
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- ============ FLOATING BUTTONS ============ -->
<div class="float-container" id="floatContainer">
  <a href="tel:+6588044132" class="float-btn float-phone" title="电话咨询" aria-label="电话咨询">
    <svg width="22" height="22" viewBox="0 0 24 24" fill="currentColor"><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/></svg>
  </a>
  <a href="https://wa.me/6588044132" target="_blank" rel="noopener" class="float-btn float-whatsapp" title="WhatsApp" aria-label="WhatsApp">
    <svg width="22" height="22" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.71.306 1.263.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
  </a>
  <button onclick="openQR()" class="float-btn float-wechat" title="微信咨询" aria-label="微信咨询">
    <svg width="22" height="22" viewBox="0 0 24 24" fill="currentColor"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 0 1 .213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 0 0 .167-.054l1.903-1.114a.864.864 0 0 1 .717-.098 10.16 10.16 0 0 0 2.837.403c.276 0 .543-.027.811-.05-.857-2.578.157-4.972 1.932-6.446 1.703-1.415 3.882-1.98 5.853-1.838-.576-3.583-4.196-6.348-8.596-6.348zM5.785 5.991c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178A1.17 1.17 0 0 1 4.623 7.17c0-.651.52-1.18 1.162-1.18zm5.813 0c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178 1.17 1.17 0 0 1-1.162-1.178c0-.651.52-1.18 1.162-1.18zm5.34 2.867c-1.797-.052-3.746.512-5.28 1.786-1.72 1.428-2.687 3.72-1.78 6.22.942 2.453 3.666 4.229 6.884 4.229.826 0 1.622-.12 2.361-.336a.722.722 0 0 1 .598.082l1.584.926a.272.272 0 0 1 .14.047c.134 0 .24-.111.24-.247 0-.06-.023-.12-.038-.177l-.327-1.233a.582.582 0 0 1 .19-.555c1.633-1.121 2.61-2.799 2.61-4.659 0-3.276-3.054-5.992-6.844-6.083zm-2.094 2.99c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983zm4.844 0c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983z"/></svg>
  </button>
</div>

<!-- ============ QR MODAL ============ -->
<div class="qr-backdrop" id="qrBackdrop" onclick="closeQRBackdrop(event)">
  <div class="qr-modal">
    <button onclick="closeQR()" class="absolute top-3.5 right-3.5 text-gray-500 hover:text-white transition-colors" aria-label="关闭">
      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M18 6L6 18M6 6l12 12"/></svg>
    </button>
    <div class="mb-5">
      <div class="w-14 h-14 rounded-2xl flex items-center justify-center mx-auto" style="background:rgba(7,193,96,0.15)">
        <svg width="28" height="28" viewBox="0 0 24 24" fill="#07C160"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 0 1 .213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 0 0 .167-.054l1.903-1.114a.864.864 0 0 1 .717-.098 10.16 10.16 0 0 0 2.837.403c.276 0 .543-.027.811-.05-.857-2.578.157-4.972 1.932-6.446 1.703-1.415 3.882-1.98 5.853-1.838-.576-3.583-4.196-6.348-8.596-6.348zM5.785 5.991c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178A1.17 1.17 0 0 1 4.623 7.17c0-.651.52-1.18 1.162-1.18zm5.813 0c.642 0 1.162.529 1.162 1.18a1.17 1.17 0 0 1-1.162 1.178 1.17 1.17 0 0 1-1.162-1.178c0-.651.52-1.18 1.162-1.18zm5.34 2.867c-1.797-.052-3.746.512-5.28 1.786-1.72 1.428-2.687 3.72-1.78 6.22.942 2.453 3.666 4.229 6.884 4.229.826 0 1.622-.12 2.361-.336a.722.722 0 0 1 .598.082l1.584.926a.272.272 0 0 1 .14.047c.134 0 .24-.111.24-.247 0-.06-.023-.12-.038-.177l-.327-1.233a.582.582 0 0 1 .19-.555c1.633-1.121 2.61-2.799 2.61-4.659 0-3.276-3.054-5.992-6.844-6.083zm-2.094 2.99c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983zm4.844 0c.535 0 .969.44.969.983 0 .544-.434.984-.969.984-.535 0-.969-.44-.969-.984 0-.544.434-.983.969-.983z"/></svg>
      </div>
    </div>
    <h3 class="text-xl font-black mb-1 tracking-tight">微信扫码加好友</h3>
    <p class="text-sm text-gray-400 mb-5">微信号：<span class="text-green-400 font-semibold">好汉哥</span></p>
    <div class="bg-white p-3 rounded-xl mb-4">
      <img src="https://z-cdn-media.chatglm.cn/files/7f60f527-7ad7-46af-9b85-5ce0dda3e910.jpg?auth_key=1884037889-3c58d424ccfb4d24addf844fb93c251e-0-388cf89981f82ac5c9b538f0f98330cc" alt="Terry 微信二维码 好汉哥" class="w-full h-auto block">
    </div>
    <p class="text-xs text-gray-500 leading-relaxed">长按或扫描二维码即可添加微信<br><span class="text-gray-600">若在微信内打不开，请截图后使用扫一扫从相册选取</span></p>
  </div>
</div>

<script>
// ============ QR MODAL ============
function openQR(){
  var bd = document.getElementById('qrBackdrop');
  if(bd){ bd.classList.add('active'); }
  document.body.style.overflow = 'hidden';
}
function closeQR(){
  var bd = document.getElementById('qrBackdrop');
  if(bd){ bd.classList.remove('active'); }
  document.body.style.overflow = '';
}
function closeQRBackdrop(e){
  if(e && e.target && e.target.id === 'qrBackdrop'){ closeQR(); }
}
document.addEventListener('keydown', function(e){
  if(e && e.key === 'Escape'){ closeQR(); }
});

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
