; problem file -- includes only a template for
; how countries are going to be represented in
; their initial state.
;
; Problem file 1 - includes 1 EU countries
(define (problem problem2)
        (:domain EU_economics)
        (:objects Belgium - Country)


(:init
  ; -- Variables --
  (=(resources-sector Belgium) 4)                  ; "resources": 4
  (=(industry-sector Belgium) 108)                   ; "industry": 108
  (=(services-sector Belgium) 400)                   ; "services": 400
  (=(funds Belgium) 536)                             ; "funds": 536
  (=(quality-of-life-index Belgium) 162)          ; "quality-of-life-index": 162

          ; -- Constants --
  (=(resources-price Belgium) 20)                 ; "resources": 20
  (=(industry-price Belgium) 4)                  ; "industry": 4
  (=(services-price Belgium) 2)                  ; "services": 2
  (=(economy-growth-price Belgium) 30)                       ; "economy growth: " : 30

          ; -- Economy growth --
  (=(resources-growth Belgium) 5)               ; "resources": 5
  (=(industry-growth Belgium) 10)                ; "industry": 10
  (=(services-growth Belgium) 15)                ; "services": s15

          ; -- Quality of life growth --
  (=(quality-index-resources-cost Belgium) 2)     ; "resources": 2
  (=(quality-index-industry-cost Belgium) 8)      ; "industry": 8
  (=(quality-index-services-cost Belgium) 12)      ; "services": 12

  ;predicates initialised                              ; -- Biases --
  (is-not-resources-biased Belgium)             ; resources: false
  (is-not-industry-biased Belgium)              ; industry: false
  (not(is-not-services-biased Belgium))                   ; services: true

          ; -- Technical --
  (is-not-growing-economy Belgium)                    ; "growing-eco": false
  (is-not-growing-quality-of-life Belgium)            ; "growing-quality-of-life": false
)

(:goal (and
        (>= (quality-of-life-index Belgium) 190)
    )
)

)
