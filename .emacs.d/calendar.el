;; Località per il calcolo di alba e tramonto
(setq calendar-latitude 44.5)
(setq calendar-longitude 11.3)
(setq calendar-location-name "Bologna")

;; Localizzazione di giorni e mesi
(setq calendar-week-start-day 1 calendar-day-name-array
          ["Domenica" "Lunedì" "Martedì" "Mercoledì" "Giovedì" "Venerdì" "Sabato"]
          calendar-month-name-array
          ["Gennaio" "Febbraio" "Marzo" "Aprile" "Maggio" "Giugno" "Luglio" "Agosto" "Settembre" "Ottobre" "Novembre" "Dicembre"])
;; Localizzazione delle feste
(setq holiday-general-holidays
      '((holiday-fixed 1 1 "Capodanno")
        (holiday-fixed 5 1 "1 Maggio")
        (holiday-fixed 4 25 "Liberazione")
        (holiday-fixed 6 2 "Festa Repubblica")
))

(setq holiday-christian-holidays
      '(
        (holiday-fixed  1  6 "Epifania")
        (holiday-fixed  8 15 "Assunzione di Maria")
        (holiday-fixed 10  4 "San Petronio")
        (holiday-fixed 11  1 "Ognissanti")
	(holiday-fixed 12  8 "Immacolata Concezione")
        (holiday-fixed 12 25 "Natale")
        (holiday-fixed 12 26 "Santo Stefano")
        (holiday-easter-etc -52 "Giovedì grasso")
        (holiday-easter-etc -47 "Martedì grasso")
        (holiday-easter-etc  -2 "Venerdì Santo")
        (holiday-easter-etc   0 "Pasqua")
        (holiday-easter-etc  +1 "Lunedì Pasqua")
))
