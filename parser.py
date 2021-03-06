import json
import re

model = """                                                    ; -- Variables --
       (=(resources-sector country) r-var)                  ; "resources": r-var
       (=(industry-sector country) i-var)                   ; "industry": i-var
       (=(services-sector country) s-var)                   ; "services": s-var
       (=(funds country) f-var)                             ; "funds": f-var
       (=(quality-of-life-index country) qual-var)          ; "quality-of-life-index": qual-var

                                                            ; -- Constants --
       (=(resources-price country) res-price)                 ; "resources": res-price
       (=(industry-price country) ind-price)                  ; "industry": ind-price
       (=(services-price country) ser-price)                  ; "services": ser-price
       (=(economy-growth-price country) eco-growth-price)                       ; "economy growth: " : eco-growth-price

                                                            ; -- Economy growth --
       (=(resources-growth country) res-growth)               ; "resources": res-growth
       (=(industry-growth country) ind-growth)                ; "industry": ind-growth
       (=(services-growth country) ser-growth)                ; "services": sser-growth

                                                            ; -- Quality of life growth --
       (=(quality-index-resources-cost country) qual-r)     ; "resources": qual-r
       (=(quality-index-industry-cost country) qual-i)      ; "industry": qual-i
       (=(quality-index-services-cost country) qual-s)      ; "services": qual-s

       ;predicates initialised                              ; -- Biases --
       res-bias
       ind-bias
       ser-bias

                                                            ; -- Technical --
       (is-not-growing-economy country)                    ; "growing-eco": false
       (is-not-growing-quality-of-life country)            ; "growing-quality-of-life": false
"""

intro = """
; problem file -- includes only a template for
; how countries are going to be represented in
; their initial state.
;
; Problem file number - includes number EU countries
(define (problem problemnumber)
        (:domain EU_economics)
        (:objects ctr_name - Country)


(:init
"""

outro = """
)

(:goal (and
goal_here
       )
    )
)
"""

goal_model = "        (>= (quality-of-life-index ctr_name) 190)"


f = open("eu-template.json", 'r')
content = json.loads(f.read())
f.close()


intro = re.sub('number', str(len(content['countries'])), intro)

results = []
for i in content['countries']:
    res_f = '(is-not-resources-biased country)             ; resources: false'
    res_t = '(not(is-not-resources-biased country))                  ; resources: true'
    ind_f = '(is-not-industry-biased country)              ; industry: false'
    ind_t = '(not(is-not-industry-biased country))                   ; industry: true'
    ser_f = '(is-not-services-biased country)              ; services: false'
    ser_t = '(not(is-not-services-biased country))                   ; services: true'

    res_f = re.sub('country', i['name'], res_f)
    res_t = re.sub('country', i['name'], res_t)
    ind_f = re.sub('country', i['name'], ind_f)
    ind_t = re.sub('country', i['name'], ind_t)
    ser_f = re.sub('country', i['name'], ser_f)
    ser_t = re.sub('country', i['name'], ser_t)

    intro = re.sub('ctr_name', i['name'] + " ctr_name", intro)
    cur_goal = goal_model
    cur_goal = re.sub('ctr_name', i['name'], cur_goal)
    outro = re.sub('goal_here', cur_goal + "\ngoal_here", outro)
    # print(res_f)

    cur = model
    cur = re.sub("country", i['name'], cur)
    cur = re.sub('r-var', str(i['functions']['vars']['resources']), cur)
    cur = re.sub('i-var', str(i['functions']['vars']['industry']), cur)
    cur = re.sub('s-var', str(i['functions']['vars']['services']), cur)
    cur = re.sub('f-var', str(i['functions']['vars']['funds']), cur)
    cur = re.sub('qual-var', str(i['functions']['vars']['quality-of-life-index']), cur)

    cur = re.sub('res-price', str(i['functions']['constants']['price']['resources']), cur)
    cur = re.sub('ind-price', str(i['functions']['constants']['price']['industry']), cur)
    cur = re.sub('ser-price', str(i['functions']['constants']['price']['services']), cur)
    cur = re.sub('eco-growth-price', str(i['functions']['constants']['price']['economy']), cur)

    cur = re.sub('res-growth', str(i['functions']['constants']['eco-growth']['resources']), cur)
    cur = re.sub('ind-growth', str(i['functions']['constants']['eco-growth']['industry']), cur)
    cur = re.sub('ser-growth', str(i['functions']['constants']['eco-growth']['services']), cur)

    cur = re.sub('qual-r', str(i['functions']['constants']['quality-of-life-growth']['resources']), cur)
    cur = re.sub('qual-i', str(i['functions']['constants']['quality-of-life-growth']['industry']), cur)
    cur = re.sub('qual-s', str(i['functions']['constants']['quality-of-life-growth']['services']), cur)

    if i['predicates']['biases']['resource'] == False:
        cur = re.sub('res-bias', res_f, cur)
        # print("Doing this!")
    else:
        cur = re.sub('res-bias', res_t, cur)
        # print("Doing that!")

    if i['predicates']['biases']['industry'] == False:
        cur = re.sub('ind-bias', ind_f, cur)
        # print("Doing this!")
    else:
        cur = re.sub('ind-bias', ind_t, cur)
        # print("Doing that!")

    if i['predicates']['biases']['services'] == False:
        cur = re.sub('ser-bias', ser_f, cur)
        # print("Doing this!")
    else:
        cur = re.sub('ser-bias', ser_t, cur)
        # print("Doing that!")

    results.append(cur)

intro = re.sub('ctr_name', "", intro)
outro = re.sub('\ngoal_here', "", outro)
f = open('results.txt', 'w+')
f.write(intro)
for i in results:
    f.write(i)
f.write(outro)
f.close()
