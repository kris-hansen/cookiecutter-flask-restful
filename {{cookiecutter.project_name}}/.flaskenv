FLASK_ENV=development
FLASK_APP={{cookiecutter.app_name}}.app:create_app
SECRET_KEY=changeme
DATABASE_URI=sqlite:////tmp/{{cookiecutter.app_name}}.db
