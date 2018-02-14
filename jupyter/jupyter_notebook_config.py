import os
c = get_config()

########### NB CONVERT ########### 
c.NbConvertApp.export_format = 'pdf'
c.TemplateExporter.template_path = ['.', os.path.expanduser('~/.jupyter/templates/')]
c.Exporter.template_file = 'russian_article'
##################################
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.password = 'sha1:5172264cc7d8:4e7de476e2395ee9dae586990406b4595e5064a8'

