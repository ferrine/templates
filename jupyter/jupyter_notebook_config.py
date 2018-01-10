import os
c = get_config()

########### NB CONVERT ########### 
c.NbConvertApp.export_format = 'pdf'
c.TemplateExporter.template_path = ['.', os.path.expanduser('~/.jupyter/templates/')]
c.Exporter.template_file = 'russian_article'
##################################
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.password = 'md5:c21f969b5f03d33d43e04f8f136e7682'

