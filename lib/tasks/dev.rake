# frozen_string_literal: true

namespace :dev do
  DEFAULT_PASSWORD = 123_456

  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?

      mostrar('Apagando  BD...') { `rails db:drop` }
      mostrar('Criando   BD...') { `rails db:create` }
      mostrar('Migrando  BD...') { `rails db:migrate` }
      mostrar('Criando Admin padrão...') { `rails dev:add_admin` }

    else
      puts 'Você não está no modo desenvolvimento'
    end
  end

  desc 'Adiciona o administrador padrão'
  task add_admin: :environment do
    Profile.create!(
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private

  def mostrar(inicio, fim = 'Concluído!')
    spinner = TTY::Spinner.new("[:spinner] #{inicio}")
    spinner.auto_spin
    yield
    spinner.success("(#{fim})")
  end
end
