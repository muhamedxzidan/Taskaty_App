# MCP Server Configuration

## ما هو MCP Server؟
Model Context Protocol (MCP) يسمح لـ AI بالاتصال بخدمات Google مثل Docs, Sheets, و Drive.

## كيفية الإعداد:

### 1. نسخ ملف الإعدادات
```bash
cp .vscode/mcp_settings.json.example .vscode/mcp_settings.json
```

### 2. الحصول على API Key
1. اذهب إلى [Google Cloud Console](https://console.cloud.google.com/)
2. أنشئ مشروع جديد أو اختر مشروع موجود
3. فعّل Google Stitch API
4. أنشئ API Key جديد
5. انسخ المفتاح

### 3. إضافة المفتاح
افتح `.vscode/mcp_settings.json` واستبدل `YOUR_API_KEY_HERE` بمفتاحك الفعلي:

```json
{
  "mcpServers": {
    "stitch": {
      "serverUrl": "https://stitch.googleapis.com/mcp",
      "headers": {
        "X-Goog-Api-Key": "YOUR_ACTUAL_API_KEY"
      }
    }
  }
}
```

## ⚠️ تحذيرات أمنية:

1. **لا ترفع** ملف `mcp_settings.json` إلى Git (محمي بـ `.gitignore`)
2. **لا تشارك** مفتاح API مع أي شخص
3. إذا تسرب المفتاح، **غيّره فوراً** من Google Cloud Console

## الفوائد:

- 📚 قراءة المتطلبات من Google Docs
- 📊 استيراد البيانات من Google Sheets
- 🔍 البحث في Google Drive
- 🤖 AI أكثر ذكاءً مع وصول للبيانات الحقيقية

## المزيد من المعلومات:

راجع [Google Stitch Documentation](https://cloud.google.com/stitch) للمزيد من التفاصيل.
