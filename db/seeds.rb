# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(email: "Matt@test.com", password: "password", password_confirmation: "password")

Category.create!(name: "Cervical Enteroception", description: "Feeling into the structures of the cervical spine and surrounding areas. Experiential sensitization as the first step to holistic interventions. Building continuity in awareness of what is happening inside of us.", category_image_url: "" )
Category.create!(name: "Cervical Proprioception", description: "Sensing where bodily structures are in space and in relation to one another. Differentiating from default expressions of posture and optimal posture. Building continuity in choosing new expressions of postural integrity.", category_image_url: "" )
Category.create!(name: "Breathwork as the Basis for Nueral Reconfiguration", description: "Any long lasting results in postural integrity come from working directly with the nervous system through gentle exploration of our inhalation and exhalation. There are numerous ways to utilize the breath to build awareness, mobilize the deepest structures of the body, and release tension in new ways. ", category_image_url: "" )
Category.create!(name: "Secondary Cervical Structures", description: "Moving from from fixation on the localized point of symptoms to start to understand the network of connections that contribute to patterns of tension and integrity. First differentiate then explore continuity in actions of the shoulders, arms, and upper back.", category_image_url: "" )
Category.create!(name: "Tertiary Cervical Structures", description: "Expand an understanding of the localized network of patterning to a more global perspective of patterned tension. First differentiate then find continuity in expressions of the transverse abdominii, erector spinae groups, and lower trapezius.", category_image_url: "" )
Category.create!(name: "Jaw/Occiput Connections", description: "Compounded tension in the muscles of the jaw and temples are continuous with tension that accumulates at the base of the skull. A most powerful point in intervention and interface to create continuity in postural integrity. Explore the potential of the state of the jaw as a feedback mechanism for overrall stress and tension.", category_image_url: "" )
Category.create!(name: "Cervical Mobility", description: "The final stage in creating long term changes within patterns of the neck. Gentle mobilization including all previous steps of the process ensure we are safely and gently engages with the localized area of tension. Premature intervention locally can create more harm than good and result in dependency on quick fixes.", category_image_url: "" )


