; problem file -- includes only a template for
; how countries are going to be represented in
; their initial state.
;
; Problem file 10 - includes 10 EU countries
(define (problem problem10)
        (:domain EU_economics)
        (:objects Belgium Germany France Italy Luxembourg Netherlands Austria Bulgaria Croatia Cyprus - Country)


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
; -- Variables --
(=(resources-sector Italy) 703)                  ; "resources": 703
(=(industry-sector Italy) 1208)                   ; "industry": 1208
(=(services-sector Italy) 602)                   ; "services": 602
(=(funds Italy) 2087)                             ; "funds": 2087
(=(quality-of-life-index Italy) 146)          ; "quality-of-life-index": 146

        ; -- Constants --
(=(resources-price Italy) 7)                 ; "resources": 7
(=(industry-price Italy) 2)                  ; "industry": 2
(=(services-price Italy) 8)                  ; "services": 8
(=(economy-growth-price Italy) 70)                       ; "economy growth: " : 70

        ; -- Economy growth --
(=(resources-growth Italy) 42)               ; "resources": 42
(=(industry-growth Italy) 88)                ; "industry": 88
(=(services-growth Italy) 23)                ; "services": s23

        ; -- Quality of life growth --
(=(quality-index-resources-cost Italy) 40)     ; "resources": 40
(=(quality-index-industry-cost Italy) 50)      ; "industry": 50
(=(quality-index-services-cost Italy) 31)      ; "services": 31

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Italy)             ; resources: false
(is-not-industry-biased Italy)              ; industry: false
(not(is-not-services-biased Italy))                   ; services: true

        ; -- Technical --
(is-not-growing-economy Italy)                    ; "growing-eco": false
(is-not-growing-quality-of-life Italy)            ; "growing-quality-of-life": false
; -- Variables --
(=(resources-sector Luxembourg) 22)                  ; "resources": 22
(=(industry-sector Luxembourg) 28)                   ; "industry": 28
(=(services-sector Luxembourg) 46)                   ; "services": 46
(=(funds Luxembourg) 69)                             ; "funds": 69
(=(quality-of-life-index Luxembourg) 181)          ; "quality-of-life-index": 181

        ; -- Constants --
(=(resources-price Luxembourg) 2)                 ; "resources": 2
(=(industry-price Luxembourg) 2)                  ; "industry": 2
(=(services-price Luxembourg) 2)                  ; "services": 2
(=(economy-growth-price Luxembourg) 5)                       ; "economy growth: " : 5

        ; -- Economy growth --
(=(resources-growth Luxembourg) 2)               ; "resources": 2
(=(industry-growth Luxembourg) 3)                ; "industry": 3
(=(services-growth Luxembourg) 2)                ; "services": s2

        ; -- Quality of life growth --
(=(quality-index-resources-cost Luxembourg) 4)     ; "resources": 4
(=(quality-index-industry-cost Luxembourg) 4)      ; "industry": 4
(=(quality-index-services-cost Luxembourg) 4)      ; "services": 4

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Luxembourg)             ; resources: false
(is-not-industry-biased Luxembourg)              ; industry: false
(is-not-services-biased Luxembourg)              ; services: false

        ; -- Technical --
(is-not-growing-economy Luxembourg)                    ; "growing-eco": false
(is-not-growing-quality-of-life Luxembourg)            ; "growing-quality-of-life": false
; -- Variables --
(=(resources-sector Netherlands) 120)                  ; "resources": 120
(=(industry-sector Netherlands) 312)                   ; "industry": 312
(=(services-sector Netherlands) 540)                   ; "services": 540
(=(funds Netherlands) 910)                             ; "funds": 910
(=(quality-of-life-index Netherlands) 189)          ; "quality-of-life-index": 189

        ; -- Constants --
(=(resources-price Netherlands) 11)                 ; "resources": 11
(=(industry-price Netherlands) 5)                  ; "industry": 5
(=(services-price Netherlands) 4)                  ; "services": 4
(=(economy-growth-price Netherlands) 25)                       ; "economy growth: " : 25

        ; -- Economy growth --
(=(resources-growth Netherlands) 3)               ; "resources": 3
(=(industry-growth Netherlands) 10)                ; "industry": 10
(=(services-growth Netherlands) 15)                ; "services": s15

        ; -- Quality of life growth --
(=(quality-index-resources-cost Netherlands) 15)     ; "resources": 15
(=(quality-index-industry-cost Netherlands) 57)      ; "industry": 57
(=(quality-index-services-cost Netherlands) 225)      ; "services": 225

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Netherlands)             ; resources: false
(is-not-industry-biased Netherlands)              ; industry: false
(not(is-not-services-biased Netherlands))                   ; services: true

        ; -- Technical --
(is-not-growing-economy Netherlands)                    ; "growing-eco": false
(is-not-growing-quality-of-life Netherlands)            ; "growing-quality-of-life": false
; -- Variables --
(=(resources-sector Austria) 7)                  ; "resources": 7
(=(industry-sector Austria) 14)                   ; "industry": 14
(=(services-sector Austria) 443)                   ; "services": 443
(=(funds Austria) 464)                             ; "funds": 464
(=(quality-of-life-index Austria) 191)          ; "quality-of-life-index": 191

        ; -- Constants --
(=(resources-price Austria) 13)                 ; "resources": 13
(=(industry-price Austria) 5)                  ; "industry": 5
(=(services-price Austria) 1)                  ; "services": 1
(=(economy-growth-price Austria) 12)                       ; "economy growth: " : 12

        ; -- Economy growth --
(=(resources-growth Austria) 2)               ; "resources": 2
(=(industry-growth Austria) 12)                ; "industry": 12
(=(services-growth Austria) 24)                ; "services": s24

        ; -- Quality of life growth --
(=(quality-index-resources-cost Austria) 5)     ; "resources": 5
(=(quality-index-industry-cost Austria) 35)      ; "industry": 35
(=(quality-index-services-cost Austria) 155)      ; "services": 155

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Austria)             ; resources: false
(is-not-industry-biased Austria)              ; industry: false
(not(is-not-services-biased Austria))                   ; services: true

        ; -- Technical --
(is-not-growing-economy Austria)                    ; "growing-eco": false
(is-not-growing-quality-of-life Austria)            ; "growing-quality-of-life": false
; -- Variables --
(=(resources-sector Bulgaria) 8)                  ; "resources": 8
(=(industry-sector Bulgaria) 45)                   ; "industry": 45
(=(services-sector Bulgaria) 110)                   ; "services": 110
(=(funds Bulgaria) 162)                             ; "funds": 162
(=(quality-of-life-index Bulgaria) 130)          ; "quality-of-life-index": 130

        ; -- Constants --
(=(resources-price Bulgaria) 5)                 ; "resources": 5
(=(industry-price Bulgaria) 5)                  ; "industry": 5
(=(services-price Bulgaria) 4)                  ; "services": 4
(=(economy-growth-price Bulgaria) 3)                       ; "economy growth: " : 3

        ; -- Economy growth --
(=(resources-growth Bulgaria) 19)               ; "resources": 19
(=(industry-growth Bulgaria) 25)                ; "industry": 25
(=(services-growth Bulgaria) 32)                ; "services": s32

        ; -- Quality of life growth --
(=(quality-index-resources-cost Bulgaria) 18)     ; "resources": 18
(=(quality-index-industry-cost Bulgaria) 24)      ; "industry": 24
(=(quality-index-services-cost Bulgaria) 31)      ; "services": 31

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Bulgaria)             ; resources: false
(is-not-industry-biased Bulgaria)              ; industry: false
(is-not-services-biased Bulgaria)              ; services: false

        ; -- Technical --
(is-not-growing-economy Bulgaria)                    ; "growing-eco": false
(is-not-growing-quality-of-life Bulgaria)            ; "growing-quality-of-life": false
; -- Variables --
(=(resources-sector Croatia) 187)                  ; "resources": 187
(=(industry-sector Croatia) 249)                   ; "industry": 249
(=(services-sector Croatia) 357)                   ; "services": 357
(=(funds Croatia) 525)                             ; "funds": 525
(=(quality-of-life-index Croatia) 165)          ; "quality-of-life-index": 165

        ; -- Constants --
(=(resources-price Croatia) 8)                 ; "resources": 8
(=(industry-price Croatia) 5)                  ; "industry": 5
(=(services-price Croatia) 4)                  ; "services": 4
(=(economy-growth-price Croatia) 3)                       ; "economy growth: " : 3

        ; -- Economy growth --
(=(resources-growth Croatia) 6)               ; "resources": 6
(=(industry-growth Croatia) 6)                ; "industry": 6
(=(services-growth Croatia) 8)                ; "services": s8

        ; -- Quality of life growth --
(=(quality-index-resources-cost Croatia) 9)     ; "resources": 9
(=(quality-index-industry-cost Croatia) 10)      ; "industry": 10
(=(quality-index-services-cost Croatia) 14)      ; "services": 14

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Croatia)             ; resources: false
(is-not-industry-biased Croatia)              ; industry: false
(is-not-services-biased Croatia)              ; services: false

        ; -- Technical --
(is-not-growing-economy Croatia)                    ; "growing-eco": false
(is-not-growing-quality-of-life Croatia)            ; "growing-quality-of-life": false
; -- Variables --
(=(resources-sector Cyprus) 12)                  ; "resources": 12
(=(industry-sector Cyprus) 24)                   ; "industry": 24
(=(services-sector Cyprus) 45)                   ; "services": 45
(=(funds Cyprus) 65)                             ; "funds": 65
(=(quality-of-life-index Cyprus) 152)          ; "quality-of-life-index": 152

        ; -- Constants --
(=(resources-price Cyprus) 7)                 ; "resources": 7
(=(industry-price Cyprus) 6)                  ; "industry": 6
(=(services-price Cyprus) 6)                  ; "services": 6
(=(economy-growth-price Cyprus) 1)                       ; "economy growth: " : 1

        ; -- Economy growth --
(=(resources-growth Cyprus) 3)               ; "resources": 3
(=(industry-growth Cyprus) 4)                ; "industry": 4
(=(services-growth Cyprus) 5)                ; "services": s5

        ; -- Quality of life growth --
(=(quality-index-resources-cost Cyprus) 1)     ; "resources": 1
(=(quality-index-industry-cost Cyprus) 1)      ; "industry": 1
(=(quality-index-services-cost Cyprus) 1)      ; "services": 1

;predicates initialised                              ; -- Biases --
(is-not-resources-biased Cyprus)             ; resources: false
(is-not-industry-biased Cyprus)              ; industry: false
(is-not-services-biased Cyprus)              ; services: false

        ; -- Technical --
(is-not-growing-economy Cyprus)                    ; "growing-eco": false
(is-not-growing-quality-of-life Cyprus)            ; "growing-quality-of-life": false

)

(:goal (and
    ;todo: put the goal condition here
        (>= (quality-of-life-index Belgium) 190)
        (>= (quality-of-life-index Germany) 190)
        (>= (quality-of-life-index France) 190)
        (>= (quality-of-life-index Italy) 190)
        (>= (quality-of-life-index Luxembourg) 190)
        (>= (quality-of-life-index Netherlands) 190)
        (>= (quality-of-life-index Austria) 190)
        (>= (quality-of-life-index Bulgaria) 190)
        (>= (quality-of-life-index Croatia) 190)
        (>= (quality-of-life-index Cyprus) 190)
    )
)

)
