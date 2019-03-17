;domain file
(define (domain EU_economics)
(:requirements :equality :typing :fluents :durative-actions)
(:types Country)

;objects
(:objects Belgium Germany France Italy Luxemburg Netherlands - Country)

;fluents
(:functions
    (resources-sector ?c - Country)
    (industry-sector ?c - Country)
    (services-sector ?c - Country)
    (funds ?c - Country)
    (quality-of-life-index ?c - Country)
    (resources-price ?c - Country)
    (industry-price ?c - Country)
    (services-price ?c - Country)
    (resources-growth ?c - Country)
    (industry-growth ?c - Country)
    (services-growth ?c - Country)
    (quality-index-resources-cost ?c - Country)
    (quality-index-industry-cost ?c - Country)
    (quality-index-services-cost ?c - Country))

;predicates
(:predicates
    (is-resources-biased ?c - Country)
    (is-industry-biased ?c - Country)
    (is-services-biased ?c - Country)
    (is-growing-economy ?c - Country)
    (is-growing-quality-of-life ?c - Country))

; c1 buys from c2
; RESOURCES
(:action trade-resources
 :parameters(?c1 ?c2 - Country)
 :precondition(and (not(is-resources-biased ?c1)
                   (>= (funds ?c1) (resources-price ?c2) )
                   (>= (resources-sector ?c2) 1)))
 :effect(and(decrease(funds ?c1) (resources-price ?c2))
           (decrease(resources-sector ?c2) 1)
           (increase(funds ?c2) (resources-price ?c2))))

; c1 buys from c2
; INDUSTRY
(:action trade-industry
 :parameters(?c1 ?c2 - Country)
 :precondition(and (not(is-industry-biased ?c1)
                   (>= (funds ?c1) (industry-price ?c2) )
                   (>= (industry-sector ?c2) 1)))
 :effect(and(decrease(funds ?c1) (industry-price ?c2))
           (decrease(industry-sector ?c2) 1)
           (increase(funds ?c2) (industry-price ?c2))))

; c1 buys from c2
;SERVICES
(:action trade-services
 :parameters(?c1 ?c2 - Country)
 :precondition(and (not(is-services-biased ?c1)
                   (>= (funds ?c1) (services-price ?c2) )
                   (>= (services-sector ?c2) 1)))
 :effect(and(decrease(funds ?c1) (services-price ?c2))
           (decrease(services-sector ?c2) 1)
           (increase(funds ?c2) (services-price ?c2))))

; grow economy
(:durative-action grow-economy
 :parameters(?c - Country)
 :duration (= 1)
 :condition(and(at start(>= (funds ?c) 10))
               (at start(not(is-growing-economy ?c))))
 :effect(and(at start(decrease(funds ?c) 10))
             (at start(is-growing-economy ?c))
             (at end(increase(resources-sector ?c) (resources-growth ?c)))
             (at end(increase(industry-sector ?c) (industry-growth ?c)))
             (at end(increase(services-sector ?c) (services-growth ?c)))
             (at end(not(is-growing-economy ?c)))))

; grow quality of life
(:durative-action grow-quality-of-life
 :parameters(?c - Country)
 :duration(= 1)
 :condition(and(at start(<= (quality-index-resources-cost ?c) (resources-sector ?c)))
               (at start(<= (quality-index-industry-cost ?c) (industry-sector ?c)))
               (at start(<= (quality-index-services-cost ?c) (services-sector ?c)))
               (at start(not(is-growing-quality-of-life ?c))))
 :effect(and(at start(is-growing-quality-of-life ?c))
            (at start(decrease(resources-sector ?c) (quality-index-resources-cost ?c)))
            (at start(decrease(industry-sector ?c) (quality-index-industry-cost ?c)))
            (at start(decrease(services-sector ?c) (quality-index-services-cost ?c)))
            (at end(increase(quality-of-life-index ?c) 1))
            (at end(not(is-growing-quality-of-life ?c)))))

)
