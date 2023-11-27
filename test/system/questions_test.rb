require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
    test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    end
    
    test "saying I am going to work right now yields a great response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work right now"
    click_on "Ask"

    assert_text "Great!"
    end
    
    test "asking a question with ? yields a grumpy response from coach" do
    visit ask_url
    fill_in "question", with: "Anything?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    end
end
