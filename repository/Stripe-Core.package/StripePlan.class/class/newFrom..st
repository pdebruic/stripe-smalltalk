as yet unclassified
newFrom: formData
  "see https://stripe.com/docs/api?lang=curl#create_plan 

you can't create more than one of the same plan, so we check to see if the one you want to make exists and if not create it"

  | existingPlan plans |
  plans := self getCurrentPlans data.
  existingPlan := plans
    detect: [ :each | each name = (formData at: 'name') ]
    ifNone: [ ^ self new createWith: formData ].
  ^ existingPlan