# Website Cá Nhân - Long

Đây là website cá nhân hiển thị thông tin về Long, bao gồm giới thiệu, kỹ năng, dự án và thông tin liên hệ.

## Tính năng

- **Responsive Design**: Tương thích với mọi thiết bị
- **Modern UI/UX**: Thiết kế hiện đại, chuyên nghiệp
- **Interactive Elements**: Animations và effects mượt mà
- **Contact Form**: Form liên hệ với validation
- **SEO Friendly**: Tối ưu cho SEO

## Cấu trúc file

```
info/
├── index.html          # Trang chủ
├── styles.css          # CSS styling
├── script.js           # JavaScript functionality
├── README.md           # Hướng dẫn
└── .htaccess          # Cấu hình Apache (cho hosting)
```

## Cách sử dụng

### 1. Chỉnh sửa thông tin cá nhân

Mở file `index.html` và cập nhật:
- Tên trong phần hero
- Thông tin giới thiệu
- Danh sách kỹ năng
- Thông tin dự án
- Thông tin liên hệ (email, phone, địa chỉ)

### 2. Deploy lên hosting

#### Hosting thông thường (cPanel, FileManager):
1. Upload tất cả file lên thư mục `public_html` hoặc `www`
2. Đảm bảo file `index.html` ở root directory
3. Website sẽ hoạt động ngay lập tức

#### Netlify (Miễn phí):
1. Tạo tài khoản tại [netlify.com](https://netlify.com)
2. Kéo thả thư mục `info` vào Netlify
3. Cấu hình custom domain nếu có

#### Vercel (Miễn phí):
1. Tạo tài khoản tại [vercel.com](https://vercel.com)
2. Import project từ GitHub hoặc upload trực tiếp
3. Deploy với một click

#### GitHub Pages (Miễn phí):
1. Upload code lên GitHub repository
2. Bật GitHub Pages trong Settings
3. Chọn branch `main` và thư mục root

### 3. Trỏ domain

Sau khi deploy, bạn cần trỏ domain đã thuê:

#### Với hosting thông thường:
1. Đăng nhập vào trang quản lý domain
2. Thay đổi nameserver về nameserver của hosting
3. Hoặc cấu hình A Record trỏ về IP của hosting

#### Với Netlify/Vercel:
1. Thêm custom domain trong dashboard
2. Cấu hình CNAME record trỏ về subdomain được cung cấp

## Tùy chỉnh

### Thay đổi màu sắc:
Chỉnh sửa các biến CSS trong `styles.css`:
```css
:root {
    --primary-color: #6366f1;
    --secondary-color: #fbbf24;
    --background-color: #f9fafb;
}
```

### Thêm sections mới:
1. Thêm HTML structure vào `index.html`
2. Thêm styling tương ứng vào `styles.css`
3. Cập nhật navigation menu

### Tích hợp analytics:
Thêm Google Analytics hoặc tracking code vào trước tag `</head>`

## Yêu cầu kỹ thuật

- **Browser Support**: Chrome, Firefox, Safari, Edge (modern versions)
- **Mobile Friendly**: iOS Safari, Chrome Mobile
- **Performance**: Optimized cho loading speed
- **Accessibility**: Tuân thủ WCAG guidelines

## Liên hệ

Nếu cần hỗ trợ customize thêm, vui lòng liên hệ qua thông tin trong website.
