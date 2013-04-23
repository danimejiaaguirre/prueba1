class HorarioPdf < Prawn::Document

	def initialize(horario, view)
	  super()
	  @horario = horario
	  @view = view
	  logo
	  titulo
	  vista
	end

	def logo
	  logopath =  "#{Rails.root}/app/assets/images/rails.png"
	  image logopath
	  move_down(30)
	end

	def titulo
		text "Horario ##{@horario.id} ", :size => 40, :mode => :stroke, :align => :center
	end


	def vista
		move_down(30)
	    table ([
	    ["Materia_id", "#{@horario.materia_id.nombre} "],		
	    ["Maestro_id", "#{@horario.maestro_id.nombre} "],
	    ["Curso_id", "#{@horario.curso_id.nombre} "],
	    ["Aula", "#{@horario.aula} "],
	    ["Hora", "#{@horario.hora} "],
	    
	    ]), :width => 550 do
	      columns(1).align = :center
	      align = :center
	      self.header = true
	      self.column_widths = {0 => 200, 3 => 100}
	      columns(2).font_style = :bold
	    end
	end
end