# build_files.sh
pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput
python manage.py makemigrations
python manage.py migrate
python manage.py makemigrations blog forum file_library
python manage.py migrate