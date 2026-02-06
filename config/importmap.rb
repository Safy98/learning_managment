# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "stimulus-sortable" # @4.1.1
pin "@rails/request.js", to: "@rails--request.js.js" # @0.0.13
pin "sortablejs" # @1.15.6
pin "chart.js", to: "https://ga.jspm.io/npm:chart.js@4.5.1/dist/chart.js"
pin "@kurkle/color", to: "https://ga.jspm.io/npm:@kurkle/color@0.3.4/dist/color.esm.js"
