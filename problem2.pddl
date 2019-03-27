; problem file -- includes only a template for
; how countries are going to be represented in 
; their initial state.
(define (problem problem1)
        (:domain EU_economics)
        (:objects Belgium Germany France Italy Luxembourg Netherlands - Country) ; "name": "Belgium"


(:init
                                                        ; -- Variables --
       (=(resources-sector Belgium) 4000)                  ; "resources": 4
       (=(industry-sector Belgium) 1080)                   ; "industry": 108
       (=(services-sector Belgium) 4000)                   ; "services": 400
       (=(funds Belgium) 5120)                             ; "funds": 512
       (=(quality-of-life-index Belgium) 162)          ; "quality-of-life-index": 162

                                                            ; -- Constants --
       (=(resources-price Belgium) 20)                 ; "resources": 20
       (=(industry-price Belgium) 4)                  ; "industry": 4
       (=(services-price Belgium) 0.5)                  ; "services": 0.5
       (=(economy-growth-price Belgium) 30)                       ; "economy growth: " : 30

                                                            ; -- Economy growth --
       (=(resources-growth Belgium) 5)               ; "resources": 1
       (=(industry-growth Belgium) 5)                ; "industry": 1
       (=(services-growth Belgium) 5)                ; "services": s8

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
       (=(resources-sector Germany) 20004)                  ; "resources": 24
       (=(industry-sector Germany) 12009)                   ; "industry": 1209
       (=(services-sector Germany) 27902)                   ; "services": 2792
       (=(funds Germany) 4029)                             ; "funds": 4029
       (=(quality-of-life-index Germany) 187)          ; "quality-of-life-index": 187

                                                            ; -- Constants --
       (=(resources-price Germany) 30)                 ; "resources": 30
       (=(industry-price Germany) 3)                  ; "industry": 3
       (=(services-price Germany) 1)                  ; "services": 1
       (=(economy-growth-price Germany) 300)                       ; "economy growth: " : 300

                                                            ; -- Economy growth --
       (=(resources-growth Germany) 5)               ; "resources": 1
       (=(industry-growth Germany) 5)                ; "industry": 2
       (=(services-growth Germany) 5)                ; "services": s7

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
       (=(resources-sector France) 40050)                  ; "resources": 45
       (=(industry-sector France) 5420)                   ; "industry": 542
       (=(services-sector France) 22070)                   ; "services": 2207
       (=(funds France) 2794)                             ; "funds": 2794
       (=(quality-of-life-index France) 157)          ; "quality-of-life-index": 157

                                                            ; -- Constants --
       (=(resources-price France) 20)                 ; "resources": 20
       (=(industry-price France) 6)                  ; "industry": 6
       (=(services-price France) 1)                  ; "services": 1
       (=(economy-growth-price France) 150)                       ; "economy growth: " : 150

                                                            ; -- Economy growth --
       (=(resources-growth France) 5)               ; "resources": 1
       (=(industry-growth France) 5)                ; "industry": 1
       (=(services-growth France) 5)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost France) 200)     ; "resources": 200
       (=(quality-index-industry-cost France) 200)      ; "industry": 200
       (=(quality-index-services-cost France) 200)      ; "services": 200

       ;predicates initialised                              ; -- Biases --
       (is-not-resources-biased France)             ; resources: false
       (is-not-industry-biased France)              ; industry: false
       (not(is-not-services-biased France))                   ; services: true

                                                            ; -- Technical --
       (is-not-growing-economy France)                    ; "growing-eco": false
       (is-not-growing-quality-of-life France)            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Italy) 4200)                  ; "resources": 42
       (=(industry-sector Italy) 5040)                   ; "industry": 504
       (=(services-sector Italy) 15540)                   ; "services": 1554
       (=(funds Italy) 2100)                             ; "funds": 2100
       (=(quality-of-life-index Italy) 145)          ; "quality-of-life-index": 145

                                                            ; -- Constants --
       (=(resources-price Italy) 20)                 ; "resources": 20
       (=(industry-price Italy) 6)                  ; "industry": 6
       (=(services-price Italy) 1)                  ; "services": 1
       (=(economy-growth-price Italy) 120)                       ; "economy growth: " : 120

                                                            ; -- Economy growth --
       (=(resources-growth Italy) 5)               ; "resources": 1
       (=(industry-growth Italy) 5)                ; "industry": 1
       (=(services-growth Italy) 5)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Italy) 100)     ; "resources": 100
       (=(quality-index-industry-cost Italy) 100)      ; "industry": 100
       (=(quality-index-services-cost Italy) 100)      ; "services": 100

       ;predicates initialised                              ; -- Biases --
       (is-not-resources-biased Italy)             ; resources: false
       (is-not-industry-biased Italy)              ; industry: false
       (not(is-not-services-biased Italy))                   ; services: true

                                                            ; -- Technical --
       (is-not-growing-economy Italy)                    ; "growing-eco": false
       (is-not-growing-quality-of-life Italy)            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Luxembourg) 1000)                  ; "resources": 1
       (=(industry-sector Luxembourg) 1000)                   ; "industry": 1
       (=(services-sector Luxembourg) 5000)                   ; "services": 5
       (=(funds Luxembourg) 6000)                             ; "funds": 6
       (=(quality-of-life-index Luxembourg) 181)          ; "quality-of-life-index": 181

                                                            ; -- Constants --
       (=(resources-price Luxembourg) 1)                 ; "resources": 1
       (=(industry-price Luxembourg) 1)                  ; "industry": 1
       (=(services-price Luxembourg) 1)                  ; "services": 1
       (=(economy-growth-price Luxembourg) 5)                       ; "economy growth: " : 5

                                                            ; -- Economy growth --
       (=(resources-growth Luxembourg) 5)               ; "resources": 1
       (=(industry-growth Luxembourg) 5)                ; "industry": 1
       (=(services-growth Luxembourg) 5)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Luxembourg) 0.1)     ; "resources": 0.1
       (=(quality-index-industry-cost Luxembourg) 0.1)      ; "industry": 0.1
       (=(quality-index-services-cost Luxembourg) 0.1)      ; "services": 0.1

       ;predicates initialised                              ; -- Biases --
       (is-not-resources-biased Luxembourg)             ; resources: false
       (is-not-industry-biased Luxembourg)              ; industry: false
       (is-not-services-biased Luxembourg)              ; services: false

                                                            ; -- Technical --
       (is-not-growing-economy Luxembourg)                    ; "growing-eco": false
       (is-not-growing-quality-of-life Luxembourg)            ; "growing-quality-of-life": false
                                                    ; -- Variables --
       (=(resources-sector Netherlands) 2000)                  ; "resources": 2
       (=(industry-sector Netherlands) 1600)                   ; "industry": 16
       (=(services-sector Netherlands) 6800)                   ; "services": 68
       (=(funds Netherlands) 8005)                             ; "funds": 85
       (=(quality-of-life-index Netherlands) 190)          ; "quality-of-life-index": 190

                                                            ; -- Constants --
       (=(resources-price Netherlands) 40)                 ; "resources": 40
       (=(industry-price Netherlands) 5)                  ; "industry": 5
       (=(services-price Netherlands) 1)                  ; "services": 1
       (=(economy-growth-price Netherlands) 8)                       ; "economy growth: " : 8

                                                            ; -- Economy growth --
       (=(resources-growth Netherlands) 5)               ; "resources": 1
       (=(industry-growth Netherlands) 5)                ; "industry": 1
       (=(services-growth Netherlands) 5)                ; "services": s8

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost Netherlands) 10)     ; "resources": 10
       (=(quality-index-industry-cost Netherlands) 10)      ; "industry": 10
       (=(quality-index-services-cost Netherlands) 10)      ; "services": 10

       ;predicates initialised                              ; -- Biases --
       (is-not-resources-biased Netherlands)             ; resources: false
       (is-not-industry-biased Netherlands)              ; industry: false
       (not(is-not-services-biased Netherlands))                   ; services: true

                                                            ; -- Technical --
       (is-not-growing-economy Netherlands)                    ; "growing-eco": false
       (is-not-growing-quality-of-life Netherlands)            ; "growing-quality-of-life": false

)

(:goal (and
    ;todo: put the goal condition here
        (>= (quality-of-life-index Belgium) 190)
        (>= (quality-of-life-index Germany) 190)
        (>= (quality-of-life-index France) 100)
        (>= (quality-of-life-index Italy) 150)
        (>= (quality-of-life-index Luxembourg) 147)
        (>= (quality-of-life-index Netherlands) 147)
    )
)

)