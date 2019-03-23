; problem file -- includes only a template for
; how countries are going to be represented in 
; their initial state.
(define (problem problem1)
        (:domain EU_economics)
        (:objects Belgium Germany France Italy Luxembourg Netherlands - Country) ; "name": "Belgium"

    
(:init
                                                        ; -- Variables --
       (=(resources-sector Belgium) 4)                  ; "resources": 4
       (=(industry-sector Belgium) 108)                   ; "industry": 108
       (=(services-sector Belgium) 400)                   ; "services": 400
       (=(funds Belgium) 512)                             ; "funds": 512
       (=(quality-of-life-index Belgium) 162)          ; "quality-of-life-index": 162

                                                            ; -- Constants --
       (=(resources-price Belgium) 20)                 ; "resources": 20
       (=(industry-price Belgium) 4)                  ; "industry": 4
       (=(services-price Belgium) 0.5)                  ; "services": 0.5

                                                            ; -- Economy growth --
       (=(resources-growth Belgium) 1)               ; "resources": 1
       (=(industry-growth Belgium) 1)                ; "industry": 1
       (=(services-growth Belgium) 8)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Belgium) 50)     ; "resources": 50
       (=(quality-index-industry-cost Belgium) 50)      ; "industry": 50
       (=(quality-index-services-cost Belgium) 50)      ; "services": 50

       ;predicates initialised                              ; -- Biases --
       (not(is-resources-biased Belgium))             ; resources: false
       (not(is-industry-biased Belgium))              ; industry: false
       (is-services-biased Belgium)                   ; services: true

                                                            ; -- Technical --
       (not(is-growing-economy Belgium))                    ; "growing-eco": false
       (not(is-growing-quality-of-life Belgium))            ; "growing-quality-of-life": false
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

                                                            ; -- Economy growth --
       (=(resources-growth Germany) 1)               ; "resources": 1
       (=(industry-growth Germany) 2)                ; "industry": 2
       (=(services-growth Germany) 7)                ; "services": s7

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Germany) 300)     ; "resources": 300
       (=(quality-index-industry-cost Germany) 300)      ; "industry": 300
       (=(quality-index-services-cost Germany) 300)      ; "services": 300

       ;predicates initialised                              ; -- Biases --
       (not(is-resources-biased Germany))             ; resources: false
       (not(is-industry-biased Germany))              ; industry: false
       (is-services-biased Germany)                   ; services: true

                                                            ; -- Technical --
       (not(is-growing-economy Germany))                    ; "growing-eco": false
       (not(is-growing-quality-of-life Germany))            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector France) 45)                  ; "resources": 45
       (=(industry-sector France) 542)                   ; "industry": 542
       (=(services-sector France) 2207)                   ; "services": 2207
       (=(funds France) 2794)                             ; "funds": 2794
       (=(quality-of-life-index France) 157)          ; "quality-of-life-index": 157

                                                            ; -- Constants --
       (=(resources-price France) 20)                 ; "resources": 20
       (=(industry-price France) 6)                  ; "industry": 6
       (=(services-price France) 1)                  ; "services": 1

                                                            ; -- Economy growth --
       (=(resources-growth France) 1)               ; "resources": 1
       (=(industry-growth France) 1)                ; "industry": 1
       (=(services-growth France) 8)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost France) 200)     ; "resources": 200
       (=(quality-index-industry-cost France) 200)      ; "industry": 200
       (=(quality-index-services-cost France) 200)      ; "services": 200

       ;predicates initialised                              ; -- Biases --
       (not(is-resources-biased France))             ; resources: false
       (not(is-industry-biased France))              ; industry: false
       (is-services-biased France)                   ; services: true

                                                            ; -- Technical --
       (not(is-growing-economy France))                    ; "growing-eco": false
       (not(is-growing-quality-of-life France))            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Italy) 42)                  ; "resources": 42
       (=(industry-sector Italy) 504)                   ; "industry": 504
       (=(services-sector Italy) 1554)                   ; "services": 1554
       (=(funds Italy) 2100)                             ; "funds": 2100
       (=(quality-of-life-index Italy) 145)          ; "quality-of-life-index": 145

                                                            ; -- Constants --
       (=(resources-price Italy) 20)                 ; "resources": 20
       (=(industry-price Italy) 6)                  ; "industry": 6
       (=(services-price Italy) 1)                  ; "services": 1

                                                            ; -- Economy growth --
       (=(resources-growth Italy) 1)               ; "resources": 1
       (=(industry-growth Italy) 1)                ; "industry": 1
       (=(services-growth Italy) 8)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Italy) 100)     ; "resources": 100
       (=(quality-index-industry-cost Italy) 100)      ; "industry": 100
       (=(quality-index-services-cost Italy) 100)      ; "services": 100

       ;predicates initialised                              ; -- Biases --
       (not(is-resources-biased Italy))             ; resources: false
       (not(is-industry-biased Italy))              ; industry: false
       (is-services-biased Italy)                   ; services: true

                                                            ; -- Technical --
       (not(is-growing-economy Italy))                    ; "growing-eco": false
       (not(is-growing-quality-of-life Italy))            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Luxembourg) 1)                  ; "resources": 1
       (=(industry-sector Luxembourg) 1)                   ; "industry": 1
       (=(services-sector Luxembourg) 5)                   ; "services": 5
       (=(funds Luxembourg) 6)                             ; "funds": 6
       (=(quality-of-life-index Luxembourg) 181)          ; "quality-of-life-index": 181

                                                            ; -- Constants --
       (=(resources-price Luxembourg) 1)                 ; "resources": 1
       (=(industry-price Luxembourg) 1)                  ; "industry": 1
       (=(services-price Luxembourg) 1)                  ; "services": 1

                                                            ; -- Economy growth --
       (=(resources-growth Luxembourg) 1)               ; "resources": 1
       (=(industry-growth Luxembourg) 1)                ; "industry": 1
       (=(services-growth Luxembourg) 8)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Luxembourg) 0.1)     ; "resources": 0.1
       (=(quality-index-industry-cost Luxembourg) 0.1)      ; "industry": 0.1
       (=(quality-index-services-cost Luxembourg) 0.1)      ; "services": 0.1

       ;predicates initialised                              ; -- Biases --
       (not(is-resources-biased Luxembourg))             ; resources: false
       (not(is-industry-biased Luxembourg))              ; industry: false
       (not(is-services-biased Luxembourg))              ; services: false

                                                            ; -- Technical --
       (not(is-growing-economy Luxembourg))                    ; "growing-eco": false
       (not(is-growing-quality-of-life Luxembourg))            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Netherlands) 2)                  ; "resources": 2
       (=(industry-sector Netherlands) 16)                   ; "industry": 16
       (=(services-sector Netherlands) 68)                   ; "services": 68
       (=(funds Netherlands) 85)                             ; "funds": 85
       (=(quality-of-life-index Netherlands) 190)          ; "quality-of-life-index": 190

                                                            ; -- Constants --
       (=(resources-price Netherlands) 40)                 ; "resources": 40
       (=(industry-price Netherlands) 5)                  ; "industry": 5
       (=(services-price Netherlands) 1)                  ; "services": 1

                                                            ; -- Economy growth --
       (=(resources-growth Netherlands) 1)               ; "resources": 1
       (=(industry-growth Netherlands) 1)                ; "industry": 1
       (=(services-growth Netherlands) 8)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Netherlands) 10)     ; "resources": 10
       (=(quality-index-industry-cost Netherlands) 10)      ; "industry": 10
       (=(quality-index-services-cost Netherlands) 10)      ; "services": 10

       ;predicates initialised                              ; -- Biases --
       (not(is-resources-biased Netherlands))             ; resources: false
       (not(is-industry-biased Netherlands))              ; industry: false
       (is-services-biased Netherlands)                   ; services: true

                                                            ; -- Technical --
       (not(is-growing-economy Netherlands))                    ; "growing-eco": false
       (not(is-growing-quality-of-life Netherlands))            ; "growing-quality-of-life": false

)

(:goal (and
    ;todo: put the goal condition here
        (>= (quality-of-life-index Belgium) 170)
        (>= (quality-of-life-index Germany) 170)
        (>= (quality-of-life-index France) 170)
        (>= (quality-of-life-index Italy) 170)
        (>= (quality-of-life-index Luxembourg) 170)
        (>= (quality-of-life-index Netherlands) 170)
    )
)

)