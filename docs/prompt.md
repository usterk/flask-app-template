# Meta-prompt: Tworzenie opisu oprogramowania do użycia w canvas

Celem tego procesu jest stworzenie kompletnego i precyzyjnego prompta opisującego oprogramowanie, który będzie następnie użyty przez inne AI do wygenerowania rzeczywistego kodu. Opis będzie tworzony wspólnie z użytkownikiem **w canvasie**, ale **canvas zostanie utworzony dopiero po zebraniu wszystkich odpowiedzi na pytania**. Każdy fragment prompta zostanie opracowany na podstawie zestawu uporządkowanych pytań, aby upewnić się, że zawiera wszystkie kluczowe informacje.

Tworzona aplikacja będzie korzystać z gotowego szablonu projektu opartego na **Flask** z Dockerem: [usterk/flask-app-template](https://github.com/usterk/flask-app-template). Prompt musi być przygotowany tak, aby projekt był zgodny z tą strukturą i od razu działał po uruchomieniu z użyciem `./run.sh`.

---

### 🔧 Format końcowego prompta (output):

```
# Nazwa projektu
[Krótki opis celu projektu – jedno zdanie.]

## Typ aplikacji i platforma
Web application (Flask + Docker), uruchamiana lokalnie pod http://localhost:5000

## Użytkownicy i role
[Listy oczekiwanych typów użytkowników i ich ról, np. Administrator, Użytkownik, Gość.]
- Jeśli to możliwe, należy zaprojektować interfejs publiczny dostępny bez logowania

## Główne funkcje i przypadki użycia
[Listy głównych funkcjonalności i przykładów interakcji użytkownika z systemem.]

## Interfejs użytkownika
- Aplikacja domyślnie otwiera się na stronie głównej dostępnej pod `/`
- Jeśli potrzebna jest nawigacja, należy zastosować ikonę hamburgera po lewej stronie oraz wysuwane menu boczne z opcjami
- Jeżeli wymagane są interaktywne okna lub komponenty (np. edytory, formularze, widoki dynamiczne), są one implementowane w JS i zajmują maksymalnie 90% szerokości i 90% wysokości ekranu
- Interfejs jest nowoczesny, atrakcyjny wizualnie i czysty (minimalistyczny, responsywny design)

## Język interfejsu
Polski (chyba że użytkownik wyraźnie określi inny język)

## Technologie i biblioteki
- Python 3.9
- Flask 2.0+
- Docker (z `run.sh` do uruchamiania aplikacji)
- HTML (Jinja2 templates w katalogu `templates/`)
- CSS/JS (pliki statyczne w katalogu `static/`)

## Modele danych i API
[Opis danych, które mają być przechowywane, przetwarzane lub pobierane, oraz ewentualnych API.]

## Integracje zewnętrzne
[Usługi zewnętrzne do zintegrowania, np. Stripe, OpenAI API, Firebase itd.]

## Credentiale i bezpieczeństwo
[Gdzie będą przechowywane dane dostępowe, API keye, loginy i hasła użytkowników? Czy będą szyfrowane? Czy mają być trzymane w pliku .env, bazie danych, czy używana będzie zewnętrzna usługa?]

## Architektura i modularność
- Projekt musi być zgodny ze strukturą szablonu `flask-app-template`
- Kod powinien być podzielony na małe, niezależne komponenty (moduły, klasy, biblioteki), każdy w osobnym pliku
- Każdy komponent musi zawierać:
  - nazwę,
  - dokładny opis odpowiedzialności i funkcjonalności,
  - opis interfejsu publicznego (np. dostępne metody, parametry wejściowe/wyjściowe),
  - zależności od innych komponentów (jeśli występują)
- Projekt ma być zorganizowany tak, aby umożliwić modyfikację pojedynczych komponentów bez potrzeby ładowania całej bazy kodu
- Wszystkie nazwy zmiennych, klas, funkcji oraz komentarze w kodzie muszą być w języku angielskim

## Dodatkowe uwagi
- Plik `app.py` powinien zawierać główną logikę uruchamiania aplikacji i definicję tras (routes)
- Konfiguracje powinny być przeniesione do `config/settings.py`, jeśli są większe
- Widoki powinny korzystać z systemu szablonów Jinja2 (katalog `templates/`)
- Wszystkie statyczne zasoby (CSS, JS, obrazki) powinny być umieszczone w `static/`
```

---

### 🧭 Proces tworzenia prompta — pytania do użytkownika:

1. **Jak nazywa się Twój projekt? Opisz jego cel w jednym zdaniu.**
2. **Jakie są kluczowe funkcje i przypadki użycia?**
3. **Kim są użytkownicy i jakie będą mieć role? Czy chcesz, aby interfejs publiczny był dostępny bez logowania?**
4. **Jakie dane mają być przechowywane lub przetwarzane? Jakie modele danych są potrzebne?**
5. **Czy projekt wymaga integracji z zewnętrznymi usługami? Jakimi?**
6. **Gdzie i jak będą przechowywane credentiale (np. loginy, hasła, API keye)?**
7. **Jak planujesz podzielić projekt na moduły lub komponenty?**
8. **Czy są inne ograniczenia, założenia lub ważne szczegóły do zanotowania?**
9. **Czy są jakieś dodatkowe pytania pomocnicze, które warto teraz zadać, aby doprecyzować projekt?**

---

### 🔄 Końcowy krok:

Po zebraniu wszystkich odpowiedzi, meta-prompt mówi:

„Czy to już wszystko, co chciałbyś dodać? Jeśli tak, przełącz się teraz na model **reasoningowy** i wybierz jedną z poniższych opcji:

- **generuj** – wygeneruję kompletny prompt opisujący Twój projekt oprogramowania i utworzę canvas automatycznie
- **Przemyśl i zadaj mi dodatkowe pytania** – przeanalizuję Twoje odpowiedzi i zadam uzupełniające pytania, które doprecyzują projekt”**

