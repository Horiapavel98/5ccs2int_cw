; problem file -- includes only a template for
; how countries are going to be represented in 
; their initial state.
(define (problem problem1)
        (:domain EU_economics)
        (:objects Belgium Germany France Italy Luxembourg Netherlands - Country) ; "name": "Belgium"


(:init
                                                        ; -- Variables --
       (=(resources-sector Belgium) 49)                  ; "resources": 4
       (=(industry-sector Belgium) 108)                   ; "industry": 108
       (=(services-sector Belgium) 400)                   ; "services": 400
       (=(funds Belgium) 512)                             ; "funds": 512
       (=(quality-of-life-index Belgium) 169)          ; "quality-of-life-index": 162

                                                            ; -- Constants --
       (=(resources-price Belgium) 20)                 ; "resources": 20
       (=(industry-price Belgium) 4)                  ; "industry": 4
       (=(services-price Belgium) 0.5)                  ; "services": 0.5
       (=(economy-growth-price Belgium) 30)                       ; "economy growth: " : 30

                                                            ; -- Economy growth --
       (=(resources-growth Belgium) 1)               ; "resources": 1
       (=(industry-growth Belgium) 1)                ; "industry": 1
       (=(services-growth Belgium) 8)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Belgium) 50)     ; "resources": 50
       (=(quality-index-industry-cost Belgium) 50)      ; "industry": 50
       (=(quality-index-services-cost Belgium) 50)      ; "services": 50

       ;predicates initialised                              ; -- Biases --
       (is-not-resources-biased Belgium)             ; resources: false
       (is-not-industry-biased Belgium)              ; industry: false
       (not(is-not-services-biased Belgium))                   ; services: true

                                                            ; -- Technical --
       (is-not-growing-economy Belgium)                    ; "growing-eco": false
       (is-not-growing-quality-of-life Belgium)            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Germany) 24)                  ; "resources": 24
       (=(industry-sector Germany) 1209)                   ; "industry": 1209
       (=(services-sector Germany) 2792)                   ; "services": 2792
       (=(funds Germany) 4029)                             ; "funds": 4029
       (=(quality-of-life-index Germany) 187)          ; "quality-of-life-index": 187

                                                            ; -- Constants --
       (=(resources-price Germany) 30)                 ; "resources": 30
       (=(industry-price Germany) 3)                  ; "industry": 3
       (=(services-price Germany) 1)                  ; "services": 1
       (=(economy-growth-price Germany) 300)                       ; "economy growth: " : 300

                                                            ; -- Economy growth --
       (=(resources-growth Germany) 1)               ; "resources": 1
       (=(industry-growth Germany) 2)                ; "industry": 2
       (=(services-growth Germany) 7)                ; "services": s7

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Germany) 300)     ; "resources": 300
       (=(quality-index-industry-cost Germany) 300)      ; "industry": 300
       (=(quality-index-services-cost Germany) 300)      ; "services": 300

       ;predicates initialised                              ; -- Biases --
       (is-not-resources-biased Germany)             ; resources: false
       (is-not-industry-biased Germany)              ; industry: false
       (not(is-not-services-biased Germany))                   ; services: true

                                                            ; -- Technical --
       (is-not-growing-economy Germany)                    ; "growing-eco": false
       (is-not-growing-quality-of-life Germany)            ; "growing-quality-of-life": false
                                                    ; -- Variables --
)

(:goal (and
    ;todo: put the goal condition here
        (>= (quality-of-life-index Belgium) 170)
        (>= (quality-of-life-index Germany) 160)
    )
)

)