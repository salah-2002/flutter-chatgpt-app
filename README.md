Perfect — here’s a more **human, student-style `README.md`**, written like a student explaining their own homework project to a teacher.

---

## ✅ `README.md` (Student-Style – Explain Your Work)

````markdown
# 💬 My Flutter ChatGPT App (DeepSeek via OpenRouter)

Hi, this is a chatbot application I built using **Flutter**.  
The app connects to **OpenRouter.ai** and uses the **DeepSeek-R1 model** to simulate an AI assistant — kind of like ChatGPT.

---

## 🎯 Objective

The goal was to:

- Create a modern chat UI in Flutter
- Connect to an external API (OpenRouter + DeepSeek)
- Display a conversation between a user and an AI assistant
- Use clean UI practices and a responsive layout

---

## 🔧 Tools & Technologies

| Tool | Purpose |
|------|---------|
| Flutter 3.22+ | Main framework |
| Dart | Programming language |
| OpenRouter.ai | API provider for LLMs |
| DeepSeek-R1 | Free language model |
| HTTP package | To send API requests |
| Material Design 3 | For UI and layout |

---

## 🧠 How I Did It (Step-by-Step)

### ✅ Step 1: Setup Flutter

- I installed Flutter SDK and ran `flutter doctor` to check my environment.
- I used `flutter create chatgpt_app` to start the project.
- I opened it in VS Code and ran it using `flutter run -d chrome`.

### ✅ Step 2: Add Dependencies

In `pubspec.yaml`, I added:

```yaml
dependencies:
  http: ^0.13.6
````

Then I ran `flutter pub get`.

### ✅ Step 3: Connect to OpenRouter

I created a Dart file `chat_gpt_service.dart` and used the HTTP package to send POST requests to:

```
https://openrouter.ai/api/v1/chat/completions
```

I added my OpenRouter API key, and selected the model:

```
"model": "deepseek/deepseek-r1:free"
```

### ✅ Step 4: Build the Chat UI

In `main.dart`:

* I used a `ListView` to show messages
* I added an input bar at the bottom with a send icon
* Messages appear in chat bubbles, right-aligned for user and left-aligned for AI
* When I send a message, the app calls the API and shows the response

---

## 🖼️ What It Looks Like

| User Chat            | AI Reply            |
| -------------------- | ------------------- |
| Message on the right | Message on the left |
| Indigo bubble        | Gray bubble         |

---

## ⚠️ Security Note

To avoid exposing my API key, I could use `.env` files and a package like `flutter_dotenv`, but for this version I kept the key directly in the file for simplicity.

---

## 📌 Things I Learned

* How to use Flutter and build a scrollable UI
* How to manage state using `setState`
* How to call external REST APIs with headers and JSON
* How chat apps use dynamic message lists and auto-scroll
* How to organize Flutter files and use separate services

---

## 🧪 How to Run It

1. Clone the repo or copy the code
2. Add your OpenRouter API key to `chat_gpt_service.dart`
3. Run with:

```bash
flutter pub get
flutter run -d chrome
```

---

## ✅ What I'd Improve Next

* Save chat history
* Add dark mode
* Replace the hardcoded key with `.env`
* Animate messages smoothly
* Add avatar images for user and bot

---

## 🧠 About OpenRouter + DeepSeek

 **OpenRouter.ai** lets developers access different LLMs easily with a single endpoint.
**DeepSeek-R1** is a fast, free model good for chatbots.

I used this model via:

Authorization: Bearer sk-...
Model: deepseek/deepseek-r1:free


## 🙋‍♂️ Author

Made by **\salah eddine bazragou**
Flutter & AI Enthusiast
Contact: salaheddine.bazragou@gmail.com
images of the project :
<img width="399" height="565" alt="image" src="https://github.com/user-attachments/assets/d02b6350-ceaa-4067-b269-679e27ddc153" />




