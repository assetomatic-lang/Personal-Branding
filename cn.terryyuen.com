   <!DOCTYPE html>
<html lang="zh-CN" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>认识我们的团队 | Terry Realty 新加坡房产</title>
    <meta name="description" content="Terry Yuen — 15年以上新加坡房地产经验，CEA注册顾问。Kayriel AI — 24小时智能房产助手。真人专业+AI效率，为您打造无缝购房体验。">
    <meta property="og:title" content="认识我们的团队 | Terry Realty">
    <meta property="og:description" content="真人专业服务，AI智能辅助 — 您的新加坡房产之旅从这里开始">
    <meta property="og:image" content="https://z-cdn-media.chatglm.cn/files/d71e9042-d4b9-4ec0-a783-e5b30d18f797.png?auth_key=1884037889-d23e60fe270f425a871274b682f070cc-0-72ea1832119d7dffd2d311a443bf8f99">
    <meta property="og:type" content="website">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * { font-family: 'Inter', 'PingFang SC', 'Microsoft YaHei', 'Noto Sans SC', sans-serif; }

        .hero-video-wrap {
            position: relative;
            width: 100%;
            height: 100vh;
            min-height: 600px;
            overflow: hidden;
        }
        .hero-video-wrap video {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .hero-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(
                to bottom,
                rgba(5, 5, 5, 0.5) 0%,
                rgba(5, 5, 5, 0.3) 40%,
                rgba(5, 5, 5, 0.6) 70%,
                rgba(5, 5, 5, 1) 100%
            );
            z-index: 2;
        }
        .hero-content {
            position: relative;
            z-index: 3;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding-bottom: 5rem;
        }
        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.375rem 1rem;
            background: rgba(59, 130, 246, 0.15);
            border: 1px solid rgba(59, 130, 246, 0.25);
            border-radius: 2rem;
            font-size: 0.75rem;
            font-weight: 500;
            color: #60a5fa;
            width: fit-content;
            margin-bottom: 1.5rem;
            opacity: 0;
            animation: fadeInUp 0.8s 0.3s cubic-bezier(0.4, 0, 0.2, 1) forwards;
        }
        .hero-title {
            font-size: clamp(2rem, 5vw, 3.75rem);
            font-weight: 500;
            line-height: 1.1;
            letter-spacing: -0.02em;
            margin-bottom: 1rem;
            opacity: 0;
            animation: fadeInUp 0.8s 0.5s cubic-bezier(0.4, 0, 0.2, 1) forwards;
        }
        .hero-sub {
            font-size: 1.125rem;
            color: #a3a3a3;
            max-width: 36rem;
            line-height: 1.7;
            margin-bottom: 2rem;
            opacity: 0;
            animation: fadeInUp 0.8s 0.7s cubic-bezier(0.4, 0, 0.2, 1) forwards;
        }
        .hero-ctas {
            display: flex;
            flex-wrap: wrap;
            gap: 0.75rem;
            opacity: 0;
            animation: fadeInUp 0.8s 0.9s cubic-bezier(0.4, 0, 0.2, 1) forwards;
        }

        .scroll-hint {
            position: absolute;
            bottom: 1.5rem;
            left: 50%;
            transform: translateX(-50%);
            z-index: 3;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 0.5rem;
            opacity: 0;
            animation: fadeInUp 0.8s 1.2s cubic-bezier(0.4, 0, 0.2, 1) forwards;
        }
        @keyframes scrollBounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(6px); }
        }
        .scroll-hint svg { animation: scrollBounce 2s ease-in-out infinite; }

        .profile-card {
            position: relative;
            overflow: hidden;
            border-radius: 1rem;
            transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        .profile-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }
        .card-human:hover {
            border-color: rgba(74, 222, 128, 0.3);
            box-shadow: 0 25px 50px -12px rgba(74, 222, 128, 0.08);
        }
        .card-ai { border-color: rgba(59, 130, 246, 0.15); }
        .card-ai:hover {
            border-color: rgba(59, 130, 246, 0.35);
            box-shadow: 0 25px 50px -12px rgba(59, 130, 246, 0.1);
        }
        .profile-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .profile-card:hover .profile-image { transform: scale(1.03); }
        .card-info {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 2rem;
            background: linear-gradient(to top, rgba(0, 0, 0, 0.9) 0%, transparent 100%);
        }

        .video-slot {
            position: absolute;
            inset: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity 0.5s ease;
            z-index: 10;
            pointer-events: none;
        }
        .video-slot.active { opacity: 1; pointer-events: all; }
        .video-slot-inner {
            width: 85%;
            height: 85%;
            border-radius: 0.75rem;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5);
            background: #171717;
        }
        .video-slot-inner video { width: 100%; height: 100%; object-fit: cover; }

        @keyframes aiPulse { 0%, 100% { opacity: 1; } 50% { opacity: 0.5; } }
        .ai-pulse { animation: aiPulse 2s ease-in-out infinite; }

        @keyframes scanLine { 0% { top: -2px; } 100% { top: 100%; } }
        .card-ai::after {
            content: '';
            position: absolute;
            left: 0; right: 0;
            height: 2px;
            background: linear-gradient(90deg, transparent, rgba(59, 130, 246, 0.3), transparent);
            z-index: 4;
            opacity: 0;
        }
        .card-ai:hover::after { opacity: 1; animation: scanLine 2.5s linear infinite; }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .animate-in { animation: fadeInUp 0.8s cubic-bezier(0.4, 0, 0.2, 1) forwards; }
        .anim-d1 { animation-delay: 0.15s; opacity: 0; }
        .anim-d2 { animation-delay: 0.3s; opacity: 0; }
        .anim-d3 { animation-delay: 0.45s; opacity: 0; }

        .float-actions {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            z-index: 50;
            display: flex;
            flex-direction: column;
            gap: 0.75rem;
            align-items: flex-end;
        }
        .float-btn {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            padding: 0.875rem 1.25rem;
            border-radius: 3rem;
            font-size: 0.875rem;
            font-weight: 600;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            cursor: pointer;
            text-decoration: none;
            color: white;
            border: none;
        }
        .float-btn .btn-icon {
            width: 2.25rem;
            height: 2.25rem;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            background: rgba(255,255,255,0.2);
        }
        .float-btn:hover { transform: translateY(-3px); }
        .float-btn .btn-label { white-space: nowrap; }
        .float-whatsapp {
            background: rgba(37, 211, 102, 0.9);
            box-shadow: 0 8px 25px rgba(37, 211, 102, 0.3);
        }
        .float-whatsapp:hover { background: rgba(37, 211, 102, 1); box-shadow: 0 12px 35px rgba(37, 211, 102, 0.4); }
        .float-wechat {
            background: rgba(7, 193, 96, 0.9);
            box-shadow: 0 8px 25px rgba(7, 193, 96, 0.3);
        }
        .float-wechat:hover { background: rgba(7, 193, 96, 1); box-shadow: 0 12px 35px rgba(7, 193, 96, 0.4); }
        .float-phone {
            background: rgba(59, 130, 246, 0.9);
            box-shadow: 0 8px 25px rgba(59, 130, 246, 0.3);
        }
        .float-phone:hover { background: rgba(59, 130, 246, 1); box-shadow: 0 12px 35px rgba(59, 130, 246, 0.4); }
        @keyframes phoneRing {
            0% { transform: rotate(0deg); }
            10% { transform: rotate(15deg); }
            20% { transform: rotate(-15deg); }
            30% { transform: rotate(10deg); }
            40% { transform: rotate(-10deg); }
            50% { transform: rotate(0deg); }
            100% { transform: rotate(0deg); }
        }
        .float-phone:hover .btn-icon svg { animation: phoneRing 0.8s ease; }

        .qr-backdrop {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.75);
            backdrop-filter: blur(8px);
            z-index: 100;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s ease;
        }
        .qr-backdrop.active { opacity: 1; pointer-events: all; }
        .qr-modal {
            background: #1A1D21;
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 1.5rem;
            padding: 2.5rem 2rem;
            max-width: 380px;
            width: 90%;
            text-align: center;
            position: relative;
            transform: scale(0.9) translateY(20px);
            transition: transform 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .qr-backdrop.active .qr-modal { transform: scale(1) translateY(0); }
        .qr-frame {
            width: 220px;
            height: 220px;
            margin: 1.5rem auto;
            background: white;
            border-radius: 1rem;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 40px rgba(7, 193, 96, 0.1);
        }
        .qr-frame img { width: 100%; height: 100%; object-fit: contain; border-radius: 0.5rem; }

        .reveal {
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.8s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .reveal.visible { opacity: 1; transform: translateY(0); }

        @media (max-width: 768px) {
            .float-btn .btn-label { display: none; }
            .float-btn { padding: 0; border-radius: 50%; }
            .float-btn .btn-icon { width: 3rem; height: 3rem; }
            .hero-content { padding-bottom: 4rem; }
        }
    </style>
</head>
<body class="bg-[#050505] text-white">

    <!-- 导航栏 -->
    <nav class="fixed top-0 left-0 right-0 z-50 border-b border-white/10" style="backdrop-filter: blur(24px); background: rgba(5, 5, 5, 0.8);">
        <div class="max-w-7xl mx-auto px-6 h-16 flex items-center justify-between">
            <a href="https://cn.terryyuen.com" class="flex items-center gap-3">
                <div class="w-8 h-8 bg-blue-500 rounded-lg flex items-center justify-center font-semibold text-sm">TR</div>
                <span class="font-semibold text-lg">Terry Realty</span>
            </a>
            <div class="hidden md:flex items-center gap-8 text-sm text-neutral-400">
                <a href="https://cn.terryyuen.com" class="hover:text-white transition-colors">首页</a>
                <a href="https://cn.ct-gold.terryyuen.com" class="hover:text-white transition-colors">精选房源</a>
                <a href="#team" class="text-white">我们的团队</a>
                <a href="#connect" class="hover:text-white transition-colors">联系咨询</a>
            </div>
            <div class="flex items-center gap-3">
                <a href="tel:+6588044132" class="md:hidden text-sm text-green-400 font-medium flex items-center gap-1.5">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path></svg>
                    致电
                </a>
                <button onclick="openQRModal()" class="text-sm text-green-400 font-medium flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-green-500/10 border border-green-500/20">
                    <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 01.213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 00.167-.054l1.903-1.114a.864.864 0 01.717-.098 10.16 10.16 0 002.837.403c.276 0 .543-.027.811-.05a6.42 6.42 0 01-.253-1.815c0-3.544 3.27-6.42 7.303-6.42.262 0 .517.022.773.042C16.794 4.308 13.084 2.188 8.691 2.188zm-2.87 4.401a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm5.827 0a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm4.866 3.628c-3.508 0-6.353 2.395-6.353 5.35 0 2.956 2.845 5.35 6.353 5.35.71 0 1.393-.108 2.04-.307a.699.699 0 01.578.08l1.527.893a.262.262 0 00.134.043.237.237 0 00.233-.237c0-.058-.023-.115-.039-.171l-.313-1.186a.477.477 0 01.171-.534C22.927 18.612 24 16.88 24 15.567c0-2.955-2.845-5.35-6.353-5.35h-.133zm-2.327 3.139a.832.832 0 110 1.664.832.832 0 010-1.664zm4.66 0a.832.832 0 110 1.664.832.832 0 010-1.664z"/></svg>
                    微信咨询
                </button>
            </div>
        </div>
    </nav>

    <!-- ============================================ -->
    <!-- 主视觉 — 团队视频                            -->
    <!-- ============================================ -->
    <section class="hero-video-wrap">
        <video
            autoplay
            muted
            loop
            playsinline
            poster="https://z-cdn-media.chatglm.cn/files/d71e9042-d4b9-4ec0-a783-e5b30d18f797.png?auth_key=1884037889-d23e60fe270f425a871274b682f070cc-0-72ea1832119d7dffd2d311a443bf8f99"
        >
            <source src="https://res.cloudinary.com/usi1hsqc/video/upload/video_2026-07-14_13-39-14_pzdhp4.mp4" type="video/mp4">
        </video>
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <div class="max-w-7xl mx-auto px-6">
                <div class="hero-badge">
                    <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>
                    认识您的房产团队
                </div>
                <h1 class="hero-title">
                    真人专业服务，<br>
                    <span class="text-blue-400">AI 智能辅助</span>
                </h1>
                <p class="hero-sub">
                    Terry 拥有15年以上新加坡房地产实战经验。Kayriel AI 提供24小时智能即时辅助。双强联手，为您打造无缝的房产之旅。
                </p>
                <div class="hero-ctas">
                    <button onclick="openQRModal()" class="inline-flex items-center gap-2 px-6 py-3 bg-[#07C160] hover:bg-[#06ad56] text-white text-sm font-medium rounded-lg transition-colors">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 01.213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 00.167-.054l1.903-1.114a.864.864 0 01.717-.098 10.16 10.16 0 002.837.403c.276 0 .543-.027.811-.05a6.42 6.42 0 01-.253-1.815c0-3.544 3.27-6.42 7.303-6.42.262 0 .517.022.773.042C16.794 4.308 13.084 2.188 8.691 2.188zm-2.87 4.401a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm5.827 0a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm4.866 3.628c-3.508 0-6.353 2.395-6.353 5.35 0 2.956 2.845 5.35 6.353 5.35.71 0 1.393-.108 2.04-.307a.699.699 0 01.578.08l1.527.893a.262.262 0 00.134.043.237.237 0 00.233-.237c0-.058-.023-.115-.039-.171l-.313-1.186a.477.477 0 01.171-.534C22.927 18.612 24 16.88 24 15.567c0-2.955-2.845-5.35-6.353-5.35h-.133zm-2.327 3.139a.832.832 0 110 1.664.832.832 0 010-1.664zm4.66 0a.832.832 0 110 1.664.832.832 0 010-1.664z"/></svg>
                        微信扫码咨询
                    </button>
                    <a href="https://wa.me/6588044132?text=Hi%20Terry%2C%20I%20found%20you%20through%20your%20website%20and%20would%20like%20to%20know%20more%20about%20Singapore%20properties." target="_blank" rel="noopener" class="inline-flex items-center gap-2 px-6 py-3 bg-[#25D366] hover:bg-[#20bd5a] text-white text-sm font-medium rounded-lg transition-colors">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
                        WhatsApp
                    </a>
                    <a href="tel:+6588044132" class="inline-flex items-center gap-2 px-6 py-3 bg-white/10 hover:bg-white/15 text-white text-sm font-medium rounded-lg border border-white/10 transition-colors">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path></svg>
                        +65 8804 4132
                    </a>
                </div>
            </div>
        </div>
        <div class="scroll-hint">
            <span class="text-neutral-500 text-xs uppercase tracking-widest">向下滚动</span>
            <svg class="w-4 h-4 text-neutral-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3"></path></svg>
        </div>
    </section>

    <!-- ============================================ -->
    <!-- 团队卡片                                     -->
    <!-- ============================================ -->
    <section id="team" class="py-24 px-6">
        <div class="max-w-6xl mx-auto">
            <div class="text-center mb-12 reveal">
                <span class="inline-flex items-center gap-2 px-4 py-1.5 bg-blue-500/10 border border-blue-500/20 rounded-full text-blue-400 text-sm font-medium mb-4">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path></svg>
                    我们的团队
                </span>
                <h2 class="text-3xl md:text-4xl font-medium tracking-tight mb-3">双重优势，一个目标</h2>
                <p class="text-neutral-400 max-w-xl mx-auto">将鼠标悬停在卡片上，了解他们为您的房产之旅带来的独特价值。</p>
            </div>

            <div class="grid md:grid-cols-2 gap-8">

                <!-- KAYRIEL AI — 左 -->
                <div class="profile-card card-ai aspect-[3/4] reveal anim-d1">
                    <img src="https://z-cdn-media.chatglm.cn/files/43d69fb5-683f-4aa2-936a-ccf6c83a9a3a.jpg?auth_key=1883512115-bd2e5715ccbd43fa8698d8421291176b-0-d967e23476d68ab5455237470c49c472" alt="Kayriel AI 智能助手" class="profile-image">
                    <div class="video-slot">
                        <div class="video-slot-inner" style="border: 1px solid rgba(59,130,246,0.3);">
                            <video src="YOUR_KAYRIEL_VIDEO_URL_HERE.mp4" muted loop playsinline></video>
                        </div>
                    </div>
                    <div class="card-info">
                        <div class="flex items-center gap-2 mb-2">
                            <div class="w-2 h-2 bg-blue-400 rounded-full ai-pulse"></div>
                            <span class="text-xs text-blue-400 font-medium uppercase tracking-wider">AI · 24小时在线</span>
                        </div>
                        <h3 class="text-2xl font-semibold mb-1">Kayriel <span class="text-blue-400">AI</span></h3>
                        <p class="text-neutral-300 text-sm">智能房产助手</p>
                        <div class="flex items-center gap-3 mt-3 text-neutral-500 text-xs">
                            <span class="flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path></svg>
                                即时回复
                            </span>
                            <span class="flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5h12M9 3v2m1.048 9.5A18.022 18.022 0 016.412 9m6.088 9h7M11 21l5-10 5 10M12.751 5C11.783 10.77 8.07 15.61 3 18.129"></path></svg>
                                多语言
                            </span>
                        </div>
                    </div>
                </div>

                <!-- TERRY — 右 -->
                <div class="profile-card card-human aspect-[3/4] reveal anim-d2">
                    <img src="https://z-cdn-media.chatglm.cn/files/37152115-c99d-46c3-90f0-2e05c9a3defc.jpg?auth_key=1883512115-a96ff7b87dbb443696a8056d34339c52-0-aa766632cd8413713504f8dc66dfc6df" alt="Terry Yuen 袁先生" class="profile-image">
                    <div class="video-slot">
                        <div class="video-slot-inner">
                            <video src="YOUR_TERRY_VIDEO_URL_HERE.mp4" muted loop playsinline></video>
                        </div>
                    </div>
                    <div class="card-info">
                        <div class="flex items-center gap-2 mb-2">
                            <div class="w-2 h-2 bg-green-400 rounded-full"></div>
                            <span class="text-xs text-green-400 font-medium uppercase tracking-wider">可立即联系</span>
                        </div>
                        <h3 class="text-2xl font-semibold mb-1">Terry Yuen</h3>
                        <p class="text-neutral-300 text-sm">资深房地产顾问 · 微信：好汉哥</p>
                        <div class="flex items-center gap-3 mt-3 text-neutral-500 text-xs">
                            <span class="flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>
                                新加坡
                            </span>
                            <span class="flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                                15年以上经验
                            </span>
                            <span class="flex items-center gap-1">
                                <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                                CEA注册
                            </span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ============================================ -->
    <!-- 团队对比                                     -->
    <!-- ============================================ -->
    <section class="pb-24 px-6">
        <div class="max-w-4xl mx-auto grid md:grid-cols-2 gap-6">
            <div class="p-6 rounded-2xl border border-blue-500/10 bg-blue-500/[0.02] reveal anim-d1">
                <div class="flex items-center gap-3 mb-4">
                    <div class="w-10 h-10 rounded-full bg-blue-500/10 flex items-center justify-center">
                        <svg class="w-5 h-5 text-blue-400 ai-pulse" fill="currentColor" viewBox="0 0 24 24"><path d="M12 2a2 2 0 012 2c0 .74-.4 1.39-1 1.73V7h1a7 7 0 017 7h1a1 1 0 011 1v3a1 1 0 01-1 1h-1.07A7.001 7.001 0 017.07 19H6a1 1 0 01-1-1v-3a1 1 0 011-1h1a7 7 0 017-7h1V5.73c-.6-.34-1-.99-1-1.73a2 2 0 012-2zM9 14a1.5 1.5 0 100 3 1.5 1.5 0 000-3zm6 0a1.5 1.5 0 100 3 1.5 1.5 0 000-3z"/></svg>
                    </div>
                    <div>
                        <h3 class="font-semibold text-sm">Kayriel <span class="text-blue-400">AI</span></h3>
                        <p class="text-xs text-neutral-500">AI 智能辅助</p>
                    </div>
                </div>
                <ul class="space-y-2.5 text-sm text-neutral-400">
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-blue-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>24小时智能房源匹配</li>
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-blue-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>中英双语无障碍沟通</li>
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-blue-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>智能推荐与数据分析</li>
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-blue-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>自动安排看房时间</li>
                </ul>
            </div>
            <div class="p-6 rounded-2xl border border-green-500/10 bg-green-500/[0.02] reveal anim-d2">
                <div class="flex items-center gap-3 mb-4">
                    <div class="w-10 h-10 rounded-full bg-green-500/10 flex items-center justify-center">
                        <svg class="w-5 h-5 text-green-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path></svg>
                    </div>
                    <div>
                        <h3 class="font-semibold text-sm">Terry Yuen</h3>
                        <p class="text-xs text-neutral-500">真人专业服务</p>
                    </div>
                </div>
                <ul class="space-y-2.5 text-sm text-neutral-400">
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-green-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>一对一量身定制房产方案</li>
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-green-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>专业谈判与成交把控</li>
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-green-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>深度市场洞察与本地经验</li>
                    <li class="flex items-start gap-2"><svg class="w-4 h-4 text-green-400 mt-0.5 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>实地看房与全程陪同</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- ============================================ -->
    <!-- 联系方式                                     -->
    <!-- ============================================ -->
    <section id="connect" class="pb-24 px-6">
        <div class="max-w-4xl mx-auto">
            <div class="text-center mb-12 reveal">
                <span class="inline-flex items-center gap-2 px-4 py-1.5 bg-green-500/10 border border-green-500/20 rounded-full text-green-400 text-sm font-medium mb-4">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 8h-1V6a4 4 0 00-8 0v2H3a1 1 0 00-1 1v9a1 1 0 001 1h10a1 1 0 001-1V9a1 1 0 00-1-1z"></path></svg>
                    联系我们
                </span>
                <h2 class="text-3xl md:text-4xl font-medium tracking-tight mb-3">三种方式，随时联系</h2>
                <p class="text-neutral-400">选择您最方便的方式，我们随时为您服务。</p>
            </div>
            <div class="grid md:grid-cols-3 gap-6">
                <button onclick="openQRModal()" class="group p-6 rounded-2xl border border-[#07C160]/20 bg-[#07C160]/[0.03] hover:bg-[#07C160]/[0.06] hover:border-[#07C160]/40 transition-all duration-300 text-left w-full reveal anim-d1">
                    <div class="w-12 h-12 rounded-full bg-[#07C160]/10 flex items-center justify-center mb-4 group-hover:bg-[#07C160]/20 transition-colors">
                        <svg class="w-6 h-6 text-[#07C160]" fill="currentColor" viewBox="0 0 24 24"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 01.213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 00.167-.054l1.903-1.114a.864.864 0 01.717-.098 10.16 10.16 0 002.837.403c.276 0 .543-.027.811-.05a6.42 6.42 0 01-.253-1.815c0-3.544 3.27-6.42 7.303-6.42.262 0 .517.022.773.042C16.794 4.308 13.084 2.188 8.691 2.188zm-2.87 4.401a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm5.827 0a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm4.866 3.628c-3.508 0-6.353 2.395-6.353 5.35 0 2.956 2.845 5.35 6.353 5.35.71 0 1.393-.108 2.04-.307a.699.699 0 01.578.08l1.527.893a.262.262 0 00.134.043.237.237 0 00.233-.237c0-.058-.023-.115-.039-.171l-.313-1.186a.477.477 0 01.171-.534C22.927 18.612 24 16.88 24 15.567c0-2.955-2.845-5.35-6.353-5.35h-.133zm-2.327 3.139a.832.832 0 110 1.664.832.832 0 010-1.664zm4.66 0a.832.832 0 110 1.664.832.832 0 010-1.664z"/></svg>
                    </div>
                    <h3 class="font-semibold mb-1">微信</h3>
                    <p class="text-neutral-500 text-sm mb-3">扫码添加Terry微信，中文沟通无障碍。</p>
                    <span class="text-[#07C160] text-sm font-medium flex items-center gap-1 group-hover:gap-2 transition-all">扫码添加 <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v1m6 11h2m-6 0h-2v4m0-11v3m0 0h.01M12 12h4.01M16 20h4M4 12h4m12 0h.01M5 8h2a1 1 0 001-1V5a1 1 0 00-1-1H5a1 1 0 00-1 1v2a1 1 0 001 1zm12 0h2a1 1 0 001-1V5a1 1 0 00-1-1h-2a1 1 0 00-1 1v2a1 1 0 001 1zM5 20h2a1 1 0 001-1v-2a1 1 0 00-1-1H5a1 1 0 00-1 1v2a1 1 0 001 1z"></path></svg></span>
                </button>
                <a href="https://wa.me/6588044132?text=Hi%20Terry%2C%20I%20found%20you%20through%20your%20website%20and%20would%20like%20to%20know%20more%20about%20Singapore%20properties." target="_blank" rel="noopener" class="group p-6 rounded-2xl border border-[#25D366]/20 bg-[#25D366]/[0.03] hover:bg-[#25D366]/[0.06] hover:border-[#25D366]/40 transition-all duration-300 reveal anim-d2">
                    <div class="w-12 h-12 rounded-full bg-[#25D366]/10 flex items-center justify-center mb-4 group-hover:bg-[#25D366]/20 transition-colors">
                        <svg class="w-6 h-6 text-[#25D366]" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
                    </div>
                    <h3 class="font-semibold mb-1">WhatsApp</h3>
                    <p class="text-neutral-500 text-sm mb-3">发送消息、图片、房源信息 — 即时回复。</p>
                    <span class="text-[#25D366] text-sm font-medium flex items-center gap-1 group-hover:gap-2 transition-all">打开聊天 <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg></span>
                </a>
                <a href="tel:+6588044132" class="group p-6 rounded-2xl border border-blue-500/20 bg-blue-500/[0.03] hover:bg-blue-500/[0.06] hover:border-blue-500/40 transition-all duration-300 reveal anim-d3">
                    <div class="w-12 h-12 rounded-full bg-blue-500/10 flex items-center justify-center mb-4 group-hover:bg-blue-500/20 transition-colors">
                        <svg class="w-6 h-6 text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path></svg>
                    </div>
                    <h3 class="font-semibold mb-1">电话</h3>
                    <p class="text-neutral-500 text-sm mb-3">直接致电Terry，获取一对一专业建议。</p>
                    <span class="text-blue-400 text-sm font-medium flex items-center gap-1 group-hover:gap-2 transition-all">+65 8804 4132 <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg></span>
                </a>
            </div>
        </div>
    </section>

    <!-- 页脚 -->
    <footer class="border-t border-white/10 py-8 px-6">
        <div class="max-w-7xl mx-auto">
            <div class="flex flex-col md:flex-row items-center justify-between gap-4 text-sm text-neutral-500">
                <div class="flex items-center gap-2">
                    <span class="text-green-400 font-semibold">Terry Realty</span>
                    <span>· 新加坡房产 · CEA注册号 R030418F</span>
                </div>
                <div class="flex items-center gap-6">
                    <a href="https://cn.terryyuen.com" class="hover:text-white transition-colors">返回首页</a>
                    <button onclick="openQRModal()" class="hover:text-[#07C160] transition-colors">微信</button>
                    <a href="tel:+6588044132" class="hover:text-blue-400 transition-colors">+65 8804 4132</a>
                </div>
            </div>
            <div class="mt-4 pt-4 border-t border-white/5 text-xs text-neutral-600 text-center">
                © 2024 Terry Realty. 版权所有。| 免责声明：本页面为营销材料，不构成法律建议。在做出任何投资决定之前，请咨询您的法律和财务顾问。
            </div>
        </div>
    </footer>

    <!-- ============================================ -->
    <!-- 悬浮按钮                                     -->
    <!-- ============================================ -->
    <div class="float-actions" id="floatBtns">
        <a href="tel:+6588044132" class="float-btn float-phone">
            <span class="btn-label">+65 8804 4132</span>
            <div class="btn-icon">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path></svg>
            </div>
        </a>
        <button onclick="openQRModal()" class="float-btn float-wechat">
            <span class="btn-label">微信咨询</span>
            <div class="btn-icon">
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 01.213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 00.167-.054l1.903-1.114a.864.864 0 01.717-.098 10.16 10.16 0 002.837.403c.276 0 .543-.027.811-.05a6.42 6.42 0 01-.253-1.815c0-3.544 3.27-6.42 7.303-6.42.262 0 .517.022.773.042C16.794 4.308 13.084 2.188 8.691 2.188zm-2.87 4.401a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm5.827 0a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm4.866 3.628c-3.508 0-6.353 2.395-6.353 5.35 0 2.956 2.845 5.35 6.353 5.35.71 0 1.393-.108 2.04-.307a.699.699 0 01.578.08l1.527.893a.262.262 0 00.134.043.237.237 0 00.233-.237c0-.058-.023-.115-.039-.171l-.313-1.186a.477.477 0 01.171-.534C22.927 18.612 24 16.88 24 15.567c0-2.955-2.845-5.35-6.353-5.35h-.133zm-2.327 3.139a.832.832 0 110 1.664.832.832 0 010-1.664zm4.66 0a.832.832 0 110 1.664.832.832 0 010-1.664z"/></svg>
            </div>
        </button>
        <a href="https://wa.me/6588044132?text=Hi%20Terry%2C%20I%20found%20you%20through%20your%20website%20and%20would%20like%20to%20know%20more%20about%20Singapore%20properties." target="_blank" rel="noopener" class="float-btn float-whatsapp">
            <span class="btn-label">WhatsApp</span>
            <div class="btn-icon">
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
            </div>
        </a>
    </div>

    <!-- ============================================ -->
    <!-- 微信二维码弹窗                                -->
    <!-- ============================================ -->
    <div id="qrModal" class="qr-backdrop" onclick="closeQRModal(event)">
        <div class="qr-modal" onclick="event.stopPropagation()">
            <button onclick="closeQRModal()" style="position:absolute;top:1rem;right:1rem;" class="w-8 h-8 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition-colors">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
            </button>
            <div class="w-16 h-16 rounded-full bg-[#07C160]/10 flex items-center justify-center mx-auto">
                <svg class="w-8 h-8 text-[#07C160]" fill="currentColor" viewBox="0 0 24 24"><path d="M8.691 2.188C3.891 2.188 0 5.476 0 9.53c0 2.212 1.17 4.203 3.002 5.55a.59.59 0 01.213.665l-.39 1.48c-.019.07-.048.141-.048.213 0 .163.13.295.29.295a.326.326 0 00.167-.054l1.903-1.114a.864.864 0 01.717-.098 10.16 10.16 0 002.837.403c.276 0 .543-.027.811-.05a6.42 6.42 0 01-.253-1.815c0-3.544 3.27-6.42 7.303-6.42.262 0 .517.022.773.042C16.794 4.308 13.084 2.188 8.691 2.188zm-2.87 4.401a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm5.827 0a1.026 1.026 0 110 2.052 1.026 1.026 0 010-2.052zm4.866 3.628c-3.508 0-6.353 2.395-6.353 5.35 0 2.956 2.845 5.35 6.353 5.35.71 0 1.393-.108 2.04-.307a.699.699 0 01.578.08l1.527.893a.262.262 0 00.134.043.237.237 0 00.233-.237c0-.058-.023-.115-.039-.171l-.313-1.186a.477.477 0 01.171-.534C22.927 18.612 24 16.88 24 15.567c0-2.955-2.845-5.35-6.353-5.35h-.133zm-2.327 3.139a.832.832 0 110 1.664.832.832 0 010-1.664zm4.66 0a.832.832 0 110 1.664.832.832 0 010-1.664z"/></svg>
            </div>
            <h3 class="text-xl font-semibold mt-3">扫码添加Terry微信</h3>
            <p class="text-neutral-400 text-sm mt-1">打开微信 → 点击"+" → 扫一扫</p>
            <div class="qr-frame">
                <img src="https://z-cdn-media.chatglm.cn/files/7f60f527-7ad7-46af-9b85-5ce0dda3e910.jpg?auth_key=1884037889-3c58d424ccfb4d24addf844fb93c251e-0-388cf89981f82ac5c9b538f0f98330cc" alt="微信二维码">
            </div>
            <p class="text-neutral-500 text-xs">微信号：<span class="text-neutral-300 font-medium">好汉哥</span></p>
            <div class="mt-4 pt-4 border-t border-white/10">
                <p class="text-neutral-500 text-xs">面向中国客户及中文使用者</p>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        (function() {
            // 滚动显示动画（带安全兜底）
            try {
                var observer = new IntersectionObserver(function(entries) {
                    entries.forEach(function(entry) {
                        if (entry.isIntersecting) {
                            entry.target.classList.add('visible');
                        }
                    });
                }, { threshold: 0.1 });
                var revealEls = document.querySelectorAll('.reveal');
                for (var i = 0; i < revealEls.length; i++) {
                    observer.observe(revealEls[i]);
                }
            } catch(e) {
                var fallback = document.querySelectorAll('.reveal');
                for (var j = 0; j < fallback.length; j++) {
                    fallback[j].classList.add('visible');
                }
            }

            // 主视觉区域隐藏悬浮按钮
            try {
                var heroSection = document.querySelector('.hero-video-wrap');
                var floatBtns = document.getElementById('floatBtns');
                if (heroSection && floatBtns) {
                    var heroObserver = new IntersectionObserver(function(entries) {
                        if (entries[0].isIntersecting) {
                            floatBtns.style.opacity = '0';
                            floatBtns.style.pointerEvents = 'none';
                        } else {
                            floatBtns.style.opacity = '1';
                            floatBtns.style.pointerEvents = 'all';
                        }
                        floatBtns.style.transition = 'opacity 0.3s ease';
                    }, { threshold: 0.5 });
                    heroObserver.observe(heroSection);
                }
            } catch(e) {}

            // 平滑滚动
            try {
                var anchors = document.querySelectorAll('a[href^="#"]');
                for (var k = 0; k < anchors.length; k++) {
                    anchors[k].addEventListener('click', function(e) {
                        var href = this.getAttribute('href');
                        if (href !== '#') {
                            e.preventDefault();
                            var target = document.querySelector(href);
                            if (target) {
                                target.scrollIntoView({ behavior: 'smooth' });
                            }
                        }
                    });
                }
            } catch(e) {}
        })();

        // 微信二维码弹窗（全局函数）
        function openQRModal() {
            document.getElementById('qrModal').classList.add('active');
            document.body.style.overflow = 'hidden';
        }
        function closeQRModal(event) {
            if (!event || event.target === event.currentTarget) {
                document.getElementById('qrModal').classList.remove('active');
                document.body.style.overflow = '';
            }
        }
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape') closeQRModal();
        });

        // 安全兜底：1.5秒后强制显示所有内容
        setTimeout(function() {
            var hidden = document.querySelectorAll('.reveal:not(.visible)');
            for (var n = 0; n < hidden.length; n++) {
                hidden[n].classList.add('visible');
            }
        }, 1500);
    </script>

</body>
</html>
