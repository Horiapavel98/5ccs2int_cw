; problem file -- includes only a template for
; how countries are going to be represented in 
; their initial state.
(define (problem basicEU)
        (:domain EU_economics)
        (:objects Belgium - Country) ; "name": "Belgium"

(:init ;fluents initialised                         ; -- Variables --
       (=(resources-sector Belgium) 4)              ; "resources": 4
       (=(industry-sector Belgium) 108)             ; "industry": 108
       (=(services-sector Belgium) 400)             ; "services": 400
       (=(funds Belgium) 512)                       ; "funds": 512
       (=(quality-of-life-index Belgium) 162)       ; "quality-of-life-index": 162

                                                    ; -- Constants --
       (=(resources-price Belgium) 20)              ; "resources": 20
       (=(industry-price Belgium) 4)                ; "industry": 4
       (=(services-price Belgium) 0.5)              ; "services": 0.5

                                                    ; -- Economy growth --
       (=(resources-growth Belgium) 1)              ; "resources": 1
       (=(industry-growth Belgium) 1)               ; "industry": 1
       (=(services-growth Belgium) 8)               ; "services": 8

                                                    ; -- Quality of life growth --
       (=(quality-index-resources-cost Belgium) 50) ; "resources": 50
       (=(quality-index-industry-cost Belgium) 50)  ; "industry": 50
       (=(quality-index-services-cost Belgium) 50)  ; "services": 50

       ;predicates initialised                      ; -- Biases --
       (not(is-resources-biased Belgium))           ; "resource": false
       (not(is-industry-biased Belgium))            ; "industry": false
       (is-services-biased Belgium)                 ; "services": true

                                                    ; -- Technical --
       (not(is-growing-economy Belgium))            ; "growing-eco": false
       (not(is-growing-quality-of-life Belgium))    ; "growing-quality-of-life": false
    )
)