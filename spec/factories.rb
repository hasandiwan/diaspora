# frozen_string_literal: true

#   Copyright (c) 2010-2011, Diaspora In  This file is
#   licensed under the Affero General Public License version 3 or late  See
#   the COPYRIGHT file.

#For Guidance
#http://github.com/thoughtbot/factory_girl
# http://railscasts.com/episodes/158-factories-not-fixtures

def r_str
  SecureRandom.hex(3)
end

require "diaspora_federation/test/factories"

FactoryGirl.define do
  factory :profile do
    sequence(:first_name) { |n| "Robert#{n}#{r_str}" }
    sequence(:last_name)  { |n| "Grimm#{n}#{r_str}" }
    bio "I am a cat lover and I love to run"
		key '-----BEGIN PGP PUBLIC KEY BLOCK-----\n\n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\nC5iw8/hRIBbpxk3lcQiDtPqhfHiaU2KjIK3c\n=QpKi\n-----END PGP PUBLIC KEY BLOCK-----'
    gender "robot"
    location "Earth"
    birthday Date.today
    tag_string "#one #two"
    association :person
  end

  factory :profile_with_image_url, :parent => :profile do
    image_url "http://example.com/image.jpg"
    image_url_medium "http://example.com/image_mid.jpg"
    image_url_small "http://example.com/image_small.jpg"
  end

  factory(:person, aliases: %i(author)) do
    transient do
      first_name nil
    end

    sequence(:diaspora_handle) {|n| "bob-person-#{n}#{r_str}@example.net" }
    pod { Pod.find_or_create_by(url: "http://example.net") }
    serialized_public_key OpenSSL::PKey::RSA.generate(1024).public_key.export
    after(:build) do |person, evaluator|
      unless person.profile.first_name.present?
        person.profile = FactoryGirl.build(:profile, person: person)
        person.profile.first_name = evaluator.first_name if evaluator.first_name
      end
    end
    after(:create) do |person|
      person.profile.save
    end
  end

  factory :account_deletion do
    association :person
  end

  factory :account_migration do
    association :old_person, factory: :person
    association :new_person, factory: :person
  end

  factory :like do
    association :author, :factory => :person
    association :target, :factory => :status_message
  end

  factory :user do
    getting_started false
    sequence(:username) { |n| "bob#{n}#{r_str}" }
    sequence(:email) { |n| "bob#{n}#{r_str}@pivotallabs.com" }
    password "bluepin7"
    password_confirmation { |u| u.password }
    serialized_private_key  OpenSSL::PKey::RSA.generate(1024).export
    after(:build) do |u|
      u.person = FactoryGirl.build(:person,
                                   pod:                   nil,
                                   serialized_public_key: u.encryption_key.public_key.export,
                                   diaspora_handle:       "#{u.username}#{User.diaspora_id_host}")
    end
    after(:create) do |u|
      u.person.save
      u.person.profile.save
    end
  end

  factory :user_with_aspect, parent: :user do
    transient do
      friends []
    end

    after(:create) do |user, evaluator|
      FactoryGirl.create(:aspect, user: user)
      evaluator.friends.each do |friend|
        connect_users_with_aspects(user, friend)
      end
    end
  end

  factory :aspect do
    name "generic"
    user
  end

  factory(:status_message, aliases: %i(status_message_without_participation)) do
    sequence(:text) {|n| "jimmy's #{n} whales" }
    author

    factory(:status_message_with_poll) do
      after(:build) do |sm|
        FactoryGirl.create(:poll, status_message: sm)
      end
    end

    factory(:status_message_with_location) do
      after(:build) do |sm|
        FactoryGirl.create(:location, status_message: sm)
      end
    end

    factory(:status_message_with_photo) do
      sequence(:text) {|n| "There are #{n} ninjas in this photo." }
      after(:build) do |sm|
        FactoryGirl.create(
          :photo,
          author:         sm.author,
          status_message: sm,
          pending:        false,
          public:         sm.public
        )
      end
    end

    factory(:status_message_in_aspect) do
      public false
      author { FactoryGirl.create(:user_with_aspect).person }
      after(:build) do |sm|
        sm.aspects << sm.author.owner.aspects.first
      end
    end

    factory(:status_message_with_participations) do
      transient do
        participants []
      end
      after(:build) do |sm, ev|
        ev.participants.each do |participant|
          person = participant.is_a?(User) ? participant.person : participant
          sm.participations.build(author: person)
        end
      end
    end
  end

  factory(:share_visibility) do
    user
    association :shareable, factory: :status_message
  end

  factory(:location) do
    sequence(:address) {|n| "Fernsehturm Berlin, #{n}, Berlin, Germany" }
    sequence(:lat) {|n| 52.520645 + 0.0000001 * n }
    sequence(:lng) {|n| 13.409779 + 0.0000001 * n }
  end

  factory :participation do
    association :author, factory: :person
    association :target, factory: :status_message
  end

  factory(:poll) do
    sequence(:question) {|n| "What do you think about #{n} ninjas?" }
    association :status_message
    after(:build) do |p|
      p.poll_answers << FactoryGirl.build(:poll_answer, poll: p)
      p.poll_answers << FactoryGirl.build(:poll_answer, poll: p)
    end
  end

  factory(:poll_answer) do
    sequence(:answer) {|n| "#{n} questionmarks" }
    association :poll
  end

  factory :poll_participation do
    association :author, factory: :person
    association :poll_answer
    after(:build) {|p| p.poll = p.poll_answer.poll }
  end

  factory(:photo) do
    sequence(:random_string) {|n| SecureRandom.hex(10) }
    association :author, :factory => :person
    height 42
    width 23
    after(:build) do |p|
      p.unprocessed_image.store! File.open(File.join(File.dirname(__FILE__), 'fixtures', 'button.png'))
      p.update_remote_path
    end
  end

  factory(:remote_photo, :parent => :photo) do
    remote_photo_path 'https://photo.com/images/'
    remote_photo_name 'kittehs.jpg'
    association :author,:factory => :person
    processed_image nil
    unprocessed_image nil
  end

  factory :reshare do
    association(:root, :public => true, :factory => :status_message)
    association(:author, :factory => :person)
  end

  factory :invitation do
    service "email"
    identifier "bob.smith@smith.com"
    association :sender, :factory => :user_with_aspect
    after(:build) do |i|
      i.aspect = i.sender.aspects.first
    end
  end

  factory :invitation_code do
    sequence(:token){|n| "sdfsdsf#{n}"}
    association :user
    count 0
  end

  factory :service do |service|
    nickname "sirrobertking"
    type "Services::Twitter"

    sequence(:uid)           { |token| "00000#{token}" }
    sequence(:access_token)  { |token| "12345#{token}" }
    sequence(:access_secret) { |token| "98765#{token}" }

    user
  end

  factory :pod do
    sequence(:host) {|n| "pod#{n}.example#{r_str}.com" }
    ssl true
  end

  factory(:comment) do
    sequence(:text) {|n| "#{n} cats"}
    association(:author, factory: :person)
    association(:post, factory: :status_message)
  end

  factory :signed_comment, parent: :comment do
    association(:parent, factory: :status_message)

    after(:build) do |comment|
      order = SignatureOrder.first || FactoryGirl.create(:signature_order)
      comment.signature = FactoryGirl.build(:comment_signature, comment: comment, signature_order: order)
    end
  end

  factory :reference do
    association :source, factory: :status_message
    association :target, factory: :status_message
  end

  factory(:notification, class: Notifications::AlsoCommented) do
    association :recipient, :factory => :user
    association :target, :factory => :comment

    after(:build) do |note|
      note.actors << FactoryGirl.build(:person)
    end
  end

  factory(:notification_mentioned_in_comment, class: Notification) do
    association :recipient, factory: :user
    type "Notifications::MentionedInComment"

    after(:build) do |note|
      note.actors << FactoryGirl.build(:person)
      note.target = FactoryGirl.create :mention_in_comment, person: note.recipient.person
    end
  end

  factory(:tag, :class => ActsAsTaggableOn::Tag) do
    name "partytimeexcellent"
  end

  factory(:o_embed_cache) do
    url "http://youtube.com/kittens"
    data {{'data' => 'foo'}}
  end

  factory(:open_graph_cache) do
    url "http://example.com/articles/123"
    image "http://example.com/images/123.jpg"
    title "Some article"
    ob_type "article"
    description "This is the article lead"
    video_url "http://example.com/videos/123.html"
  end

  factory(:tag_following) do
    association(:tag, :factory => :tag)
    association(:user, :factory => :user)
  end

  factory(:contact) do
    association(:person, :factory => :person)
    association(:user, :factory => :user)
  end

  factory(:mention) do
    association(:person, factory: :person)
    association(:mentions_container, factory: :status_message)
  end

  factory(:mention_in_comment, class: Mention) do
    association(:person, factory: :person)
    association(:mentions_container, factory: :comment)
  end

  factory(:conversation) do
    association(:author, factory: :person)
    sequence(:subject) {|n| "conversation ##{n}" }

    after(:build) do |c|
      c.participants << c.author
    end
  end

  factory(:conversation_with_message, parent: :conversation) do
    after(:create) do |c|
      msg = FactoryGirl.build(:message, author: c.author)
      msg.conversation_id = c.id
      msg.save
    end
  end

  factory(:message) do
    association :author, factory: :person
    association :conversation
    sequence(:text) {|n| "message text ##{n}" }
    after(:build) {|m| m.conversation.participants << m.author }
  end

  factory(:signature_order) do
    order "guid parent_guid text author"
  end

  factory(:comment_signature) do
    author_signature "some signature"
    association :signature_order, order: "guid parent_guid text author new_property"
    additional_data { {"new_property" => "some text"} }
  end

  factory(:like_signature) do
    author_signature "some signature"
    association :signature_order, order: "positive guid parent_type parent_guid author new_property"
    additional_data { {"new_property" => "some text"} }
  end

  factory :role do
    association :person
    name "moderator"
  end

  factory(:poll_participation_signature) do
    author_signature "some signature"
    association :signature_order, order: "guid parent_guid author poll_answer_guid new_property"
    additional_data { {"new_property" => "some text"} }
  end

  factory(:note, :parent => :status_message) do
    text SecureRandom.hex(1000)
  end

  factory(:status, parent: :status_message)

  factory :block do
    user
    person
  end

  factory :report do
    user
    association :item, factory: :status_message
    text "offensive content"
  end

  factory :o_auth_application, class: Api::OpenidConnect::OAuthApplication do
    client_name { "Diaspora Test Client #{r_str}" }
    redirect_uris %w(http://localhost:3000/)
  end

  factory :o_auth_application_with_ppid, parent: :o_auth_application do
    ppid true
    sector_identifier_uri "https://example.com/uri"
  end

  factory :o_auth_application_with_xss, class: Api::OpenidConnect::OAuthApplication do
    client_name "<script>alert(0);</script>"
    redirect_uris %w(http://localhost:3000/)
  end

  factory :auth_with_read, class: Api::OpenidConnect::Authorization do
    o_auth_application
    user
    scopes %w(openid sub aud profile picture nickname name read)
    after(:build) {|m|
      m.redirect_uri = m.o_auth_application.redirect_uris[0]
    }
  end

  factory :auth_with_read_and_ppid, class: Api::OpenidConnect::Authorization do
    association :o_auth_application, factory: :o_auth_application_with_ppid
    user
    scopes %w(openid sub aud profile picture nickname name read)
    after(:build) {|m|
      m.redirect_uri = m.o_auth_application.redirect_uris[0]
    }
  end

  factory :auth_with_read_and_write, class: Api::OpenidConnect::Authorization do
    o_auth_application
    user
    scopes %w(openid sub aud profile picture nickname name read write)
    after(:build) {|m|
      m.redirect_uri = m.o_auth_application.redirect_uris[0]
    }
  end

  # Factories for the DiasporaFederation-gem

  factory(:federation_person_from_webfinger, class: DiasporaFederation::Entities::Person) do
    sequence(:guid) { UUID.generate :compact }
    sequence(:diaspora_id) {|n| "bob-person-#{n}#{r_str}@example.net" }
    url "https://example.net/"
    exported_key OpenSSL::PKey::RSA.generate(1024).public_key.export
    profile {
      DiasporaFederation::Entities::Profile.new(
        FactoryGirl.attributes_for(:federation_profile_from_hcard, diaspora_id: diaspora_id))
    }
  end

  factory(:federation_profile_from_hcard, class: DiasporaFederation::Entities::Profile) do
    sequence(:diaspora_id) {|n| "bob-person-#{n}#{r_str}@example.net" }
    sequence(:first_name) {|n| "My Name#{n}#{r_str}" }
    last_name nil
    image_url "/assets/user/default.png"
    image_url_medium "/assets/user/default.png"
    image_url_small "/assets/user/default.png"
    searchable true
  end

  factory :federation_profile_from_hcard_with_image_url, parent: :federation_profile_from_hcard do
    image_url "http://example.com/image.jpg"
    image_url_medium "http://example.com/image_mid.jpg"
    image_url_small "http://example.com/image_small.jpg"
  end
end
