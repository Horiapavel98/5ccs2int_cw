; problem file -- includes only a template for
; how countries are going to be represented in
; their initial state.
;
; Problem file 3 - includes 3 EU countries
(define (problem problem3)
        (:domain EU_economics)
        (:objects Belgium Germany France - Country)


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
  ; -- Variables --
  (=(resources-sector Germany) 1856)                  ; "resources": 1856
  (=(industry-sector Germany) 1622)                   ; "industry": 1622
  (=(services-sector Germany) 885)                   ; "services": 885
  (=(funds Germany) 4029)                             ; "funds": 4029
  (=(quality-of-life-index Germany) 187)          ; "quality-of-life-index": 187

          ; -- Constants --
  (=(resources-price Germany) 2)                 ; "resources": 2
  (=(industry-price Germany) 2)                  ; "industry": 2
  (=(services-price Germany) 15)                  ; "services": 15
  (=(economy-growth-price Germany) 377)                       ; "economy growth: " : 377

          ; -- Economy growth --
  (=(resources-growth Germany) 150)               ; "resources": 150
  (=(industry-growth Germany) 150)                ; "industry": 150
  (=(services-growth Germany) 100)                ; "services": s100

          ; -- Quality of life growth --
  (=(quality-index-resources-cost Germany) 126)     ; "resources": 126
  (=(quality-index-industry-cost Germany) 114)      ; "industry": 114
  (=(quality-index-services-cost Germany) 155)      ; "services": 155

  ;predicates initialised                              ; -- Biases --
  (not(is-not-resources-biased Germany))                  ; resources: true
  (is-not-industry-biased Germany)              ; industry: false
  (is-not-services-biased Germany)              ; services: false

          ; -- Technical --
  (is-not-growing-economy Germany)                    ; "growing-eco": false
  (is-not-growing-quality-of-life Germany)            ; "growing-quality-of-life": false
  ; -- Variables --
  (=(resources-sector France) 1254)                  ; "resources": 1254
  (=(industry-sector France) 1126)                   ; "industry": 1126
  (=(services-sector France) 809)                   ; "services": 809
  (=(funds France) 2795)                             ; "funds": 2795
  (=(quality-of-life-index France) 158)          ; "quality-of-life-index": 158

          ; -- Constants --
  (=(resources-price France) 2)                 ; "resources": 2
  (=(industry-price France) 3)                  ; "industry": 3
  (=(services-price France) 12)                  ; "services": 12
  (=(economy-growth-price France) 154)                       ; "economy growth: " : 154

          ; -- Economy growth --
  (=(resources-growth France) 100)               ; "resources": 100
  (=(industry-growth France) 100)                ; "industry": 100
  (=(services-growth France) 71)                ; "services": s71

          ; -- Quality of life growth --
  (=(quality-index-resources-cost France) 45)     ; "resources": 45
  (=(quality-index-industry-cost France) 55)      ; "industry": 55
  (=(quality-index-services-cost France) 62)      ; "services": 62

  ;predicates initialised                              ; -- Biases --
  (not(is-not-resources-biased France))                  ; resources: true
  (not(is-not-industry-biased France))                   ; industry: true
  (is-not-services-biased France)              ; services: false

          ; -- Technical --
  (is-not-growing-economy France)                    ; "growing-eco": false
  (is-not-growing-quality-of-life France)            ; "growing-quality-of-life": false
)

(:goal (and
    ;todo: put the goal condition here
        (>= (quality-of-life-index Belgium) 190)
        (>= (quality-of-life-index Germany) 190)
        (>= (quality-of-life-index France) 190)
    )
)

)
