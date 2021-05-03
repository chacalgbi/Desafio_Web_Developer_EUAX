module ProjectsHelper

	def days_Remaining (end_date)
		days = (end_date - Date.today()).to_i
		if days < 0
			return ('<td class="alert alert-danger" style="text-align: center;">' + "#{days}" + '</td>').html_safe
		else
			return ('<td style="text-align: center;">' + "#{days}" + '</td>').html_safe
		end
	end

	def complete(total, complete_act)
		total_activities = (total).to_f
        complete_activities = (complete_act).to_f
        percent = ((100 / total_activities) * complete_activities).ceil(1)
        return percent
	end

	def date_finish(last_activity, project_end_date)
		days_of_delay = (last_activity - project_end_date).to_i
		if last_activity > project_end_date
			return ('<td class="alert alert-danger" role="alert" style="text-align: center;" >' + t('labels.finished') + " / #{days_of_delay} " + t('labels.days') + '</td>').html_safe
		else
			return ('<td class="alert alert-success" role="alert" style="text-align: center;" >' + t('labels.not_finished') + '</td>').html_safe
        end
	end
end