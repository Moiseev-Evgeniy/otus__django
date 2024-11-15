run_base:
	python otus_dj_pr/manage.py runserver 0.0.0.0:8000 --settings=otus_dj_pr.settings.base

migrate_base:
	python otus_dj_pr/manage.py migrate --settings=otus_dj_pr.settings.base

run_polls_tests:
	python otus_dj_pr/manage.py test polls --settings=otus_dj_pr.settings.base

create_su:
	python otus_dj_pr/manage.py createsuperuser --no-input --settings=otus_dj_pr.settings.base
