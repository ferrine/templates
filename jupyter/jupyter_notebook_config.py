import os
c = get_config()

########### NB CONVERT ########### 
c.NbConvertApp.export_format = 'pdf'
c.TemplateExporter.template_path = ['.', os.path.expanduser('~/.jupyter/templates/')]
c.Exporter.template_file = 'russian_article'
##################################
