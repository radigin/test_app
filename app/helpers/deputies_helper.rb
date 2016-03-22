module DeputiesHelper
  def fraction_options(selected)
    options_for_select(Fraction.all.map{ |f| [f.name, f.id] }, selected)
  end
end
