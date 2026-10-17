IVRIT FAMILY — FIRST WORKING PROTOTYPE

This is an installable web app for iPhone Safari and desktop browsers.

TO TRY ON A COMPUTER:
Open index.html in a browser. Audio and quizzes should work where supported. Microphone recognition usually requires HTTPS.

TO USE ON PERSONAL IPHONES:
1. Upload the contents of this folder to a static HTTPS web host (e.g., GitHub Pages or Netlify).
2. Open the HTTPS address in Safari on each iPhone.
3. Tap Share > Add to Home Screen.
4. Choose Maria, Adriel, or Me. Translation language is independently adjustable.

IMPORTANT LIMITATIONS:
- Progress is local to each browser/device, not synced between phones.
- Audio uses the device's Hebrew text-to-speech voice if available.
- Speech recognition depends on iOS/browser support and may not work on all devices.
- Pronunciation checks compare recognized words, NOT acoustic phoneme accuracy.
- This prototype has 8 sample lessons per level; it is not yet a full course.
- It does not have real user accounts or cloud services.

AUTOMATIC COMPUTER LAUNCHERS (WINDOWS AND MAC)
1. Extract the complete ZIP. Keep all files together in the ivrit-family folder.
2. Windows: double-click Start-Ivrit-Windows.bat.
   Mac: double-click Start-Ivrit-Mac.command.
3. A browser tab opens automatically. Keep the command window / Terminal open.
4. To stop the app, press Ctrl+C in that window or close it.

Python 3 must be installed. No Python packages or internet connection are needed
for the local launcher itself. The first launch may show an operating-system
security confirmation for downloaded scripts. Only allow it if you trust the file.
On macOS, if the .command file lacks execute permission after extraction, open
Terminal in the folder and run: chmod +x Start-Ivrit-Mac.command

The launcher serves only on this computer (127.0.0.1), not across the network.
The iPhone installation still requires a separately hosted HTTPS site.
Speech recognition remains dependent on browser support and may use the internet.

VERSION 2 — NEW LEARNING SECTIONS
- Alphabet tab: 22 Hebrew letters and five final forms; tap a letter to hear it.
- Handwriting-style preview is font-dependent and is NOT yet a verified cursive stroke chart.
- Gender tab: masculine/feminine sentence variants, transliteration, audio, and explanations.
- Both sections use each learner's English/Spanish preference.
- Existing local progress and launchers are preserved.
- If an old page is cached, refresh/reopen the browser; service worker cache version is updated.


VERSION 3 — CURSIVE HEBREW
New Handwriting tab: letters, words, sentences, reveal-print reading practice, audio, and Spanish/English meanings.
The handwriting font is loaded from Google Fonts when online. This free font may not appear on an offline first launch.
Free local use: no app purchase, subscription, or developer account required.
For separate iPhones, the app must be hosted on HTTPS to add to Home Screen reliably; cloud sync is not implemented.

VERSION 4: Conversation and Gender lessons now show every phrase simultaneously in printed Hebrew and handwriting-style cursive, with English/Spanish translations. Handwriting reading exercises remain available.
Mac launcher has executable permission set in this ZIP.
