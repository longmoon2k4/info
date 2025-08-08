# Hướng Dẫn Deploy Website Lên Domain Đã Thuê

## Bước 1: Chuẩn bị website

✅ Website đã được tạo với các file:
- `index.html` - Trang chủ
- `styles.css` - CSS styling  
- `script.js` - JavaScript functionality
- `.htaccess` - Cấu hình Apache
- `README.md` - Hướng dẫn

## Bước 2: Chọn phương thức hosting

### Option 1: Shared Hosting (Khuyến nghị cho beginners)

**Hosting Việt Nam:**
- AZDIGI: https://azdigi.com
- INET: https://inet.vn  
- MATBAO: https://matbao.net

**Hosting Quốc tế:**
- Hostinger: https://hostinger.com
- Bluehost: https://bluehost.com
- SiteGround: https://siteground.com

**Cách deploy:**
1. Mua hosting package (thường 50k-200k/năm)
2. Login vào cPanel/DirectAdmin
3. Mở File Manager
4. Upload tất cả file vào thư mục `public_html`
5. Trỏ domain về hosting

### Option 2: Static Site Hosting (Miễn phí)

**Netlify (Khuyến nghị):**
1. Truy cập https://netlify.com
2. Đăng ký tài khoản
3. Kéo thả thư mục website vào Netlify
4. Trong Site Settings > Domain Management > Add custom domain
5. Cấu hình DNS của domain trỏ về Netlify

**Vercel:**
1. Truy cập https://vercel.com
2. Đăng ký tài khoản
3. Import project hoặc kéo thả file
4. Add custom domain trong Settings
5. Cấu hình DNS

**GitHub Pages:**
1. Tạo repository trên GitHub
2. Upload code lên repository
3. Bật GitHub Pages trong Settings
4. Cấu hình custom domain

## Bước 3: Cấu hình DNS

### Nếu dùng Shared Hosting:
```
Type: A Record
Name: @ (hoặc để trống)
Value: [IP hosting] (VD: 103.97.125.1)

Type: CNAME  
Name: www
Value: yourdomain.com
```

### Nếu dùng Netlify:
```
Type: CNAME
Name: @ (hoặc để trống)  
Value: [netlify-subdomain].netlify.app

Type: CNAME
Name: www
Value: [netlify-subdomain].netlify.app  
```

### Nếu dùng Vercel:
```
Type: CNAME
Name: @
Value: cname.vercel-dns.com

Type: CNAME  
Name: www
Value: cname.vercel-dns.com
```

## Bước 4: Test website

1. Đợi DNS propagation (2-48 giờ)
2. Truy cập domain của bạn
3. Kiểm tra:
   - Website load đúng
   - Responsive trên mobile
   - Form contact hoạt động
   - Tất cả links work

## Bước 5: Tối ưu thêm (Optional)

### SSL Certificate:
- Hosting: Thường có sẵn hoặc free từ Let's Encrypt
- Netlify/Vercel: Tự động enable SSL

### Google Analytics:
1. Tạo account tại https://analytics.google.com
2. Thêm tracking code vào `index.html` trước `</head>`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_TRACKING_ID');
</script>
```

### Google Search Console:
1. Truy cập https://search.google.com/search-console
2. Add property với domain của bạn
3. Verify ownership
4. Submit sitemap

### Meta Tags cho SEO:
Thêm vào `<head>` trong `index.html`:
```html
<meta name="description" content="Long - Developer passionate về công nghệ">
<meta name="keywords" content="Long, Developer, Web Development, Portfolio">
<meta name="author" content="Long">

<!-- Open Graph for social sharing -->
<meta property="og:title" content="Long - Developer Portfolio">
<meta property="og:description" content="Long - Developer passionate về công nghệ">
<meta property="og:type" content="website">
<meta property="og:url" content="https://yourdomain.com">
```

## Troubleshooting

### Website không load:
- Kiểm tra DNS settings
- Đợi DNS propagation
- Check hosting status

### CSS/JS không load:
- Kiểm tra file paths
- Verify file upload đúng structure
- Check browser console for errors

### Domain không trỏ về website:
- Verify DNS records
- Check TTL (Time To Live)
- Contact hosting support

## Contact Support

Nếu gặp vấn đề trong quá trình deploy, có thể:
1. Check documentation của hosting provider
2. Contact hosting support
3. Search Stack Overflow cho specific errors
4. Ask trong Facebook groups về web development Việt Nam

---

**Lưu ý:** Thời gian DNS propagation có thể từ 2-48 giờ. Hãy kiên nhẫn đợi sau khi cấu hình xong.
