# 🛠️ دليل التثبيت خطوة بخطوة | Installation Guide

## المتطلبات

- ✅ جهاز كمبيوتر (Windows / Mac / Linux)
- ✅ حساب Google (لـ NotebookLM)
- ✅ متصفح Chrome
- ✅ اتصال إنترنت مستقر

---

## الخطوة 1: تحميل AntiGravity

1. روح على الموقع الرسمي لـ AntiGravity
2. حمّل النسخة المناسبة لنظامك (Windows / Mac / Linux)
3. ثبّت التطبيق
4. افتحه وسجّل دخولك

> 💡 **نصيحة:** لو مش متعود على الواجهة، ده طبيعي! الشمال فيه الملفات، واليمين فيه المحادثة مع AI.

---

## الخطوة 2: إعداد NotebookLM MCP

### الطريقة الأولى: النسخ اليدوي

1. **افتح إعدادات MCP:**
   - في AntiGravity: اضغط على الـ 3 نقاط (⋯)
   - اختار "MCP Servers"
   - اختار "Manage MCP Servers"
   - اضغط "View Raw Config"

2. **أضف إعدادات NotebookLM:**

```json
{
  "notebooklm": {
    "command": "uvx",
    "args": ["notebooklm-mcp"]
  }
}
```

3. **احفظ** الملف

### الطريقة الثانية: عن طريق Prompt

انسخ الـ prompt ده واكتبه في AntiGravity:

```
Install and set up the NotebookLM MCP server for me:

1. Install the notebooklm-mcp-server package using uv (or pip if uv isn't available)
2. Add it to my MCP configuration file
3. Run the authentication command (notebooklm-mcp-auth) and open a browser to authorize it
4. Verify the installation is working by listing my NotebookLM notebooks

Make sure to:
- Use the correct installation method for my system
- Configure the MCP server properly in my config file
- Guide me through the browser authentication process
- Confirm everything is working at the end
- You must add this here once completed: @mcp_config.json
- You may need to make sure the user is signed out of their browser before doing this.
```

---

## الخطوة 3: المصادقة (Authentication)

### العملية:
1. AntiGravity هيفتح **متصفح Chrome** تلقائياً
2. هيوديك على **NotebookLM**
3. **سجّل دخولك** بحساب Google
4. المصادقة هتتم تلقائياً عن طريق الـ cookies

### ⚠️ مهم:
- **اتأكد إنك مش مسجل دخولك** في NotebookLM قبل ما تبدأ
- لو كنت مسجل، **اعمل Sign Out** الأول
- بعدين ابدأ عملية المصادقة من جديد

---

## الخطوة 4: التحقق من التثبيت

### تأكد إن كل حاجة شغالة:

1. **افتح MCP Servers:**
   - اضغط على الـ 3 نقاط (⋯)
   - اختار "MCP Servers"
   - اختار "Manage MCP Servers"

2. **تحقق من اللون:**
   - 🟢 **أخضر** = شغال ✅
   - 🔴 **أحمر** = في مشكلة ❌

3. **اختبر بسؤال بسيط:**

```
Hey, could you list my last 10 notebooks from NotebookLM
and create me a file called "my-notebooks.md" with links to each?
```

لو رجعلك قائمة النوتبوكات — **مبروك! 🎉 كل حاجة شغالة!**

---

## الخطوة 5: إعداد brain.md (اختياري لكن مهم جداً)

1. في AntiGravity، اعمل **Right Click** → **New File**
2. سمّيه `brain.md`
3. انسخ القالب من [templates/brain.md](../templates/brain.md)
4. **املأ المعلومات عنك وعن شركتك**

> 🧠 **نصيحة ذهبية:** خد وقتك في ملء brain.md — ده الملف اللي هيخلي AI يفهمك ويقدم نتائج مخصصة ليك.

---

## الخطوة 6 (اختياري): إضافة Fireflies MCP

لو عايز تربط اجتماعاتك بالنظام:

1. اعمل حساب في [Fireflies.ai](https://fireflies.ai)
2. روح على **Settings → Developer Settings**
3. انسخ **API Key**
4. اكتب في AntiGravity:

```
Hey, I would like you to add the Fireflies MCP to my MCP config.
My Fireflies API key is: [YOUR_API_KEY]
@mcp_config.json
```

---

## ✅ الملخص

| الخطوة | الحالة |
|--------|--------|
| تحميل AntiGravity | ⬜ |
| إعداد NotebookLM MCP | ⬜ |
| المصادقة | ⬜ |
| التحقق من التثبيت | ⬜ |
| إعداد brain.md | ⬜ |
| إضافة Fireflies (اختياري) | ⬜ |

---

## الخطوة التالية

→ [حل المشاكل الشائعة](06-troubleshooting.md)
→ [ابدأ أول Use Case](../use-cases/use-case-1-client-research/)
