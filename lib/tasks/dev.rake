namespace :dev do
  desc "TODO"
  task setup: :environment do
    def spinner(msg)
      spinner = TTY::Spinner.new("[:spinner] #{msg}", format: :classic)
      spinner.auto_spin
      yield
      spinner.success('(successful)')
    end
    spinner("apagando banco de dados") {%x(rails db:drop)}
    spinner("Criando banco de dados") {%x(rails db:create)}
    spinner("migrando banco de dados"){%x(rails db:migrate)}
    spinner("semeando banco de dado") {%x(rails db:seed)}

  end
end

