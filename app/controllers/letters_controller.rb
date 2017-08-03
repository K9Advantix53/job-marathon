class LettersController < ApplicationController
  def index
    @letters=Letter.all
  end

  def show
    @letter=Letter.find(params[:id])
  end

  def new
    @letter=Letter.new
  end

  def create
    if params[:url] != ''
      @greeting = 'Dear Hiring Manager,'
      @paragraph1 =
      "I wanted to submit my resume and express my interest in the #{letter_params_position["position"]} position (found at #{letter_params_url["url"]}). As you'll see based on my resume and through my code examples, the philosophies that Launch Academy have taught me are well aligned with the way in which #{letter_params_company["company"]} builds software."

      @paragraph2 =
      "Due to my experience with learning new languages as a first generation Chinese American and my degree in Linguistics, I believe I have the capacity to quickly pick up the code base and become a valuable member of this team."

      @paragraph3 =
      "During the final two weeks of Launch Academy I built my final project: a web application which serves to connect businesses with developers. The application heavily incorporated React (including a search engine built in React), the google maps API, various local rails API endpoints, and websockets for live chat. You can find this application at github.com/K9Advantix53/synapse-connection. Please check out my portfolio at georgewli.com."

      @paragraph4 =
      "Prior to studying at Launch Academy, I was a private tutor for middle and high school students during the school year while taking night classes at the Harvard Extension School. During the summertime I taught Mandarin to middle and high school students at the Middlebury Summer Language Academies."

      @paragraph5 =
      "I would love to share more about my background with you and show you exactly why I’m a fit for the #{letter_params_position["position"]} position at #{letter_params_company["company"]}. I look forward to hearing from you!"

      cover_letter = Letter.new(letter_params)
      cover_letter.greeting = @greeting
      cover_letter.paragraph1 = @paragraph1
      cover_letter.paragraph2 = @paragraph2
      cover_letter.paragraph3 = @paragraph3
      cover_letter.paragraph4 = @paragraph4
      cover_letter.paragraph5 = @paragraph5
      cover_letter.save
      redirect_to letter_path(cover_letter)
    elsif params[:url] == ''
      @greeting = 'Dear Hiring Manager,'
      @paragraph1 =
      "I wanted to submit my resume and express my interest in the #{letter_params_position["position"]} position. As you'll see based on my resume and through my code examples, the philosophies that Launch Academy have taught me are well aligned with the way in which #{letter_params_company["company"]} builds software."

      @paragraph2 =
      "Due to my experience with learning new languages as a first generation Chinese American and my degree in Linguistics, I believe I have the capacity to quickly pick up the code base and become a valuable member of this team."

      @paragraph3 =
      "During the final two weeks of Launch Academy I built my final project: a web application which serves to connect businesses with developers. The application heavily incorporated React (including a search engine built in React), the google maps API, various local rails API endpoints, and websockets for live chat. As part of my group project, I helped build a web application which is a review site for colors. You can find these applications at github.com/K9Advantix53/synapse-connection and github.com/oliviaruizknott/color_coder respectively."

      @paragraph4 =
      "Prior to studying at Launch Academy, I was a private tutor for middle and high school students during the school year while taking night classes at the Harvard Extension School. During the summertime I taught Mandarin to middle and high school students at the Middlebury Summer Language Academies."

      @paragraph5 =
      "I would love to share more about my background with you and show you exactly why I’m a fit for the #{letter_params_position["position"]} position at #{letter_params_company["company"]}. I look forward to hearing from you!"

      cover_letter = Letter.new(letter_params)
      cover_letter.greeting = @greeting
      cover_letter.paragraph1 = @paragraph1
      cover_letter.paragraph2 = @paragraph2
      cover_letter.paragraph3 = @paragraph3
      cover_letter.paragraph4 = @paragraph4
      cover_letter.paragraph5 = @paragraph5
      cover_letter.save
      redirect_to letter_path(cover_letter)
    end
  end

  def destroy
    @letter = Letter.find(params[:id])
    @letter.destroy
    redirect_to letters_path
  end

  protected

  def letter_params
    params.require(:letter).permit(:company, :position, :url, :comment, :address)
  end

  def letter_params_company
    params.require(:letter).permit(:company)
  end

  def letter_params_position
    params.require(:letter).permit(:position)
  end

  def letter_params_url
    params.require(:letter).permit(:url)
  end

  def letter_params_address
    params.require(:letter).permit(:address)
  end

end
